import queue

class Subscriber:
    def __init__(self):
        self.queue = queue.Queue()

    def get_message(self, timeout=None):
        try:
            return self.queue.get(timeout=timeout)
        except queue.Empty:
            return None

    def process_messages(self):
        while True:
            message = self.get_message(timeout=1)
            if message:
                print(f"Processing message: {message}")
            else:
                continue

class Publisher:
    def __init__(self):
        self.subscribers = []

    def register(self, subscriber):
        self.subscribers.append(subscriber)

    def publish(self, message):
        for subscriber in self.subscribers:
            subscriber.queue.put(message)