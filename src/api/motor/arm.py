from api.motor.servo import Servo
import math

class RoboticArm:
    """
    A class to represent a robotic arm with servos controlling each joint. 6DOF: XZ, X, XYZ
    TODO Currently lacking a lot of the real world functionality, just moves all the joints to reach a specific position and orientation.

    Attributes:
        servos (list of Servo): The list of servos controlling the joints.
        kinematics (Kinematics): The kinematics module for solving joint angles.
    """

    def __init__(self, pca9685, channels, kinematics, min_pulse=500, max_pulse=2500, min_angle=0, max_angle=180):
        """
        Initializes the RoboticArm with the specified servos and kinematics.

        Args:
            pca9685 (PCA9685): The PCA9685 instance for PWM control.
            channels (list of int): The PWM channels on the PCA9685 to which the servos are connected.
            kinematics (Kinematics): The kinematics instance for solving joint angles.
            min_pulse (int): The minimum pulse width for the servo position. Default is 500 microseconds.
            max_pulse (int): The maximum pulse width for the servo position. Default is 2500 microseconds.
            min_angle (float): The minimum angle for the servos. Default is 0 degrees.
            max_angle (float): The maximum angle for the servos. Default is 180 degrees.
        """
        self.servos = [Servo(pca9685, channel, min_pulse, max_pulse, min_angle, max_angle) for channel in channels]
        self.kinematics = kinematics

    def move_to_position(self, px, py, pz, roll, pitch, yaw):
        """
        Moves the robotic arm to the specified end-effector position and orientation.

        Args:
            px, py, pz (float): The desired end-effector position (x, y, z).
            roll, pitch, yaw (float): The desired end-effector orientation (roll, pitch, yaw).
        """
        # Solve for the joint angles using the kinematics module
        try:
            q1, q2, q3, q4, q5, q6 = self.kinematics.get_angles(px, py, pz, roll, pitch, yaw)
            joint_angles = [q1, q2, q3, q4, q5, q6]

            # Set each servo to the corresponding joint angle
            for servo, angle in zip(self.servos, joint_angles):
                servo.set_angle(math.degrees(angle))

            print("Robotic arm moved to the desired position and orientation.")

        except ValueError as e:
            print(f"Error in moving the robotic arm: {e}")

    def stop(self):
        """
        Stops all the servos, setting them to their neutral positions.
        """
        for servo in self.servos:
            servo.stop()

        print("Robotic arm stopped.")

    def get_joint_states(self):
        """
        Returns the current PWM states of all servos.

        Returns:
            list of int: The current PWM values for all servos.
        """
        return [servo.get_state() for servo in self.servos]
