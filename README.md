# ROS2 Docker

Dockerfile and notes for developing ROS2 applications inside docker.

The main downside of development in docker is the lack of hardware, i.e., there is no soundcard in the docker image, no camera connected, and so on. This must be run from a machine that has the hardware and streamed over ROS to the container.

## Building docker base image

`./build.sh` will build `local/ros2-dev:latest`, which adds some useful features and packages on top of `osrf/ros2:humble-desktop`.

## Development in docker

Run the docker image, with your local ROS workspace mounted. This allows any changes to be available locally, for committing in git, etc, but uses the docker build environment. Some examples are listed here based on my directory structure. They can be adapted for your needs.

### Mount ROS workspace

`docker run -it -v <local target directory>:<container target directory> local/ros2-dev:latest`

# Other notes

## Current command to run

docker run -it -p 9090:9090 ros-bridge:latest

## RCLNODEJS install problems

Installing rclnodejs with npm fails when performed from the dockerfile. Not sure why.

Build the container from the dockerfile, then run `npm i rclnodejs` to install. That works fine.