#!/bin/bash

# Meteor Controller
# gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch ~/project/launch/carlike_driver.launch'
# gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch ~/project/launch/forklift_driver.launch'
gnome-terminal -t "Ackermann Controller" -x bash -c 'roslaunch turn_on_wheeltec_robot base_serial.launch'
sleep 2

# Realsense 
gnome-terminal -t "Realsense front" -x bash -c 'roslaunch ~/project/launch/front_realsense.launch'
sleep 2

# Realsense 
gnome-terminal -t "Realsense back" -x bash -c 'roslaunch ~/project/launch/back_realsense.launch'
sleep 4

# SLAM
gnome-terminal -t "Localization" -x bash -c 'roslaunch ~/project/launch/Visual_SLAM.launch'
sleep 2

# keyboard
# gnome-terminal -t "keyboard" -x bash -c 'rosrun teleop_twist_keyboard teleop_twist_keyboard.py'
# sleep 1