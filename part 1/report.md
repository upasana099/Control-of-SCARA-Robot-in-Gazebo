### Report



## 1)
* The SCARA robot has two revolute joints and one prismatic joint.
* For creating the same, we used existing robot URDF in the provided package and
modified it to have the motion axes according to SCARA. That is, one prismatic
joint is added along with the tool link.
* For its visualization, which defines what the robot looks like, dimensions have been
provided. Further for collision detection and inertia to simulate, collision and
physical property like inertia has also been added. Hence, modified the URDF
model describing the robot assembly.
* Further, we set the YAML file with the configuration of the controllers which helps
us to define controllers. Next to which we read the joint values of the robot through
the topics published by Gazebo to the ROS environment

## 2)
* For the Forward Kinematics, we need the joint parameters. These joint parameters are received with the help of our gazebo model. For the program to read the values from gazebo we use “JointState” in the subscriber of the ROS.
* We also create a function and initialize A1, A2 and A3 which we find by manually calculating the DH parameters and multiplying them to find the Transformation Matrix which finally gives us the pose of the end effector.
* Furthermore, we create a publisher to publish the position and orientation which is calculated.

## 3)
* Moving on the service node, we take the values of x, y, z coordinates as requested and the joint parameters that are calculated through inverse kinematics are taken as the response.
* For the service node to run, we have to create a “srv” file where we add all the variables that we are using for request and response. It is important to note that this same srv file that is saved in a package needs to be added in the package.xml as dependencies.
* Finally, we run the service node and request for a response in a new terminal.

