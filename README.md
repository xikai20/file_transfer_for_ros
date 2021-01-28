# __**CMU Robotic Depowdering for Additive Manufacturing**__

## __**major steps with specific codes**__
1.first is to catkin_make the under the file path xxx/connect_node

2.source devel/setup.bash

3.rosrun moving_file moving_file_service.py
 (to activate the service file, should return "ready to move file" as output)

4.open a new window and catkin_make under the same file path as step.1 and step.2

5.rosservice call /file_mover name1.py name2.py
 (the service call take two argument, the input format for the file is based on the folder location relative to the connect_node folder, as an example, the code shown above can be modified as: rosservice call /file_mover /name1.py src/name2.py
