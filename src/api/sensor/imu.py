import numpy as np
from api.sensor.sensor import SMBUSSensor
class ICM20602(SMBUSSensor):
    """
    ICM20602 is an interface class for the ICM-20602 6-axis IMU chip.
    """

    def __init__(self, bus_number=1, address=0x68):
        super().__init__(bus_number, address)
        self._initialize_imu()

    def _initialize_imu(self):
        self.write_register(0x6B, 0x00)  # Wake up the IMU
        self.write_register(0x1C, 0x00)  # Set accelerometer full-scale range to ±2g
        self.write_register(0x1B, 0x00)  # Set gyroscope full-scale range to ±250 degrees/second

    def get_acceleration(self):
        accel_x = self._read_i2c_word(0x3B) / 16384.0
        accel_y = self._read_i2c_word(0x3D) / 16384.0
        accel_z = self._read_i2c_word(0x3F) / 16384.0
        return np.array([accel_x, accel_y, accel_z])

    def get_angular_velocity(self):
        gyro_x = self._read_i2c_word(0x43) / 131.0
        gyro_y = self._read_i2c_word(0x45) / 131.0
        gyro_z = self._read_i2c_word(0x47) / 131.0
        return np.array([gyro_x, gyro_y, gyro_z])

    def read_sensor_data(self):
        return {
            'acceleration': self.get_acceleration(),
            'angular_velocity': self.get_angular_velocity()
        }