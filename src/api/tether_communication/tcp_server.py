import socket
import json
import threading
import queue
from api.pubsub import Publisher, Subscriber

class TCPServer:
    def __init__(self, host='0.0.0.0', port=12345):
        self.host = host
        self.port = port
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.connections = []
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

    def register_subscriber(self, message_type):
        """
        Registers a subscriber to a specific message type.

        Args:
            message_type (str): The type of message to subscribe to.

        Returns:
            Subscriber: The registered subscriber.
        """
        if message_type not in self.publishers:
            self.register_publisher(message_type)
        
        subscriber = Subscriber()
        self.publishers[message_type].register(subscriber)
        return subscriber

    def start(self):
        self.server_socket.bind((self.host, self.port))
        self.server_socket.listen()
        self.running = True
        print("TCP Server listening on port", self.port)
        threading.Thread(target=self.accept_connections).start()
        threading.Thread(target=self.process_queue).start()

    def accept_connections(self):
        while self.running:
            try:
                conn, addr = self.server_socket.accept()
                print(f"Connected by {addr}")
                self.connections.append(conn)
                threading.Thread(target=self.handle_client, args=(conn,)).start()
            except socket.error as e:
                print(f"Error accepting connections: {e}")

    def handle_client(self, conn):
        buffer = b''
        while True:
            try:
                data = conn.recv(1024)
                if not data:
                    break
                buffer += data
                while buffer:
                    try:
                        message = json.loads(buffer.decode('utf-8'))
                        self.handle_message(conn, message)
                        buffer = b''
                    except json.JSONDecodeError:
                        break
            except (ConnectionResetError, socket.error) as e:
                print(f"Connection lost: {e}")
                self.connections.remove(conn)
                break
        conn.close()

    def handle_message(self, conn, message):
        message_type = message.get("type")
        if message_type in self.publishers:
            self.publishers[message_type].publish(message)
        conn.sendall(json.dumps({"type": "response", "message": "Acknowledged"}).encode('utf-8'))

    def send_message(self, conn, message):
        try:
            conn.sendall(json.dumps(message).encode('utf-8'))
            print("Message sent:", message)
        except socket.error as e:
            print(f"Failed to send message: {e}")

    def process_queue(self):
        while self.running:
            try:
                message = self.message_queue.get(timeout=1)
                for conn in self.connections:
                    self.send_message(conn, message)
            except queue.Empty:
                continue

    def queue_message(self, message):
        self.message_queue.put(message)

    def stop(self):
        self.running = False
        self.server_socket.close()
        for conn in self.connections:
            conn.close()

if __name__ == "__main__":
    server = TCPServer()

    # Register a new publisher and subscriber for "data" messages
    data_publisher = server.register_publisher("data")
    data_subscriber = server.register_subscriber("data")

    def data_listener(subscriber):
        subscriber.process_messages()

    # Start the listener thread for data messages
    data_listener_thread = threading.Thread(target=data_listener, args=(data_subscriber,))
    data_listener_thread.start()

    try:
        server.start()
        server.queue_message({"type": "data", "data": "example_data_from_controller"})
    except KeyboardInterrupt:
        server.stop()
