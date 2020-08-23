# This is an auto generated Dockerfile for ros:ros-core
# generated from docker_images/create_ros_core_image.Dockerfile.em
FROM osrf/ubuntu_armhf:xenial

COPY ./qemu-arm-static  /usr/bin/qemu-arm-static

ENV DEBIAN_FRONTEND noninteractive

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    # build-essential \
    && rm -rf /var/lib/apt/lists/*

# RUN apt-get update -y -q && apt-get upgrade -y -q && apt-get install -y -q --no-install-recommends apt-utils apt-transport-https locales && locale-gen en_US.UTF-8

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros1-latest.list

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO kinetic

# install ros packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-kinetic-ros-core=1.3.2-0* \
    && rm -rf /var/lib/apt/lists/*

COPY ./rplidar_ros_install.sh /
RUN chmod +x rplidar_ros_install.sh && \
    ./rplidar_ros_install.sh


# setup entrypoint
COPY ./entrypoint.sh /

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
