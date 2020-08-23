#!/bin/bash
set -e

rosdep update
. "/opt/ros/$ROS_DISTRO/setup.bash"
source ~/catkin_ws/devel/setup.bash  
roslaunch rplidar_ros view_rplidar.launch

exec "$@"
