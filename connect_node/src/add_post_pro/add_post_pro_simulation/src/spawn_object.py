#!/usr/bin/env python

import rospy, tf, os, rospkg
from gazebo_msgs.srv import DeleteModel, SpawnModel
from geometry_msgs.msg import *
from add_post_pro_simulation.srv import *
from gazebo_ros_link_attacher.srv import *

delete_model = None     # Gazebo service
spawn_model = None      # Gazebo service
rospack = None          # Used to find package paths
path = None             # Path to metrology_bringup
model_list = {}         # Used to store names of models added through metrology services

def app_spawn_model(req):
    global spawn_model, model_list, rospack, path
    # Check if gazebo model exists
    if not os.path.isdir(path+"/gazebo_models/"+req.model_name):
        print("Could not find gazebo model in " + path + "/gazebo_models/")
        return MetSpawnModelResponse(False)

    # Gazebo model exists
    with open(path + "/gazebo_models/" + req.model_name+"/model.sdf", "r") as f:
        model_xml = f.read()

    instance_name = req.instance_name
    pose = None
    parent_frame = None

    if not req.turntable:
        pose = req.pose
        parent_frame = "turntable_plate"
    else:
        pose = Pose(position=Point(x=0, y=0, z=0.005), orientation=Quaternion(0,0,0,0))
        parent_frame = req.parent_frame
    print("Here5")
    if req.model_name in model_list:
        if req.instance_name in model_list[req.model_name]:
            print("Cannot add model as an instance of this model with the same instance name already exists.")
            return MetSpawnModelResponse(False)
        model_list[req.model_name].append(req.instance_name)
    else:
        model_list[req.model_name] = []
        model_list[req.model_name].append(instance_name)
    print(spawn_model(req.instance_name, model_xml, "", pose, parent_frame))

    model_1 = "add_post_pro_robot"
    link_1 = "turntable_plate"
    model_2 = req.instance_name
    link_2 =  req.model_name

    rospy.wait_for_service('/link_attacher_node/attach')
    try:
        attach_link = rospy.ServiceProxy('/link_attacher_node/attach', Attach)

        resp = attach_link(model_1, link_1, model_2, link_2)
        print("Links attached!")
    except rospy.ServiceException, e:
        rospy.logwarn("Service call failed: %s", e)
    return APPSpawnModelResponse(True)

def app_delete_model(req):
    global delete_model, model_list

    model_name = None
    instance_name = None

    model_found = False
    instance_found = False
    # for key, value in model_list:
    #     if req.instance_name in value:
    #         if instance_found:
    #             print("[WARNING] Found two spawned models with the same name.")
    #         model_name = key
    #         model_found = True
    #         instance_found = True

    delete_model(req.instance_name)
    # model_list[model_name].remove(instance_name)
    print("Deleted model")
    return APPDeleteModelResponse(True)

def app_list_models(req):
    global model_list

    models = []
    models.append("Model Name - Instance Name")
    for key, value in model_list:
        for i in value:
            models.append(key + " - " + i)
    return APPListModelsResponse(models)

def main():
    global delete_model, spawn_model, rospack, path
    rospy.init_node("spawn_model")

    print("Waiting for gazebo services...")
    rospy.wait_for_service("gazebo/delete_model")    
    rospy.wait_for_service("gazebo/spawn_sdf_model")
    
    print("Found Gazebo services, setting up proxies")
    delete_model = rospy.ServiceProxy("gazebo/delete_model", DeleteModel)
    spawn_model = rospy.ServiceProxy("gazebo/spawn_sdf_model", SpawnModel)

    print("Connected to Gazebo services")

    rospack = rospkg.RosPack()
    path = rospack.get_path("add_post_pro_simulation")

    spawn_model_srv = rospy.Service("add_post_pro_simulation/spawn_model", APPSpawnModel, app_spawn_model)
    delete_model_srv = rospy.Service("add_post_pro_simulation/delete_model", APPDeleteModel, app_delete_model)
    list_models_srv = rospy.Service("add_post_pro_simulation/list_models", APPListModels, app_list_models)
    print("Set up spawn, delete, and list services for custom models")

    rospy.spin()

    pass


if __name__ == '__main__':
    main()