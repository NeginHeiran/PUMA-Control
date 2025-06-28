# PUMA-Control
# Controller Design and Implementation for Simple 3-DoF PUMA Robot

**Project Title:** Controller Design and Implementation for Simple 3-DoF PUMA Robot

**Control Methods:** PD, Inverse Dynamics (PD, Adaptive, Robust), Passivity-Based (PD, Adaptive, Robust), Parallel, Impedance, and an example of Telerobotics Using ISS Method

**Author:** Fatemeh (Negin) Heiran

**Version:** 01

**Note:** The guide file can be found in "Controller Design Methods and Implementations for Simple 3-DoF PUMA Robot.pdf".

## Contact

For questions or inquiries, please contact:
*   **Email:** heiran.negin@gmail.com | heiran.fatemeh@gmail.com
*   **Linkedin:** https://www.linkedin.com/in/fatemeh-heiran-337bb416a/


## Project Description

This project focuses on the **design and simulation of several control methods** for a **simple 3-DoF articulated robot**. It includes the development of the **robot model**, analysis of **kinematics**, **Jacobian matrix**, and **dynamics**, **trajectory planning**, and the **implementation and simulation of various controllers** in MATLAB/**Simulink**. The goal is to explore how different control strategies perform in tracking desired trajectories for the simplified PUMA robot.

## Robot Model

The project utilizes a **simplified 3-DoF articulated PUMA robot**. This robot configuration features **three revolute joints**, similar to a human arm. Articulated robots are the most common configuration for industrial robots. The selected articulated robot is the same as PUMA’s robot first part which yields to the robot end effector position. The robot consists of three revolute joints which implies **3 DoF in task space**. The configuration of the simplified PUMA robot is shown in the right side of Figure 1.

Key aspects of the robot model covered include:
*   **3-DoF Articulated Structure**
*   **Direct Kinematics**: Defining the end-effector coordinates based on joint angles. This is a mapping from joint space to the coordinate space.
*   **Jacobian Matrix**: Concluded from velocity analysis for the robot. The derivative of the Jacobian is also defined.
*   **Direct Dynamics**: Establishing the dynamic equation, including definitions for mass, length, distance to center of mass, and moment of inertia parameters. The dynamic model involves inertia (M), Coriolis/centrifugal (C), and gravity (G) matrices. The dynamic equation is based on the D-H rule.
*   **Parameters Vector (theta)**: Used in the dynamic model.

## Controller Design Methods

The project explores the implementation and **simulation** of a variety of control strategies:

*   **PD Controller**: A basic Proportional-Derivative controller, omitting gravity terms in the design. The Simulink design is shown in Figure 2.
*   **PD + Gravity Controller**: A PD controller augmented to include compensation for gravity effects. The Simulink design is shown in Figure 4.
*   **Inverse Dynamics Control**: This category includes methods that aim to cancel out the robot's complex dynamics:
    *   **PD Inverse Dynamics**. The Simulink simulation is shown in Figure 6.
    *   **Robust Inverse Dynamics**. The Simulink simulation is shown in Figure 8.
    *   **Adaptive Inverse Dynamics**: This method involves online estimation of robot parameters. The Simulink simulation is shown in Figure 10.
*   **Passivity Based Control**: Controllers designed based on the concept of system passivity:
    *   **PD Passivity Based**. The Simulink simulation is shown in Figure 12.
    *   **Robust Passivity Based**. The Simulink simulation is shown in Figure 14.
    *   **Adaptive Passivity Based**. The Simulink simulation is shown in Figure 16.

## Trajectory Planning

Desired trajectories for the robot joint angles are generated (Joint Space). The primary method involves assuming the initial and final position, velocity, and acceleration between time 0 to 5 seconds. Specific initial/final conditions are defined for `theta1`, `theta2`, and `theta3`. This yields polynomial trajectory equations. An M-file named `trajectoryPlanning` is mentioned to obtain the trajectory.
* You can change the trajectory planning scenario on your own through the trajectory planning MATLAB code and the reflection in Simulink.

## Simulation Environment

The project is implemented and extensively simulated using **MATLAB** and **Simulink**. The core of the controller implementation and testing is done through **Simulink models**.

## Assumptions

The simulations are based on specific assumed parameters for the robot and controllers.

**Robot Parameters:** The robot parameters are considered as follows:
*   m1 = 1, m2 = 1, m3 = 1 (masses)
*   l1 = 1, l2 = 1, l3 = 1 (lengths)
*   r1 = l1/2, r2 = l2/2, r3 = l3/2 (distances from center of mass to axis of rotation)
*   R1 = 0.05, R2 = 0.05, R3 = 0.05
*   g = 9.81 (gravity)

## Getting Started

To run the simulations:
1.  Ensure you have **MATLAB** and **Simulink** installed. (Specific version that I used: **MATLAB R2022b**).
2.  Clone this repository.
3.  Open the project files in MATLAB.
4.  The project contains **Simulink (`.slx`) files for each controller simulation** and for more information M-files for trajectory generation (e.g., `trajectoryPlanning.m`).
5.  Open and run the desired **Simulink models**.

## Simulation Results

The simulations performed for each controller result in trajectory tracking performance data. The source material includes figures illustrating the **error** over time for each implemented controller. These figures demonstrate the effectiveness of each control strategy.

## Formulas and References

The theory behind each controller comes from this reference: C. Canudas de Wit, B. Siciliano, and G. Bastin, Theory of Robot Control. Berlin, Germany: Springer, 1996.
You can read the formulas in mentioned book and don't hesitate to ask me question about the theory.

