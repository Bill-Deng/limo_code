# Install script for directory: /home/dlx/catkin_limo_workspace/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE PROGRAM FILES "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE PROGRAM FILES "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/setup.bash;/home/dlx/catkin_limo_workspace/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/setup.bash"
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/setup.sh;/home/dlx/catkin_limo_workspace/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/setup.sh"
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/setup.zsh;/home/dlx/catkin_limo_workspace/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/setup.zsh"
    "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dlx/catkin_limo_workspace/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dlx/catkin_limo_workspace/install" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dlx/catkin_limo_workspace/build/gtest/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/feature_tracking/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/limo/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/mono_lidar_depth/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mrt_cmake_modules/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/image_preproc/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/matches_msg_types/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/monolidar_fusion/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/robust_optimization/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/keyframe_bundle_adjustment/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/viso2/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/feature_tracking_core/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_depth_ros/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/matches_msg_ros/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_msg_conversions_ros/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/rosinterface_handler/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/matches_conversion_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/image_preproc_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/mono_lidar_depth/tracklets_depth_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/util_nodes_tf2_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/feature_tracking/viso_feature_tracking_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/keyframe_bundle_adjustment_ros_tool/cmake_install.cmake")
  include("/home/dlx/catkin_limo_workspace/build/limo/demo_keyframe_bundle_adjustment_meta/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/dlx/catkin_limo_workspace/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
