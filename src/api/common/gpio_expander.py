import smbus2

class MCP23017:
    """
    A class to interface with the MCP23017 I2C GPIO expander.

    Attributes:
        bus (smbus2.SMBus): The I2C bus object.
        address (int): The I2C address of the MCP23017.
        iodir_a (int): IODIRA register address.
        iodir_b (int): IODIRB register address.
        gpio_a (int): GPIOA register address.
        gpio_b (int): GPIOB register address.
        olat_a (int): OLATA register address.
        olat_b (int): OLATB register address.

    Methods:
        setup(): Configures all pins as outputs.
        set_pin(pin, state): Sets the state of a specific pin.
        get_pin(pin): Reads the state of a specific pin.
        cleanup(): Resets the GPIO expander.
    """

    IODIRA = 0x00
    IODIRB = 0x01
    GPIOA = 0x12
    GPIOB = 0x13
    OLATA = 0x14
    OLATB = 0x15

    def __init__(self, bus_number=1, address=0x20):
        """
        Initializes the MCP23017 with the specified I2C bus and address.

        Args:
            bus_number (int): The I2C bus number. Default is 1.
            address (int): The I2C address of the MCP23017. Default is 0x20.
        """
        self.bus = smbus2.SMBus(bus_number)
        self.address = address
        self.setup()

    def setup(self):
        """
        Configures all pins on the MCP23017 as outputs.
        """
        self.bus.write_byte_data(self.address, self.IODIRA, 0x00)  # Set all A pins as outputs
        self.bus.write_byte_data(self.address, self.IODIRB, 0x00)  # Set all B pins as outputs

    def set_pin(self, pin, state):
        """
        Sets the state of a specific pin.

        Args:
            pin (int): The pin number (0-15).
            state (bool): The desired state (True for high, False for low).
        """
        if pin < 8:
            register = self.OLATA
            pin_bit = 1 << pin
        else:
            register = self.OLATB
            pin_bit = 1 << (pin - 8)

        current_state = self.bus.read_byte_data(self.address, register)
        if state:
            new_state = current_state | pin_bit
        else:
            new_state = current_state & ~pin_bit

        self.bus.write_byte_data(self.address, register, new_state)

    def get_pin(self, pin):
        """
        Reads the state of a specific pin.

        Args:
            pin (int): The pin number (0-15).

        Returns:
            bool: The state of the pin (True for high, False for low).
        """
        if pin < 8:
            register = self.GPIOA
            pin_bit = 1 << pin
        else:
            register = self.GPIOB
            pin_bit = 1 << (pin - 8)

        current_state = self.bus.read_byte_data(self.address, register)
        return bool(current_state & pin_bit)

    def cleanup(self):
        """
        Resets all pins to low (inactive) and cleans up the MCP23017.
        """
        self.bus.write_byte_data(self.address, self.OLATA, 0x00)
        self.bus.write_byte_data(self.address, self.OLATB, 0x00)
        print("MCP23017 cleanup complete")