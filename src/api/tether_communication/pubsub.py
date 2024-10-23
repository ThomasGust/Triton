import asyncio
import threading
import json
from collections import defaultdict
from common.message_handler import MessageHandler
# Broker Class
class Broker:
    def __init__(self):
        self.topics = defaultdict(list)  # Keep track of subscribers for each topic
        self.message_queues = defaultdict(list)  # Store undelivered messages for each topic
        self.acknowledgments = {}  # Track message acknowledgments

    def add_subscriber(self, topic, writer):
        if writer not in self.topics[topic]:
            self.topics[topic].append(writer)

    def remove_subscriber(self, writer):
        for topic, subscribers in self.topics.items():
            if writer in subscribers:
                subscribers.remove(writer)

    async def deliver_message(self, topic, message):
        """Deliver messages to all subscribers and wait for acknowledgment."""
        if topic in self.topics:
            # Assign a unique message ID for tracking acknowledgments
            message_id = f"{topic}-{len(self.acknowledgments)}"
            self.acknowledgments[message_id] = []

            for subscriber_writer in self.topics[topic]:
                # Send the message with the message_id to track acknowledgment
                try:
                    subscriber_writer.write(json.dumps({"message_id": message_id, "message": message}).encode())
                    await subscriber_writer.drain()
                    self.acknowledgments[message_id].append(subscriber_writer)
                except Exception as e:
                    print(f"Failed to send message: {e}")

            # Store the message in case it needs to be retried
            self.message_queues[topic].append((message_id, message))

    async def handle_acknowledgment(self, message_id):
        """Handle acknowledgment from a subscriber."""
        if message_id in self.acknowledgments:
            del self.acknowledgments[message_id]  # Message was acknowledged by all subscribers
            # Clean up the message from the queue
            for topic, messages in self.message_queues.items():
                self.message_queues[topic] = [msg for msg in messages if msg[0] != message_id]

    async def retry_undelivered(self):
        """Periodically retry sending undelivered messages."""
        while True:
            for topic, messages in list(self.message_queues.items()):
                for message_id, message in messages:
                    if message_id in self.acknowledgments:
                        print(f"Retrying message: {message_id}")
                        await self.deliver_message(topic, message)
            await asyncio.sleep(5)  # Retry interval

    async def handle_client(self, reader, writer):
        while True:
            try:
                data = await reader.read(100)
                if not data:
                    break

                # Decode message
                message = json.loads(data.decode())
                action = message.get("action")
                topic = message.get("topic")
                payload = message.get("payload")

                if action == "subscribe":
                    # Add subscriber to the topic
                    self.add_subscriber(topic, writer)
                    print(f"New subscription to topic: {topic}")
                elif action == "publish":
                    # Deliver the message to all subscribers
                    await self.deliver_message(topic, payload)
                    print(f"Published message to topic: {topic}")
                elif action == "acknowledge":
                    # Handle acknowledgment of a message
                    message_id = message.get("message_id")
                    await self.handle_acknowledgment(message_id)

            except (ConnectionResetError, asyncio.CancelledError, json.JSONDecodeError):
                break

        # Clean up when client disconnects
        self.remove_subscriber(writer)
        writer.close()
        await writer.wait_closed()

    async def start(self, host="localhost", port=8888):
        # Start the retry loop in the background
        asyncio.create_task(self.retry_undelivered())

        # Start the server to accept client connections
        server = await asyncio.start_server(self.handle_client, host, port)
        async with server:
            print(f"Broker started on {host}:{port}")
            await server.serve_forever()

    
class PubSubClient:
    def __init__(self, host="localhost", port=8888):
        self.host = host
        self.port = port
        self.loop = None
        self.thread = None
        self.handlers = {}  # Mapping from topic to handler

    def start(self):
        """Start the event loop in a background thread."""
        if self.loop is None:
            self.loop = asyncio.new_event_loop()
            self.thread = threading.Thread(target=self._run_event_loop, daemon=True)
            self.thread.start()
            print("Event loop started in background thread")

    def _run_event_loop(self):
        """Run the event loop."""
        asyncio.set_event_loop(self.loop)
        self.loop.run_forever()

    def stop(self):
        """Stop the event loop."""
        if self.loop:
            self.loop.call_soon_threadsafe(self.loop.stop)
            self.thread.join()
            self.loop = None
            self.thread = None
            print("Event loop stopped")

    def publish(self, topic, message):
        """Synchronous method to publish a message."""
        self._run_async(self._publish_async(topic, message))

    def subscribe(self, topic, handler):
        """Synchronous method to subscribe to a topic with a handler."""
        if not isinstance(handler, MessageHandler):
            raise TypeError("handler must be an instance of MessageHandler")
        self.handlers[topic] = handler
        self._run_async(self._subscribe_async(topic))

    def _run_async(self, coro):
        """Helper to run an async coroutine in the event loop."""
        if self.loop is None:
            raise RuntimeError("Event loop is not running. Call start() first.")
        asyncio.run_coroutine_threadsafe(coro, self.loop)

    async def _publish_async(self, topic, message):
        """Async method to publish a message."""
        reader, writer = await asyncio.open_connection(self.host, self.port)

        payload = json.dumps({
            "action": "publish",
            "topic": topic,
            "payload": message
        })
        writer.write(payload.encode())
        await writer.drain()
        print(f"Published: {message} to topic: {topic}")

        writer.close()
        await writer.wait_closed()

    async def _subscribe_async(self, topic):
        """Async method to subscribe to a topic."""
        reader, writer = await asyncio.open_connection(self.host, self.port)

        # Send subscription request
        payload = json.dumps({
            "action": "subscribe",
            "topic": topic
        })
        writer.write(payload.encode())
        await writer.drain()
        print(f"Subscribed to topic: {topic}")

        # Keep listening for messages and delegate to the handler
        while True:
            data = await reader.read(100)
            if not data:
                break
            message = json.loads(data.decode())
            if topic in self.handlers:
                self.handlers[topic].handle(message)

        writer.close()
        await writer.wait_closed()

class ROV:
    def __init__(self, broker_ip="localhost", broker_port=8888):
        self.broker_ip = broker_ip
        self.broker_port = broker_port
        self.client = PubSubClient(host=self.broker_ip, port=self.broker_port)
        self.client.start()