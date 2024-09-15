import socket
import time
import json
import threading
import queue
from api.pubsub import Publisher, Subscriber

class WifiClient:
    def __init__(self, server_ip='192.168.1.2', server_port=12345, retry_interval=5, heartbeat_interval=10):
        self.server_ip = server_ip
        self.server_port = server_port
        self.retry_interval = retry_interval
        self.heartbeat_interval = heartbeat_interval
        self.data_buffer = []
        self.running = False
        self.message_queue = queue.Queue()

        # Dictionary to hold publishers for different message types
        self.publishers = {}

    def register_publisher(self, message_type):
        """
        Registers a new publisher for a specific message type.

        Args:
            message_type (str): The type of message to register.
        
        Returns:
            Publisher: The registered publisher.
        """
        if message_type not in self.publishers:
            self.publishers[message_type] = Publisher()
        return self.publishers[message_type]

    def register_subscriber(self, message_type, subscriber=None):
        """
        Registers a subscriber to a specific message type.

        Args:
            message_type (str): The type of message to subscribe to.
            subscriber (Subscriber, optional): The subscriber to register. If None, a new Subscriber is created.

        Returns:
            Subscriber: The registered subscriber.
        """
        if message_type not in self.publishers:
            self.register_publisher(message_type)

        if subscriber is None:
            subscriber = Subscriber()

        self.publishers[message_type].register(subscriber)
        return subscriber

    def send_heartbeat(self, s):
        heartbeat_message = json.dumps({"type": "heartbeat"}).encode('utf-8')
        s.sendall(heartbeat_message)

    def send_data(self, s):
        while self.data_buffer:
            data = self.data_buffer.pop(0)
            s.sendall(json.dumps(data).encode('utf-8'))
            print("Data sent:", data)

    def start(self):
        self.running = True
        threading.Thread(target=self.run).start()
        threading.Thread(target=self.process_queue).start()

    def run(self):
        last_heartbeat = 0
        while self.running:
            try:
                with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                    s.connect((self.server_ip, self.server_port))
                    print("Connected to the server")

                    self.send_data(s)

                    current_time = time.time()
                    if current_time - last_heartbeat > self.heartbeat_interval:
                        self.send_heartbeat(s)
                        last_heartbeat = current_time

                    threading.Thread(target=self.receive_messages, args=(s,)).start()

            except socket.error as e:
                print(f"Connection failed: {e}. Retrying in {self.retry_interval} seconds.")

            time.sleep(self.retry_interval)

    def receive_messages(self, s):
        buffer = b''
        while True:
            try:
                data = s.recv(1024)
                if not data:
                    break
                buffer += data
                while buffer:
                    try:
                        message = json.loads(buffer.decode('utf-8'))
                        self.handle_message(message)
                        buffer = b''
                    except json.JSONDecodeError:
                        break
            except ConnectionResetError:
                break

    def handle_message(self, message):
        message_type = message.get("type")
        if message_type in self.publishers:
            self.publishers[message_type].publish(message)

    def process_queue(self):
        while self.running:
            try:
                message = self.message_queue.get(timeout=1)
                self.data_buffer.append(message)
            except queue.Empty:
                continue

    def queue_message(self, message):
        self.message_queue.put(message)

    def stop(self):
        self.running = False

if __name__ == "__main__":
    client = WifiClient()

    # Register a new publisher and subscriber for "data" messages
    data_publisher = client.register_publisher("data")
    data_subscriber = client.register_subscriber("data")

    def data_listener(subscriber):
        subscriber.process_messages()

    # Start the listener thread for data messages
    data_listener_thread = threading.Thread(target=data_listener, args=(data_subscriber,))
    data_listener_thread.start()

    try:
        client.start()
        client.queue_message({"type": "data", "data": "example_data_from_float"})
    except KeyboardInterrupt:
        client.stop()
