from sympy import symbols, cos, sin, pi, simplify, Matrix, sqrt, atan2
import numpy as np
import math
import matplotlib.pyplot as plt

class Kinematics:
    def __init__(self):
        self.d90 = pi / 2

    def pose(self, theta, alpha, a, d):
        """
        Compute the transformation matrix between two joint frames
        based on the given DH parameters.
        
        Parameters:
        theta: Rotation around z-axis
        alpha: Rotation around x-axis
        a: Translation along x-axis
        d: Translation along z-axis
        
        Returns:
        T: Transformation matrix
        """
        r11, r12 = cos(theta), -sin(theta)
        r23, r33 = -sin(alpha), cos(alpha)
        r21 = sin(theta) * cos(alpha)
        r22 = cos(theta) * cos(alpha)
        r31 = sin(theta) * sin(alpha)
        r32 = cos(theta) * sin(alpha)
        y = -d * sin(alpha)
        z = d * cos(alpha)
        
        T = Matrix([
            [r11, r12, 0.0, a],
            [r21, r22, r23, y],
            [r31, r32, r33, z],
            [0.0, 0.0, 0.0, 1]
        ])
        
        return simplify(T)

    def forward_kinematics(self, q1, q2, q3, q4, q5, q6):
        """
        Compute the forward kinematics for a 6-DOF robot arm.
        
        Parameters:
        q1, q2, q3, q4, q5, q6: Joint angles
        
        Returns:
        X, Y, Z: Arrays of X, Y, Z positions for each joint
        """
        X, Y, Z = [], [], []

        T01 = self.pose(q1, 0, 0, 0.75)
        T0g = T01
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T12 = self.pose(q2 - self.d90, -self.d90, 0.35, 0)
        T0g = T0g * T12
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T23 = self.pose(q3, 0, 1.25, 0)
        T0g = T0g * T23
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T34 = self.pose(q4, -self.d90, -0.054, 1.5)
        T0g = T0g * T34
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T45 = self.pose(q5, self.d90, 0, 0)
        T0g = T0g * T45
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T56 = self.pose(q6, -self.d90, 0, 0)
        T0g = T0g * T56
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        T6g = self.pose(0, 0, 0, 0.303)
        T0g = T0g * T6g
        px, py, pz = T0g[0, 3], T0g[1, 3], T0g[2, 3]
        X.append(px)
        Y.append(py)
        Z.append(pz)

        X = np.reshape(X, (1, 7))
        Y = np.reshape(Y, (1, 7))
        Z = np.reshape(Z, (1, 7))

        return X, Y, Z

    def get_hypotenuse(self, a, b):
        """
        Calculate the hypotenuse of a right triangle given sides a and b.
        
        Parameters:
        a, b: The two sides of the triangle
        
        Returns:
        The hypotenuse
        """
        return sqrt(a * a + b * b)

    def get_cosine_law_angle(self, a, b, c):
        """
        Calculate the angle gamma between sides a and b using the cosine law.
        
        Parameters:
        a, b, c: The sides of the triangle
        
        Returns:
        gamma: The angle opposite side c
        """
        cos_gamma = (a * a + b * b - c * c) / (2 * a * b)
        sin_gamma = sqrt(1 - cos_gamma * cos_gamma)
        gamma = atan2(sin_gamma, cos_gamma)

        return gamma

    def get_wrist_center(self, gripper_point, R0g, dg=0.303):
        """
        Calculate the wrist center position given the gripper position and orientation.
        
        Parameters:
        gripper_point: The coordinates of the gripper (x, y, z)
        R0g: The rotation matrix of the gripper frame wrt the base frame
        dg: The distance between gripper and wrist center
        
        Returns:
        xw, yw, zw: The coordinates of the wrist center
        """
        xu, yu, zu = gripper_point

        nx, ny, nz = R0g[0, 2], R0g[1, 2], R0g[2, 2]
        xw = xu - dg * nx
        yw = yu - dg * ny
        zw = zu - dg * nz

        return xw, yw, zw

    def get_first_three_angles(self, wrist_center):
        """
        Calculate the first three joint angles given the wrist center.
        
        Parameters:
        wrist_center: The coordinates of the wrist center
        
        Returns:
        q1, q2, q3: The first three joint angles
        """
        x, y, z = wrist_center

        a1, a2, a3 = 0.35, 1.25, -0.054
        d1, d4 = 0.75, 1.5
        l = self.get_hypotenuse(d4, abs(a3))
        phi = atan2(d4, abs(a3))

        x_prime = self.get_hypotenuse(x, y)
        mx = x_prime - a1
        my = z - d1
        m = self.get_hypotenuse(mx, my)
        alpha = atan2(my, mx)

        gamma = self.get_cosine_law_angle(l, a2, m)
        beta = self.get_cosine_law_angle(m, a2, l)

        q1 = atan2(y, x)
        q2 = pi / 2 - beta - alpha
        q3 = -(gamma - phi)

        return q1, q2, q3

    def get_last_three_angles(self, R):
        """
        Calculate the last three joint angles from the rotation matrix.
        
        Parameters:
        R: Rotation matrix
        
        Returns:
        q4, q5, q6: The last three joint angles
        """
        sin_q4 = R[2, 2]
        cos_q4 = -R[0, 2]

        sin_q5 = sqrt(R[0, 2] ** 2 + R[2, 2] ** 2)
        cos_q5 = R[1, 2]

        sin_q6 = -R[1, 1]
        cos_q6 = R[1, 0]

        q4 = atan2(sin_q4, cos_q4)
        q5 = atan2(sin_q5, cos_q5)
        q6 = atan2(sin_q6, cos_q6)

        return q4, q5, q6

    def get_angles(self, x, y, z, roll, pitch, yaw):
        """
        Calculate all six joint angles for a 6-DOF robot arm given the gripper position and orientation.
        
        Parameters:
        x, y, z: Gripper position
        roll, pitch, yaw: Gripper orientation
        
        Returns:
        q1, q2, q3, q4, q5, q6: The six joint angles
        """
        gripper_point = x, y, z

        # Symbolic variables
        q1, q2, q3, q4, q5, q6 = symbols('q1:7')
        alpha, beta, gamma = symbols('alpha beta gamma', real=True)

        # Rotation of joint 3 wrt to the base frame in terms of the first three angles q1, q2, q3
        R03 = Matrix([
            [sin(q2 + q3) * cos(q1), cos(q1) * cos(q2 + q3), -sin(q1)],
            [sin(q1) * sin(q2 + q3), sin(q1) * cos(q2 + q3), cos(q1)],
            [cos(q2 + q3), -sin(q2 + q3), 0]
        ])

        # Transpose of R03
        R03T = R03.T

        # Rotation of urdf_gripper wrt to the base frame in terms of alpha = yaw, beta = pitch, gamma = roll
        R0u = Matrix([
            [cos(alpha) * cos(beta), -sin(alpha) * cos(gamma) + sin(beta) * sin(gamma) * cos(alpha),
             sin(alpha) * sin(gamma) + sin(beta) * cos(alpha) * cos(gamma)],
            [sin(alpha) * cos(beta), sin(alpha) * sin(beta) * sin(gamma) + cos(alpha) * cos(gamma),
             sin(alpha) * sin(beta) * cos(gamma) - sin(gamma) * cos(alpha)],
            [-sin(beta), sin(gamma) * cos(beta), cos(beta) * cos(gamma)]
        ])

        # Rotation of urdf_gripper wrt (DH) gripper frame from rotz(pi) * roty(-pi/2) and its transpose
        RguT_eval = Matrix([[0, 0, 1], [0, -1, 0], [1, 0, 0]])

        # Evaluate the rotation matrix for the given angles
        R0u_eval = R0u.evalf(subs={alpha: yaw, beta: pitch, gamma: roll})
        R0g_eval = R0u_eval * RguT_eval

        # Calculate wrist center and first three angles
        wrist_center = self.get_wrist_center(gripper_point, R0g_eval)
        j1, j2, j3 = self.get_first_three_angles(wrist_center)

        # Calculate the last three angles
        R03T_eval = R03T.evalf(subs={q1: j1.evalf(), q2: j2.evalf(), q3: j3.evalf()})
        R36_eval = R03T_eval * R0g_eval
        j4, j5, j6 = self.get_last_three_angles(R36_eval)

        return j1.evalf(), j2.evalf(), j3.evalf(), j4.evalf(), j5.evalf(), j6.evalf()


