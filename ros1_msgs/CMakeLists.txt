cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
project(ros_mpi)

# Build an executable that uses an existing ROS msg: find_package() the ROS
# package that contains the message, then use its reported include directories.
#find_package(sensor_msgs REQUIRED)
#include_directories(${sensor_msgs_INCLUDE_DIRS})
#add_executable(use_existing_msg use_existing_msg.cpp)

# Generate code from our own custom messages
# find_package catkin and genmsg, required for message generation macros
find_package(catkin REQUIRED COMPONENTS sensor_msgs std_msgs geometry_msgs)
find_package(genmsg REQUIRED)
# find_package the other message packages that our custom messages use
#find_package(geometry_msgs REQUIRED)
#find_package(map_msgs REQUIRED)
# Enumerate our custom messages files
include_directories(${catkin_INCLUDE_DIRS})
add_message_files(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} FILES box_mask.msg detection_frame.msg)
# Do code generation, specifying which other message packages we depend on.
generate_messages(DEPENDENCIES std_msgs)

# Build an executable that uses our messages, making it depend on the
# message-generation step.
#add_executable(use_existing_msg use_existing_msg.cpp)
#add_executable(use_custom_msg use_custom_msg.cpp)
#add_dependencies(use_custom_msg ${PROJECT_NAME}_generate_messages)

# (optional) Install the executables. The generated code will also
# automatically be installed.
# Needed for the generated .h message files to appear under the include/${PROJECT_NAME} folder.
install(TARGETS #use_custom_msg 
         DESTINATION bin)
#install(PROGRAMS use_msgs.py
#         DESTINATION bin)
