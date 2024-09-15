import smbus2
import time
from api.sensor.sensor import SMBUSSensor

class MS5837(SMBUSSensor):
    """
    MS5837 is an interface class for the MS5837-30BA and MS5837-02BA pressure sensors.
    It communicates over I2C to gather both pressure and temperature data.
    """

    # Constants for the sensor types
    MS5837_30BA = 0
    MS5837_02BA = 1

    def __init__(self, sensor_type=MS5837_30BA, bus_number=1, address=0x76):
        """
        Initializes the MS5837 interface.

        Args:
            sensor_type (int): The type of the sensor, either MS5837_30BA or MS5837_02BA.
            bus_number (int): The I2C bus number (default is 1).
            address (int): The I2C address of the MS5837 (default is 0x76).
        """
        super().__init__(bus_number, address)
        self.sensor_type = sensor_type
        self._reset_sensor()
        self.calibration_data = self._read_calibration_data()

    def _reset_sensor(self):
        """
        Resets the MS5837 sensor to ensure it's in a known state.
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

    def _read_adc(self, command):
        """
        Reads the ADC value from the sensor after issuing a conversion command.

        Args:
            command (int): The command to start the conversion (pressure or temperature).

        Returns:
            int: The raw ADC value.
        """
        self.write_register(command, 0x00)
        time.sleep(0.01)  # Wait for conversion to complete
        adc_value = self.read_registers(0x00, 3)
        return (adc_value[0] << 16) | (adc_value[1] << 8) | adc_value[2]

    def calculate_temperature_and_pressure(self, D1, D2):
        """
        Calculates the temperature and pressure using the raw ADC values and calibration data.

        Args:
            D1 (int): The raw ADC value for pressure.
            D2 (int): The raw ADC value for temperature.

        Returns:
            tuple: The temperature in degrees Celsius and pressure in millibars.
        """
        C1 = self.calibration_data['C1']
        C2 = self.calibration_data['C2']
        C3 = self.calibration_data['C3']
        C4 = self.calibration_data['C4']
        C5 = self.calibration_data['C5']
        C6 = self.calibration_data['C6']

        dT = D2 - C5 * 2**8
        TEMP = 2000 + dT * C6 / 2**23

        OFF = C2 * 2**16 + (C4 * dT) / 2**7
        SENS = C1 * 2**15 + (C3 * dT) / 2**8

        if self.sensor_type == self.MS5837_02BA:
            T2 = dT**2 / 2**31
            OFF2 = 5 * (TEMP - 2000)**2 / 2
            SENS2 = 5 * (TEMP - 2000)**2 / 4
            TEMP -= T2
            OFF -= OFF2
            SENS -= SENS2

        P = (D1 * SENS / 2**21 - OFF) / 2**15

        temperature = TEMP / 100.0  # Convert to Celsius
        pressure = P / 100.0  # Convert to millibars
        return temperature, pressure

    def read_sensor_data(self):
        """
        Reads both temperature and pressure data from the MS5837 sensor.

        Returns:
            dict: The temperature in degrees Celsius and pressure in millibars.
        """
        D1 = self._read_adc(0x40)  # Pressure conversion
        D2 = self._read_adc(0x50)  # Temperature conversion

        temperature, pressure = self.calculate_temperature_and_pressure(D1, D2)
        return {
            'temperature_celsius': temperature,
            'pressure_millibars': pressure
        }
