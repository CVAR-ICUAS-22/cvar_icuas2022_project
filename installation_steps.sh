# install mavlink

distro=`lsb_release -r | awk '{ print $2 }'`
[ "$distro" = "18.04" ] && ROS_DISTRO="melodic"
[ "$distro" = "20.04" ] && ROS_DISTRO="noetic"

echo "$0: installing Ardupilot Dependencies"

if [ "$distro" = "18.04" ]; then
  #  Toppra dependencies
  pip install wheel 
  pip install --upgrade pip

elif [ "$distro" = "20.04" ]; then
  sudo apt -y install python3-pip
  pip3 install wheel
  pip3 install --upgrade pip
fi

sudo apt -y install \
 libgeographic-dev\
 ros-$ROS_DISTRO-mavlink\
 ros-$ROS_DISTRO-mavros\
 ros-$ROS_DISTRO-mavros-msgs\
 ros-$ROS_DISTRO-octomap-ros\
 ros-$ROS_DISTRO-joy\
 ros-$ROS_DISTRO-rotors-gazebo\
 ros-$ROS_DISTRO-mav-msgs\
 protobuf-compiler\
 libgoogle-glog-dev\
 geographiclib-doc\
 geographiclib-tools\
 node-geographiclib\
 screen

if [ "$distro" = "18.04" ]; then
  sudo apt -y install \
 python-wstool\
 libgeographic17

fi

# install gitman python pip3 is required
sudo pip3 install gitman
sudo -H pip3 install gitman


