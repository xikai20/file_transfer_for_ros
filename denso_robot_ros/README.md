# denso_robot_ros

## The ones you can touch
### denso_robot_bringup
Responsible for launching denso robots in either simulations or the real world.

### denso_robot_descriptions
Stores robot URDFs (Universal Robot Description Files), mesh files, and some basic controller and joint information.

### denso_robot_gazebo 
Launch file and sample world for the denso robot simulations.

### denso_robot_moveit_config
Moveit configuration for a generic denso robot, generally unused.

### none_robot_config
Moveit configuration for the VS6577 without any attachments.

### realsense_robot_config
Moveit configuration for the VS6577 with a realsense lock collar attached to it. The URDF describing the camera and attachment
is in denso_robot_descriptions/vs6577_description

### scancontrol_robot_config
Moveit configuration for the VS6577 with a scancontrol lock collar attached to it. The URDF describing the camera and attachment
is in denso_robot_descriptions/vs6577_description

## Changing moveit configurations
Most changes you may have to do to moveit configurations can be done with the moveit! setup assistant. See more here:
http://docs.ros.org/kinetic/api/moveit_tutorials/html/doc/setup_assistant/setup_assistant_tutorial.html

If you're generating a new moveit configuration, you will have to add a "controllers.yaml" file to the new configuration's "config"
folder.