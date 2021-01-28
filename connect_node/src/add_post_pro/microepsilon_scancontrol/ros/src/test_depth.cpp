#include "ros/ros.h"
#include "sensor_msgs/PointCloud2.h"
#include <sensor_msgs/point_cloud2_iterator.h>


void printDepth(const sensor_msgs::PointCloud2ConstPtr scan_in)
{
    int width = scan_in -> width;
    int height = scan_in-> height;
    u_int32_t point_size = scan_in->point_step;
    int x_offset = scan_in->fields[0].offset;
    int y_offset = scan_in->fields[1].offset;
    int z_offset = scan_in->fields[2].offset;
    float x,y,z;
    int pos = 0;
    std::cout << scan_in->header << std::endl;

    for (int i = 0; i < scan_in->width; i++)
    {
        pos = scan_in->point_step*i;
        x = scan_in->data[pos+x_offset];
        y = scan_in->data[pos+y_offset];
        z = scan_in->data[pos+z_offset];
        std::cout << "x: " << x << " y: " << y << " z: " << z << std::endl;
        // std::cout << "x_offset: " << x_offset << " y_offset: " << y_offset << " z_offset: " << z_offset << std::endl;
    }
    return;
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "test_depth");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe ("/arm/laser_scan", 1, printDepth);
    ros::AsyncSpinner spinner(2);
    spinner.start();
    ros::waitForShutdown();
}