class Plotter:
    def create_plot(self):
        """
        Create a 3D plot for visualizing the robot's kinematics.
        
        Returns:
        fig, ax: The figure and axes of the plot
        """
        fig = plt.figure()
        ax = fig.add_subplot(111, projection='3d')
        ax.set_xlabel('x axis')
        ax.set_ylabel('y axis')
        ax.set_zlabel('z axis')
        ax.set_xlim3d([0, 2])
        ax.set_ylim3d([0, 3])
        ax.set_zlim3d([0, 3])
        ax.set_autoscale_on(False)
        return fig, ax

    def update_plot(self, X, Y, Z, fig, ax):
        """
        Update the 3D plot with new data.
        
        Parameters:
        X, Y, Z: Arrays of X, Y, Z positions for each joint
        fig, ax: The figure and axes of the plot
        """
        X = np.reshape(X, (1, 7))
        Y = np.reshape(Y, (1, 7))
        Z = np.reshape(Z, (1, 7))
        ax.cla()
        ax.plot_wireframe(X, Y, Z)
        ax.set_xlabel('x axis')
        ax.set_ylabel('y axis')
        ax.set_zlabel('z axis')
        ax.set_xlim3d([0, 2])
        ax.set_ylim3d([0, 3])
        ax.set_zlim3d([0, 3])
        ax.set_autoscale_on(False)
        fig.canvas.draw()
        fig.canvas.flush_events()


def main():
    kinematics = Kinematics()
    plotter = Plotter()

    # Example inputs for testing
    px, py, pz = 0.8, 0.4, 1.2
    roll, pitch, yaw = 0.5, -0.3, 1.0

    # Calculate the joint angles
    q1, q2, q3, q4, q5, q6 = kinematics.get_angles(px, py, pz, roll, pitch, yaw)
    print(f"q1: {q1}")
    print(f"q2: {q2}")
    print(f"q3: {q3}")
    print(f"q4: {q4}")
    print(f"q5: {q5}")
    print(f"q6: {q6}")

    # Forward kinematics
    X, Y, Z = kinematics.forward_kinematics(q1, q2, q3, q4, q5, q6)
    print(f"X: {X[0][-1]}")
    print(f"Y: {Y[0][-1]}")
    print(f"Z: {Z[0][-1]}")
    """
    # Plotting
    fig, ax = plotter.create_plot()
    plotter.update_plot(X, Y, Z, fig, ax)
    plt.show()
    """

if __name__ == "__main__":
    main()
