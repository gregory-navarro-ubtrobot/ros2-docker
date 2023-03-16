# In order to update the permissions (which was used with ROS) add the following build args: 
#   
#   --build-arg UID=$(id -u) --build-arg GID=$(id -g) --build-arg UNAME=$(id -u -n) 
#

docker build -t local/ros2-dev:latest -f ros2_dev.dockerfile .