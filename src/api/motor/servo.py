from pca9685 import PCA9685

class Servo:
    """
    A class to interface with a servo motor using the PCA9685 PWM controller.

    Attributes:
        pca9685 (PCA9685): The PCA9685 instance for PWM control.
        channel (int): The PWM channel on the PCA9685 to which the servo is connected.
        min_pulse (int): The minimum pulse width for the servo position (in microseconds).
        max_pulse (int): The maximum pulse width for the servo position (in microseconds).
        min_angle (float): The minimum angle for the servo.
        max_angle (float): The maximum angle for the servo.
        current_pwm (int): The current PWM value being output to the servo.

    Methods:
        set_angle(angle): Sets the servo to a specific angle within the configured range.
        get_state(): Returns the current PWM state of the servo.
        stop(): Stops the servo (by setting it to the center position).
    """

    def __init__(self, pca9685, channel, min_pulse=500, max_pulse=2500, min_angle=0, max_angle=180):
        """
        Initializes the Servo with the specified PCA9685 instance, channel, and angular range.

        Args:
            pca9685 (PCA9685): The PCA9685 instance for PWM control.
            channel (int): The PWM channel on the PCA9685 to which the servo is connected.
            min_pulse (int): The minimum pulse width for the servo position. Default is 500 microseconds.
            max_pulse (int): The maximum pulse width for the servo position. Default is 2500 microseconds.
            min_angle (float): The minimum angle for the servo. Default is 0 degrees.
            max_angle (float): The maximum angle for the servo. Default is 180 degrees.
        """
        self.pca9685 = pca9685
        self.channel = channel
        self.min_pulse = min_pulse
        self.max_pulse = max_pulse
        self.min_angle = min_angle
        self.max_angle = max_angle
        self.current_pwm = self.pulse_to_pwm((min_pulse + max_pulse) // 2)  # Initialize to center

    def set_angle(self, angle):
        """
        Sets the servo to a specific angle within the configured range.

        Args:
            angle (float): The desired servo angle in degrees.

        Raises:
            ValueError: If the angle is outside the configured angular range.
        """
        if angle < self.min_angle or angle > self.max_angle:
            raise ValueError(f"Angle must be between {self.min_angle} and {self.max_angle} degrees")

        pulse_range = self.max_pulse - self.min_pulse
        angle_range = self.max_angle - self.min_angle
        pulse_width = self.min_pulse + (pulse_range * ((angle - self.min_angle) / angle_range))
        self.set_pwm(pulse_width)

    def set_pwm(self, pulse_us):
        """
        Sets the PWM signal for the servo and updates the current state.

        Args:
            pulse_us (int): The desired pulse width in microseconds.
        """
        pwm_value = self.pulse_to_pwm(pulse_us)
        self.pca9685.set_pwm(self.channel, 0, pwm_value)
        self.current_pwm = pwm_value
        print(f"Servo on channel {self.channel} set to PWM: {pwm_value}")

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

    def get_state(self):
        """
        Returns the current PWM state of the servo.

        Returns:
            int: The current PWM value.
        """
        return self.current_pwm

    def stop(self):
        """
        Stops the servo by setting it to the center position within the configured range.
        """
        self.set_angle((self.min_angle + self.max_angle) / 2)
        print(f"Servo on channel {self.channel} stopped")
