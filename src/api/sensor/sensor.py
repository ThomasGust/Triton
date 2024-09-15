import smbus2
import time

class SMBUSSensor:
    """
    SMBUSSensor is a parent class for I2C sensors, providing common functionality
    for communication and initialization.
    """

    def __init__(self, bus_number=1, address=0x00):
        """
        Initializes the SMBUSSensor with the I2C bus number and device address.

        Args:
            bus_number (int): The I2C bus number (default is 1).
            address (int): The I2C address of the sensor.
        """
        self.bus = smbus2.SMBus(bus_number)
        self.address = address

    def write_register(self, register, value):
        """
        Writes a value to a specified register.

        Args:
            register (int): The register address.
            value (int): The value to write.
        """
        self.bus.write_byte_data(self.address, register, value)

    def read_register(self, register):
        """
        Reads a single byte from a specified register.

        Args:
            register (int): The register address.

        Returns:
            int: The value read from the register.
        """
        return self.bus.read_byte_data(self.address, register)

    def read_registers(self, register, length):
        """
        Reads multiple bytes from a specified register.

        Args:
            register (int): The register address.
            length (int): The number of bytes to read.

        Returns:
            list: A list of values read from the register.
        """
        return self.bus.read_i2c_block_data(self.address, register, length)

    def _read_i2c_word(self, register):
        """
        Reads two bytes of data from the specified register and combines them into a word.

        Args:
            register (int): The register to read from.

        Returns:
            int: The combined data from the two bytes.
        """
        high = self.read_register(register)
        low = self.read_register(register + 1)
        value = (high << 8) | low

        # Convert to signed value (two's complement)
        if value > 32767:
            value -= 65536
        return value
    
    def read_sensor_data(self):
        """
        Reads data from the sensor. To be overridden by subclasses.

        Returns:
            dict: The sensor data schema defined in the subclass.
        """
        raise NotImplementedError("Subclasses should implement this method.")

class SensorResourceManager:
    """
    SensorResourceManager is responsible for managing multiple sensor instances,
    providing a centralized interface to initialize and read data from all sensors.
    """

    def __init__(self):
        self.sensors = {}

    def add_sensor(self, name, sensor):
        """
        Adds a sensor to the manager.

        Args:
            name (str): The name of the sensor.
            sensor (SMBUSSensor): The sensor instance to add.
        """
        self.sensors[name] = sensor

    def read_all_sensors(self):
        """
        Reads data from all managed sensors.

        Returns:
            dict: A dictionary with sensor names as keys and their data as values.
        """
        data = {}
        for name, sensor in self.sensors.items():
            data[name] = sensor.read_sensor_data()
        return data