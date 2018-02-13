# Overview

This directory demonstrates how to use both pre-existing and custom ROS
message structures in C++ and Python via CMake and make.

# Install ROS packages
Install ROS as usual. It works for the kinetic installation with rviz option. 
In bashrc:
function use_ros()
{
  source /opt/ros/kinetic/setup.bash
}
Make sure to call use_ros before building the package. 
~~~

# Build with cmake as usual
mkdir build
cd build
# Set the install folder here.
cmake -DCMAKE_INSTALL_PREFIX=. ..
make install

~~~
# External project use.
~~~
# Extend your python path to find both your own installation and the ROS installation
export PYTHONPATH=path_to_myproject/build/lib/python2.7/site-packages:$HOME/ros1_ws/install_isolated/lib/python2.7/site-packages:$PYTHONPATH
# For C++ external use: 
export ROS_MPI_DIR=~/robot_works/ros_dep/ros1_msgs/build
Add into your external repo's cmake $ENV{ROS_MPI_DIR} accordingly.
~~~
