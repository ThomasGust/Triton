class MotorController:
    """
    A class to control a set of T200 motors using a vectored thrust configuration.

    Attributes:
        motors (list of T200Motor): The list of T200 motors controlling the robot.
        armed (bool): Indicates whether the motor controller is armed.
    """

    def __init__(self, motors):
        """
        Initializes the MotorController with the specified motors.

        Args:
            motors (list of T200Motor): The list of T200 motors controlling the robot.
        """
        if len(motors) != 6:
            raise ValueError("MotorController requires exactly 6 motors.")

        self.motors = motors
        self.armed = False  # Initialize as disarmed

    def arm(self):
        """
        Arms the motor controller, allowing motor commands to be executed.
        """
        self.armed = True
        print("Motor controller armed.")

    def disarm(self):
        """
        Disarms the motor controller, preventing motor commands from being executed.
        """
        self.stop()  # Ensure all motors are stopped
        self.armed = False
        print("Motor controller disarmed.")

    def calculate_motor_speeds(self, surge, sway, heave, roll, yaw):
        """
        Calculates the motor speeds based on the desired surge, sway, heave, roll, and yaw.

        Args:
            surge (float): Desired forward/backward motion (-100 to 100).
            sway (float): Desired left/right motion (-100 to 100).
            heave (float): Desired up/down motion (-100 to 100).
            roll (float): Desired roll (rotation around X-axis) (-100 to 100).
            yaw (float): Desired yaw (rotation around Z-axis) (-100 to 100).

        Returns:
            list of float: The speed values for each motor.
        """
        # Assign motors to specific positions
        front_left = surge + sway + roll + yaw
        front_right = surge - sway - roll - yaw
        rear_left = surge - sway + roll + yaw
        rear_right = surge + sway - roll - yaw
        side_left = heave + yaw
        side_right = heave - yaw

        # Normalize motor speeds to ensure they stay within the allowed range
        speeds = [front_left, front_right, rear_left, rear_right, side_left, side_right]
        max_speed = max(abs(speed) for speed in speeds)
        if max_speed > 100:
            speeds = [speed * 100 / max_speed for speed in speeds]

        return speeds

    def move(self, surge, sway, heave, roll, yaw):
        """
        Sets the motor speeds to achieve the desired movement, if the controller is armed.

        Args:
            surge (float): Desired forward/backward motion (-100 to 100).
            sway (float): Desired left/right motion (-100 to 100).
            heave (float): Desired up/down motion (-100 to 100).
            roll (float): Desired roll (rotation around X-axis) (-100 to 100).
            yaw (float): Desired yaw (rotation around Z-axis) (-100 to 100).
        """
        if not self.armed:
            print("Motor controller is disarmed. No movement executed.")
            return

        speeds = self.calculate_motor_speeds(surge, sway, heave, roll, yaw)

        # Set motor speeds
        for motor, speed in zip(self.motors, speeds):
            motor.set_speed(speed)

        print(f"Motor speeds set: {speeds}")

    def stop(self):
        """
        Stops all the motors by setting their speed to zero.
        """
        for motor in self.motors:
            motor.stop()

        print("All motors stopped.")

    def get_motor_states(self):
        """
        Returns the current PWM states of all motors.

        Returns:
            list of int: The current PWM values for all motors.
        """
        return [motor.get_state() for motor in self.motors]

class PIDController:
    def __init__(self, kp, ki, kd, setpoint=0):
        self.kp = kp
        self.ki = ki
        self.kd = kd
        self.setpoint = setpoint
        self.integral = 0
        self.previous_error = 0

    def update(self, current_value, dt):
        error = self.setpoint - current_value
        self.integral += error * dt
        derivative = (error - self.previous_error) / dt
        output = self.kp * error + self.ki * self.integral + self.kd * derivative
        self.previous_error = error
        return output

    def set_setpoint(self, setpoint):
        self.setpoint = setpoint
        self.integral = 0
        self.previous_error = 0

class StabilityAssistKernel:
    def __init__(self, motor_controller, imu_data_stream, compass_data_stream):
        self.motor_controller = motor_controller
        self.imu_data_stream = imu_data_stream
        self.compass_data_stream = compass_data_stream

        # PID controllers for each axis
        self.pid_roll = PIDController(kp=1.0, ki=0.0, kd=0.1)
        self.pid_yaw = PIDController(kp=1.0, ki=0.0, kd=0.1)
        self.pid_surge = PIDController(kp=1.0, ki=0.0, kd=0.1)
        self.pid_sway = PIDController(kp=1.0, ki=0.0, kd=0.1)
        self.pid_heave = PIDController(kp=1.0, ki=0.0, kd=0.1)

        # Flags to indicate which axes are locked
        self.lock_roll = False
        self.lock_yaw = False
        self.lock_surge = False
        self.lock_sway = False
        self.lock_heave = False

    def update(self, dt):
        # Get current IMU and compass data
        roll, pitch, yaw = self.imu_data_stream.get_orientation()
        ax, ay, az = self.imu_data_stream.get_acceleration()
        heading = self.compass_data_stream.get_heading()

        # Calculate PID outputs for locked axes
        if self.lock_roll:
            roll_output = self.pid_roll.update(roll, dt)
        else:
            roll_output = 0

        if self.lock_yaw:
            yaw_output = self.pid_yaw.update(yaw, dt)
        else:
            yaw_output = 0

        if self.lock_surge:
            surge_output = self.pid_surge.update(ax, dt)
        else:
            surge_output = 0

        if self.lock_sway:
            sway_output = self.pid_sway.update(ay, dt)
        else:
            sway_output = 0

        if self.lock_heave:
            heave_output = self.pid_heave.update(az, dt)
        else:
            heave_output = 0

        # Adjust motor outputs based on PID outputs
        self.motor_controller.move(surge=surge_output, sway=sway_output, heave=heave_output, roll=roll_output, yaw=yaw_output)

    def lock_axis(self, axis, setpoint):
        if axis == 'roll':
            self.lock_roll = True
            self.pid_roll.set_setpoint(setpoint)
        elif axis == 'yaw':
            self.lock_yaw = True
            self.pid_yaw.set_setpoint(setpoint)
        elif axis == 'surge':
            self.lock_surge = True
            self.pid_surge.set_setpoint(setpoint)
        elif axis == 'sway':
            self.lock_sway = True
            self.pid_sway.set_setpoint(setpoint)
        elif axis == 'heave':
            self.lock_heave = True
            self.pid_heave.set_setpoint(setpoint)

    def unlock_axis(self, axis):
        if axis == 'roll':
            self.lock_roll = False
        elif axis == 'yaw':
            self.lock_yaw = False
        elif axis == 'surge':
            self.lock_surge = False
        elif axis == 'sway':
            self.lock_sway = False
        elif axis == 'heave':
            self.lock_heave = False