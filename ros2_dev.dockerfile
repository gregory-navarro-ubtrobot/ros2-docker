FROM osrf/ros:humble-desktop

WORKDIR /usr/app

#install ros packages
RUN apt-get update 
# RUN apt-get install -y ros-humble-ros-base ros-humble-rosbridge-server
RUN apt-get install -y nodejs npm 
RUN apt-get install -y tmux

# RUN  npm i rclnodejs