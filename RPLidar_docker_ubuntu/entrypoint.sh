#!/bin/bash
set -e

rosdep update
roslaunch rplidar_ros view_rplidar.launch

exec "$@"
