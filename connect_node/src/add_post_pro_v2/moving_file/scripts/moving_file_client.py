#!/usr/bin/env python
import sys
import os
import rospy

from moving_file.srv import *

def moving_file_client(a,b):
    rospy.wait_for_service('file_mover')
    file_mover=rospy.ServiceProxy('file_mover', moving_stf)
    resp1 = file_mover(a,b)
    print "requesting file_moving"

if __name__ == "__main__":
   #rospy.exceptions.ROSInitException: time is not initialized. Have you called init_node()? 
   #rospy.init_node('file_mover', anonymous=True)
   moving_file_client()
