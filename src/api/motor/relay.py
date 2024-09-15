class RelayController:
    """
    A class to control relays using the MCP23017 I2C GPIO expander and ULN2803A Darlington array.

    Attributes:
        mcp (MCP23017): An instance of the MCP23017 class.
        active_state (bool): The state to activate the relay (True for high, False for low).
    
    Methods:
        activate_relay(channel): Activates the specified relay channel.
        deactivate_relay(channel): Deactivates the specified relay channel.
        deactivate_all(): Deactivates all relays.
        cleanup(): Cleans up the MCP23017.
    """

    def __init__(self, mcp, active_state=True):
        """
        Initializes the RelayController with the MCP23017 instance and active state.

        Args:
            mcp (MCP23017): An instance of the MCP23017 class.
            active_state (bool): The state to activate the relay. Default is True (high).
        """
        self.mcp = mcp
        self.active_state = active_state

    def activate_relay(self, channel):
        """
        Activates the specified relay channel.

        Args:
            channel (int): The relay channel (0-15).
        """
        self.mcp.set_pin(channel, self.active_state)
        print(f"Relay on channel {channel} activated")

    def deactivate_relay(self, channel):
        """
        Deactivates the specified relay channel.

        Args:
            channel (int): The relay channel (0-15).
        """
        self.mcp.set_pin(channel, not self.active_state)
        print(f"Relay on channel {channel} deactivated")

    def deactivate_all(self):
        """
        Deactivates all relays.
        """
        for pin in range(16):
            self.mcp.set_pin(pin, not self.active_state)
        print("All relays deactivated")

    def cleanup(self):
        """
        Cleans up the MCP23017 by resetting all GPIOs to low.
        """
        self.mcp.cleanup()