# Install script for directory: /home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dlx/catkin_limo_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/matches_msg_depth_ros/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/FeaturePoint.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/MatchesMsg.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/MatchesMsgWithInlierFlag.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/MatchesMsgWithOutlierFlag.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/Tracklet.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/TrackletWithInlierFlag.msg"
    "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/msg/TrackletWithOutlierFlag.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/matches_msg_depth_ros/cmake" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/catkin_generated/installspace/matches_msg_depth_ros-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/include/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/share/roseus/ros/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/share/common-lisp/ros/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/share/gennodejs/ros/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/matches_msg_depth_ros")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/catkin_generated/installspace/matches_msg_depth_ros.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/matches_msg_depth_ros/cmake" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/catkin_generated/installspace/matches_msg_depth_ros-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/matches_msg_depth_ros/cmake" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/catkin_generated/installspace/matches_msg_depth_rosConfig.cmake"
    "/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/catkin_generated/installspace/matches_msg_depth_rosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/matches_msg_depth_ros" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/matches_msg_depth_ros" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/matches_msg_depth_ros/include/matches_msg_depth_ros/" REGEX "/\\.gitignore$" EXCLUDE)
endif()

