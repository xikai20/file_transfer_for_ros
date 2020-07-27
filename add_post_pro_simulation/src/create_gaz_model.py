#!/usr/bin/env python
import rospy, tf, rospkg, stl, os
from add_post_pro_simulation.srv import *
from shutil import copyfile
path = None
rospack = None

def create_sdf_file(sdf, mesh_name):
    sdf.write("""<?xml version='1.0'?>
    <sdf version='1.4'>@
    <model name=""" + mesh_name + """>
        <pose>0 0 0 0 0 0</pose>
        <!-- <static>1</static> -->
        <!-- <pose>0 0 0 0 0 0</pose> -->
        <link name=""" + mesh_name + """>    
        <pose>0 0 0 0 0 0</pose>
        
        <inertial>
            <mass>1</mass>
            <inertia>
                <ixx>0.001</ixx>
                <ixy>0.0</ixy>
                <ixz>0.0</ixz>
                <iyy>0.001</iyy>
                <iyz>0.0</iyz>
                <izz>0.001</izz>
            </inertia>
        </inertial>

        <visual name="visual">
            <geometry>
            <mesh>
            <uri>model://"""+ mesh_name + """/mesh/"""+mesh_name+""".stl</uri>
            <scale>0.001 0.001 0.001</scale>
            </mesh>
            </geometry>
        </visual>

        <self_collide>0</self_collide>
        <enable_wind>0</enable_wind>
        <kinematic>0</kinematic>

        <collision name="collision">
            <geometry>
            <mesh>
            <uri>model://"""+ mesh_name + """/mesh/"""+mesh_name+""".stl</uri>
            <scale>0.001 0.001 0.001</scale>
            </mesh>
            </geometry>
            <surface>
            <friction>
            <ode>
                <mu>2</mu>
                <mu2>2</mu2>
            </ode>
            <torsional>
                <ode/>
            </torsional>
            </friction>def begin_conversion():

    # check for existance
    # create model folder
    # create mesh folder
    # create object.model file
    # create object.sdf file
    pass
            <bounce/>
            </surface>
            <max_contacts>10</max_contacts>
        </collision>
        </link>
  </model>
</sdf>
""")
    return

def create_config_file(config, mesh_name):

    config.write("""<?xml version="1.0"?>
    <model>
        <name>""" + mesh_name + """</name>
        <version>1.0</version>
        <sdf version='1.4'>model.sdf</sdf>

        <author>
            <name> AddPostPro Member </name>
            <email> add_post_pro_member@andrew.cmu.edu</email>
        </author>

        <description>
            Auto-generated gazebo model.
        </description>
    </model>""")


    pass

def conversion_service(req):
    global path, rospack
    file_name = req.name
    print file_name
    mesh = None
    print("Currently assuming the file ends in .stl as opposed to .STL")
    # Check if what we were given is a path or a file name
    name_split = file_name.split("/")
    mesh_name = name_split[len(name_split)-1]
    print type(name_split)
    print len(name_split)
    if (len(name_split)==1):
        # Assuming we're just given a name
        check_ext = file_name.split(".")
        if len(check_ext)==1:
            file_name = name_split[len(name_split)-1] +".stl"
        print("Only model name is provided, looking in the add_post_pro_simulation meshes folder")
        mesh_path = path+"/mesh/"+file_name
        mesh = stl.mesh.Mesh.from_file(mesh_path)
        # TODO: Handle exceptions however they show up
    else:
        # For now, assume we are given a path beginning with a metrology folder
        print("Attempting to navigate path to STL file")
        print("Assuming we are using a folder in the src library")
        overall_path = path+"/../"
        # name_split[0] is presumed to be the folder located in metrology/src
        if not os.path.isdir(overall_path+name_split[0]):
            print("Directory not located in project/src folder, returning")
            return
        else:
            mesh_path = overall_path+file_name+".stl"
            mesh=stl.mesh.Mesh.from_file(mesh_path)
    if mesh == None:
        print("Mesh failed to load, maybe there is a typo in the path")
        return
    else:
        print("Mesh loaded")
    
    # Now in the gazebo_models folder
    os.chdir(path+"/gazebo_models/")
    if os.path.isdir(path+"/gazebo_models/"+mesh_name):
        print("Directory for this model already exists. Please delete it or rename it if you wish to remake the directory.")
        return
    else:
        os.mkdir(path+"/gazebo_models/"+mesh_name)  # Make overall directory
        os.mkdir(path+"/gazebo_models/"+mesh_name+"/mesh/") # Make mesh subdirectory
        print("Directory created. Creating files in directory.") 
        os.chdir(path+"/gazebo_models/"+mesh_name) # Change to new model directory        
        
        # Create model.config and model.sdf
        config = open("model.config", "a") 
        sdf = open("model.sdf", "a")
        create_config_file(config, mesh_name)
        create_sdf_file(sdf, mesh_name)
        
        # Copy over mesh file
        print(mesh_path)
        copyfile(mesh_path, os.getcwd()+"/mesh/"+mesh_name+".stl")
    # Check if the gazebo_model folder already exists.

    return 

def main():
    global path, rospack
    rospy.init_node("stl_conversion")

    # Find metrology gazebo_models
    rospack = rospkg.RosPack()
    path = rospack.get_path('add_post_pro_simulation')


    surface_srv = rospy.Service('add_post_pro_simulation/stl_conversion', ConversionRequest, conversion_service)
    rospy.spin()

if __name__ == '__main__':
    main()
