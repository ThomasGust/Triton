class MessageHandler:
    """Base class for all message handlers."""
    def handle(self, message):
        """Handle an incoming message."""
        raise NotImplementedError("handle() must be implemented by subclasses")