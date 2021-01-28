#!/usr/bin/env python

NAME = 'moving_file_service'

# import the moving_stf service
from moving_file.srv import *
import rospy 
import shutil


def file_mover(req):
    print('file copy from:',req.a, '  and file pasted to:',req.b)
    shutil.copy(req.a,req.b)
    #'/home/cerlab/XK/dummy/src/moving_file/scripts/name1.py','/home/cerlab/XK/dummy/src/   moving_file/scripts/output2.py' /home/cerlab/XK/dummy/src/moving_file/scripts/name1.py /home/cerlab/XK/dummy/src/moving_file/scripts/output2.py)
    c=req.b
    print(c , "file tranfered")

    return moving_stfResponse(c)
    

def moving_file_service():
    rospy.init_node(NAME)
    s = rospy.Service('file_mover', moving_stf, file_mover)
    print "Ready to move file"
    # spin() keeps Python from exiting until node is shutdown
    rospy.spin()

if __name__ == "__main__":
   moving_file_service()
