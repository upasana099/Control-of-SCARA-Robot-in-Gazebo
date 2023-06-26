# Control of SCARA Robot in Gazebo


## 1.1  Create the robot
## 1.2 Forward Kinematics
Implemented a forward kinematics node that
* Subscribes to the joint values topic and reads them from the gazebo simulator
* Calculate the end effector pose
* publishes the pose as a ROS topic 
## 1.3 Inverse Kinematics 

Implemented an inverse kinematics node (a separate node) that has a service client that takes a (desired) pose of the end effector from the user and returns joint positions as a response.



## 2. Controlling the robot joints

PD controller was programmed which would read the joint values, receive reference joint values through service and publish joint efforts back to the SCARA robot.


## 3. Moving the robot on a linear path

### 3.1 Velocity Level Kinematics 

* Calculating the end effector velocities and joint velocities using Jacobian matrix.
* Created two services, one requests joint velocities and converts them to end effector velocities, and the second one takes end effector velocities and converts them to joint velocities.

![3 1](https://github.com/upasana099/Control-of-SCARA-Robot-in-Gazebo/assets/89516193/81faee59-52e9-4e72-a36d-c8a1fa25bc2c)


### 3.2 Velocity Controller 

* In order to add a velocity controller, added a reference velocity which was compared with the desired velocity and the cumulative error was found. 
*	For tuning, kept increasing the value of Kp (proportional gain) while keeping one of the joints constant.

### 3.3 Simulation Videos

-	In this video the velocity in the x and y direction is 0,whereas in the z direction the velocity given is 1 unit.




https://github.com/upasana099/Control-of-SCARA-Robot-in-Gazebo/assets/89516193/91d1203a-1170-4d9e-ac3a-53fac34bb112




-	In this video the velocity in the x direction is 0, whereas in the y and z direction the velocity given is 1 unit.




https://github.com/upasana099/Control-of-SCARA-Robot-in-Gazebo/assets/89516193/34a512b0-8572-4bc3-ad1e-1d97faa61dc5






-	In this video the velocity in all the directions is 1 unit. 




https://github.com/upasana099/Control-of-SCARA-Robot-in-Gazebo/assets/89516193/e01b8df6-efea-469a-8e51-a05f90d26f6a





