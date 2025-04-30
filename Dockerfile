FROM ros:humble

# environment
ENV DEBIAN_FRONTEND=noninteractive
ENV ROS_DISTRO=humble

# install dependencies
RUN apt-get update && apt-get install -y \
    locales \
    curl \
    gnupg2 \
    lsb-release \
    git \
    wget \
    python3-pip \
    python3-colcon-common-extensions \
    ros-${ROS_DISTRO}-nav2-bringup \
    ros-${ROS_DISTRO}-navigation2 \
    ros-${ROS_DISTRO}-turtlebot3* \
    ros-${ROS_DISTRO}-rviz2 \
    && rm -rf /var/lib/apt/lists/*

# set language to UTF-8
RUN locale-gen en_US en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# create workdirectory
WORKDIR /root/colcon_ws/src

# starting bash and source ros2
SHELL ["/bin/bash", "-c"]
RUN echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> /root/.bashrc

CMD ["bash"]
