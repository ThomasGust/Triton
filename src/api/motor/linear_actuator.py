class LinearActuator:
    """
    A class to control a linear actuator using relays controlled by the MCP23017 and ULN2803A.

    Attributes:
        relay_controller (RelayController): An instance of the RelayController class.
        extend_channel (int): The relay channel used to extend the actuator.
        retract_channel (int): The relay channel used to retract the actuator.
        current_state (str): The current state of the linear actuator ('stopped', 'extending', 'retracting').
    
    Methods:
        extend(): Extends the linear actuator.
        retract(): Retracts the linear actuator.
        stop(): Stops the linear actuator.
        get_state(): Returns the current state of the actuator.
    """

    def __init__(self, relay_controller, extend_channel, retract_channel):
        """
        Initializes the LinearActuator with the specified relay controller and relay channels.

        Args:
            relay_controller (RelayController): An instance of the RelayController class.
            extend_channel (int): The relay channel used to extend the actuator.
            retract_channel (int): The relay channel used to retract the actuator.
        """
        self.relay_controller = relay_controller
        self.extend_channel = extend_channel
        self.retract_channel = retract_channel
        self.current_state = 'stopped'  # Initialize to stopped

    def extend(self):
        """
        Extends the linear actuator by activating the extend relay and deactivating the retract relay.
        """
        self.relay_controller.deactivate_relay(self.retract_channel)
        self.relay_controller.activate_relay(self.extend_channel)
        self.current_state = 'extending'
        print(f"Linear actuator extending (extend channel: {self.extend_channel}, retract channel: {self.retract_channel})")

    def retract(self):
        """
        Retracts the linear actuator by activating the retract relay and deactivating the extend relay.
        """
        self.relay_controller.deactivate_relay(self.extend_channel)
        self.relay_controller.activate_relay(self.retract_channel)
        self.current_state = 'retracting'
        print(f"Linear actuator retracting (extend channel: {self.extend_channel}, retract channel: {self.retract_channel})")

    def stop(self):
        """
        Stops the linear actuator by deactivating both the extend and retract relays.
        """
        self.relay_controller.deactivate_relay(self.extend_channel)
        self.relay_controller.deactivate_relay(self.retract_channel)
        self.current_state = 'stopped'
        print(f"Linear actuator stopped (extend channel: {self.extend_channel}, retract channel: {self.retract_channel})")

    def get_state(self):
        """
        Returns the current state of the linear actuator.

        Returns:
            str: The current state ('stopped', 'extending', 'retracting').
        """
        return self.current_state