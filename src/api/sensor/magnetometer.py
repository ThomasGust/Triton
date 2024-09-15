import numpy as np
from api.sensor.sensor import SMBUSSensor

class MMC5983(SMBUSSensor):
    """
    MMC5983 is an interface class for the MMC5983 digital magnetometer.
    """

    def __init__(self, bus_number=1, address=0x30):
        super().__init__(bus_number, address)
        self._initialize_magnetometer()

    def _initialize_magnetometer(self):
        self.write_register(0x09, 0x20)  # Example: Set to continuous measurement mode

    def get_magnetic_field(self):
        mag_x = self._read_i2c_word(0x00) * 0.001
        mag_y = self._read_i2c_word(0x03) * 0.001
        mag_z = self._read_i2c_word(0x06) * 0.001
        return np.array([mag_x, mag_y, mag_z])

    def read_sensor_data(self):
        return {
            'magnetic_field': self.get_magnetic_field()
        }