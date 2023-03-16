FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y ros-hunmble-ros-base ros-humble-rosbridge-server