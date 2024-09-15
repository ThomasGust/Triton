import numpy as np
from api.sensor.sensor import SMBUSSensor

class AK09915(SMBUSSensor):
    """
    AK09915 is an interface class for the AK09915 electronic compass.
    """

    def __init__(self, bus_number=1, address=0x0C):
        super().__init__(bus_number, address)
        self._initialize_compass()

    def _initialize_compass(self):
        self.write_register(0x31, 0x08)  # Set to continuous measurement mode

    def get_magnetic_field(self):
        mag_x = self._read_i2c_word(0x11) * 0.15
        mag_y = self._read_i2c_word(0x13) * 0.15
        mag_z = self._read_i2c_word(0x15) * 0.15
        return np.array([mag_x, mag_y, mag_z])

    def get_heading(self):
        mag = self.get_magnetic_field()
        heading = np.arctan2(mag[1], mag[0]) * (180.0 / np.pi)
        if heading < 0:
            heading += 360.0
        return heading

    def read_sensor_data(self):
        return {
            'magnetic_field': self.get_magnetic_field(),
            'heading': self.get_heading()
        }