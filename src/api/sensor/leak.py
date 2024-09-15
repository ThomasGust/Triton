import RPi.GPIO as GPIO
import time

class LeakSensor:
    """
    A class to interface with the BlueRobotics SOS Leak Probes, compatible with the SensorResourceManager.

    Attributes:
        probe_pin (int): The GPIO pin connected to the leak probe.
        is_leaking (bool): The state of the leak detector (True if leaking, False if dry).
        data (dict): A dictionary containing the sensor data.
    
    Methods:
        read_data(): Checks the probe for a leak and updates the state in the data dictionary.
        get_data(): Returns the current sensor data.
        cleanup(): Cleans up GPIO resources.
    """

    def __init__(self, probe_pin):
        """
        Initializes the LeakDetector with the specified GPIO pin.

        Args:
            probe_pin (int): The GPIO pin connected to the leak probe.
        """
        self.probe_pin = probe_pin
        self.is_leaking = False
        self.data = {'leak_detected': self.is_leaking}

        # Setup GPIO
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(self.probe_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)  # Assumes a pull-up configuration

    def read_data(self):
        """
        Checks the probe for a leak and updates the state in the data dictionary.

        Returns:
            dict: Updated sensor data indicating whether a leak is detected.
        """
        if GPIO.input(self.probe_pin) == GPIO.LOW:
            self.is_leaking = True
            self.data['leak_detected'] = True
            print("Leak detected!")
        else:
            self.is_leaking = False
            self.data['leak_detected'] = False
            print("No leak detected.")
        
        return self.data

    def get_data(self):
        """
        Returns the current sensor data.

        Returns:
            dict: The current sensor data.
        """
        return self.data

    def cleanup(self):
        """
        Cleans up GPIO resources.
        """
        GPIO.cleanup()
        print("GPIO cleanup complete")