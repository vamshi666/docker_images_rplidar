#!/bin/bash

### init ros
sudo rosdep init
rosdep update
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get update && \
    apt-get install -y git && \
    apt-get install -y build-essential && \
    apt-get install -y ros-kinetic-catkin python-catkin-tools
. "/opt/ros/$ROS_DISTRO/setup.bash"   

### Create a ROS Workspace
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace

### Clone the ROS node for the Lidar in the catkin workspace src dir
git clone https://github.com/robopeak/rplidar_ros.git

### Build with catkin
cd ~/catkin_ws/
catkin_make

### Set environment when build is complete
source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc