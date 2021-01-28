#!/usr/bin/env python

NAME = 'moving_file_part1'

# import the moving_stf service
from moving_file.srv import *
import rospy 

def add_two_ints(req):
    print("Returning [%s + %s = %s]" % (req.a, req.b, (req.a + req.b)))
    sum = req.a + req.b
    return AddTwoIntsResponse(sum)

def moving_file_part1():
    rospy.init_node(NAME)
    s = rospy.Service('add_two_ints', moving_stf, add_two_ints)
    print "Ready to add Two Ints"
    # spin() keeps Python from exiting until node is shutdown
    rospy.spin()

if __name__ == "__main__":
   moving_file_part1()
