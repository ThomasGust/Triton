import smbus2
import time

class PCA9685:
    """
    A class to interface with the PCA9685 16-channel PWM driver chip over I2C.

    Attributes:
        bus (smbus2.SMBus): The I2C bus object.
        address (int): The I2C address of the PCA9685.
        frequency (float): The PWM frequency in Hz.

    Methods:
        set_pwm_freq(freq_hz): Sets the PWM frequency.
        set_pwm(channel, on, off): Sets the PWM signal for a specific channel.
        set_motor_speed(channel, speed): Sets the speed of a motor connected to a specific channel.
    """

    # Registers and constants
    MODE1 = 0x00
    PRESCALE = 0xFE
    LED0_ON_L = 0x06
    LED0_OFF_L = 0x08
    ALL_LED_ON_L = 0xFA
    ALL_LED_OFF_L = 0xFC
    RESTART = 0x80
    SLEEP = 0x10
    ALLCALL = 0x01
    INVRT = 0x10
    OUTDRV = 0x04

    def __init__(self, bus_number=1, address=0x40, frequency=50):
        """
        Initializes the PCA9685 driver with the specified I2C bus and address.

        Args:
            bus_number (int): The I2C bus number. Default is 1.
            address (int): The I2C address of the PCA9685. Default is 0x40.
            frequency (float): The PWM frequency in Hz. Default is 50Hz.
        """
        self.bus = smbus2.SMBus(bus_number)
        self.address = address
        self.frequency = frequency
        self.set_pwm_freq(frequency)

    def set_pwm_freq(self, freq_hz):
        """
        Sets the PWM frequency for the PCA9685.

        Args:
            freq_hz (float): The desired PWM frequency in Hz.
        """
        prescaleval = 25000000.0    # 25MHz clock
        prescaleval /= 4096.0       # 12-bit
        prescaleval /= float(freq_hz)
        prescaleval -= 1.0
        prescale = int(prescaleval + 0.5)

        oldmode = self.bus.read_byte_data(self.address, self.MODE1)
        newmode = (oldmode & 0x7F) | self.SLEEP  # sleep
        self.bus.write_byte_data(self.address, self.MODE1, newmode)  # go to sleep
        self.bus.write_byte_data(self.address, self.PRESCALE, prescale)
        self.bus.write_byte_data(self.address, self.MODE1, oldmode)
        time.sleep(0.005)
        self.bus.write_byte_data(self.address, self.MODE1, oldmode | self.RESTART | self.ALLCALL)
        time.sleep(0.005)
        print(f"PCA9685 PWM frequency set to {freq_hz}Hz")

    def set_pwm(self, channel, on, off):
        """
        Sets the PWM signal for a specific channel.

        Args:
            channel (int): The channel number (0-15).
            on (int): The time to turn on the PWM signal (0-4095).
            off (int): The time to turn off the PWM signal (0-4095).
        """
        self.bus.write_byte_data(self.address, self.LED0_ON_L + 4 * channel, on & 0xFF)
        self.bus.write_byte_data(self.address, self.LED0_ON_L + 4 * channel + 1, on >> 8)
        self.bus.write_byte_data(self.address, self.LED0_OFF_L + 4 * channel, off & 0xFF)
        self.bus.write_byte_data(self.address, self.LED0_OFF_L + 4 * channel + 1, off >> 8)
        print(f"Channel {channel} set to on: {on}, off: {off}")

    def set_motor_speed(self, channel, speed):
        """
        Sets the speed of a motor connected to a specific channel.

        Args:
            channel (int): The channel number (0-15).
            speed (float): The speed of the motor (0 to 100 percent).
        """
        pulse_length = 4096  # 12-bit resolution
        pulse = int(pulse_length * (speed / 100))
        self.set_pwm(channel, 0, pulse)

if __name__ == "__main__":
    # Example usage
    pca = PCA9685()

    try:
        # Set motor speed on channel 0 to 50%
        pca.set_motor_speed(0, 50)
        time.sleep(2)

        # Set motor speed on channel 1 to 75%
        pca.set_motor_speed(1, 75)
        time.sleep(2)

        # Stop motors
        pca.set_motor_speed(0, 0)
        pca.set_motor_speed(1, 0)

    except KeyboardInterrupt:
        pass
