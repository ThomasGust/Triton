import time
from pca9685 import PCA9685

class T200Motor:
    """
    A class to interface with BlueRobotics BasicESC for T200 motors using PCA9685.

    Attributes:
        pca9685 (PCA9685): The PCA9685 instance for PWM control.
        channel (int): The PWM channel on the PCA9685 to which the motor is connected.
        min_pulse (int): The minimum pulse width (for reverse).
        max_pulse (int): The maximum pulse width (for forward).
        neutral_pulse (int): The neutral pulse width (for stop).
        current_pwm (int): The current PWM value being output to the motor.

    Methods:
        set_speed(speed): Sets the speed of the T200 motor.
        stop(): Stops the T200 motor.
        get_state(): Returns the current PWM state of the motor.
    """

    def __init__(self, pca9685, channel, min_pulse=1100, max_pulse=1900, neutral_pulse=1500):
        """
        Initializes the T200Motor with the specified PCA9685 instance and channel.

        Args:
            pca9685 (PCA9685): The PCA9685 instance for PWM control.
            channel (int): The PWM channel on the PCA9685 to which the motor is connected.
            min_pulse (int): The minimum pulse width (for reverse). Default is 1100 microseconds.
            max_pulse (int): The maximum pulse width (for forward). Default is 1900 microseconds.
            neutral_pulse (int): The neutral pulse width (for stop). Default is 1500 microseconds.
        """
        self.pca9685 = pca9685
        self.channel = channel
        self.min_pulse = min_pulse
        self.max_pulse = max_pulse
        self.neutral_pulse = neutral_pulse
        self.current_pwm = self.pulse_to_pwm(neutral_pulse)  # Initialize to neutral

        # Initialize the ESC with the required startup sequence
        self.initialize()

    def initialize(self):
        """
        Sends the startup signal sequence to the ESC.

        This method sends the neutral pulse to the ESC to initialize it. The ESC requires a neutral pulse to be sent during startup.
        """
        print("Initializing T200 motor...")
        self.set_pwm(self.neutral_pulse)
        time.sleep(3)  # Wait for ESC to initialize

    def pulse_to_pwm(self, pulse_us):
        """
        Converts a pulse width in microseconds to the PWM value for the PCA9685.

        Args:
            pulse_us (int): The desired pulse width in microseconds.

        Returns:
            int: The corresponding PWM value for the PCA9685.
        """
        pulse_length = 1000000  # 1,000,000 us per second
        pulse_length /= self.pca9685.frequency  # Frequency in Hz
        pulse_length /= 4096  # 12-bit resolution
        pwm_value = int(pulse_us / pulse_length)
        return pwm_value

    def set_pwm(self, pulse_us):
        """
        Sets the PWM signal for the motor and updates the current state.

        Args:
            pulse_us (int): The desired pulse width in microseconds.
        """
        pwm_value = self.pulse_to_pwm(pulse_us)
        self.pca9685.set_pwm(self.channel, 0, pwm_value)
        self.current_pwm = pwm_value
        print(f"Motor on channel {self.channel} set to PWM: {pwm_value}")

    def set_speed(self, speed):
        """
        Sets the speed of the T200 motor.

        Args:
            speed (float): The speed of the motor, ranging from -100 (full reverse) to 100 (full forward).
        """
        if speed < -100 or speed > 100:
            raise ValueError("Speed must be between -100 and 100")

        if speed == 0:
            pulse = self.neutral_pulse
        elif speed > 0:
            pulse = self.neutral_pulse + ((self.max_pulse - self.neutral_pulse) * (speed / 100))
        else:
            pulse = self.neutral_pulse + ((self.min_pulse - self.neutral_pulse) * (speed / 100))

        self.set_pwm(pulse)

    def stop(self):
        """
        Stops the T200 motor.

        This method sets the motor speed to 0, which corresponds to the neutral pulse width.
        """
        self.set_speed(0)
        print(f"Motor on channel {self.channel} stopped")

    def get_state(self):
        """
        Returns the current PWM state of the motor.

        Returns:
            int: The current PWM value.
        """
        return self.current_pwm