import smbus2
import time
from api.sensor.sensor import SMBUSSensor

class TSYS01(SMBUSSensor):
    """
    TSYS01 is an interface class for the TSYS01 high-precision digital temperature sensor.
    It communicates over I2C to gather temperature data.
    """

    def __init__(self, bus_number=1, address=0x77):
        """
        Initializes the TSYS01 interface.

        Args:
            bus_number (int): The I2C bus number (default is 1).
            address (int): The I2C address of the TSYS01 (default is 0x77).
        """
        super().__init__(bus_number, address)
        self._reset_sensor()
        self.calibration_data = self._read_calibration_data()

    def _reset_sensor(self):
        """
        Resets the TSYS01 sensor to ensure it's in a known state.
        """
        self.write_register(0x1E, 0x00)
        time.sleep(0.01)  # Wait for the reset to complete

    def _read_calibration_data(self):
        """
        Reads the calibration coefficients from the sensor.

        Returns:
            dict: A dictionary of calibration coefficients.
        """
        coefficients = {}
        coefficients['C1'] = self._read_i2c_word(0xA2)
        coefficients['C2'] = self._read_i2c_word(0xA4)
        coefficients['C3'] = self._read_i2c_word(0xA6)
        coefficients['C4'] = self._read_i2c_word(0xA8)
        coefficients['C5'] = self._read_i2c_word(0xAA)
        coefficients['C6'] = self._read_i2c_word(0xAC)
        return coefficients

    def _read_adc_temperature(self):
        """
        Reads the raw ADC temperature value from the sensor.

        Returns:
            int: The raw ADC temperature value.
        """
        self.write_register(0x48, 0x00)  # Start temperature conversion
        time.sleep(0.01)  # Wait for conversion to complete
        adc_value = self.read_registers(0x00, 3)
        return (adc_value[0] << 16) | (adc_value[1] << 8) | adc_value[2]

    def calculate_temperature(self, adc_value):
        """
        Calculates the temperature in degrees Celsius using the ADC value and calibration data.

        Args:
            adc_value (int): The raw ADC temperature value.

        Returns:
            float: The temperature in degrees Celsius.
        """
        C1 = self.calibration_data['C1']
        C2 = self.calibration_data['C2']
        C3 = self.calibration_data['C3']
        C4 = self.calibration_data['C4']
        C5 = self.calibration_data['C5']
        C6 = self.calibration_data['C6']

        dT = adc_value - (C5 * 2**8)
        TEMP = 2000 + dT * C6 / 2**23

        temperature = TEMP / 100.0  # Convert to Celsius
        return temperature

    def read_sensor_data(self):
        """
        Reads temperature data from the TSYS01 sensor.

        Returns:
            dict: The temperature data in degrees Celsius.
        """
        adc_value = self._read_adc_temperature()
        temperature = self.calculate_temperature(adc_value)
        return {'temperature_celsius': temperature}
