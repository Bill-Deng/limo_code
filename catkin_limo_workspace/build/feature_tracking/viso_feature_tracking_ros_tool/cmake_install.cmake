# Install script for directory: /home/dlx/catkin_limo_workspace/src/feature_tracking/viso_feature_tracking_ros_tool

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/devel/include/viso_feature_tracking_ros_tool/FeatureTrackingContourRoiInterface.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/devel/include/viso_feature_tracking_ros_tool/FeatureTrackingContourRoiConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/devel/lib/python2.7/dist-packages/viso_feature_tracking_ros_tool/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/build/feature_tracking/viso_feature_tracking_ros_tool/catkin_generated/installspace/viso_feature_tracking_ros_tool.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/viso_feature_tracking_ros_tool/cmake" TYPE FILE FILES
    "/home/dlx/catkin_limo_workspace/build/feature_tracking/viso_feature_tracking_ros_tool/catkin_generated/installspace/viso_feature_tracking_ros_toolConfig.cmake"
    "/home/dlx/catkin_limo_workspace/build/feature_tracking/viso_feature_tracking_ros_tool/catkin_generated/installspace/viso_feature_tracking_ros_toolConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/src/feature_tracking/viso_feature_tracking_ros_tool/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/dlx/catkin_limo_workspace/devel/lib/libfeature_tracking_contour_roi_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so"
         OLD_RPATH "/opt/ros/melodic/lib:/home/dlx/catkin_limo_workspace/devel/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfeature_tracking_contour_roi_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool" TYPE EXECUTABLE FILES "/home/dlx/catkin_limo_workspace/devel/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi"
         OLD_RPATH "/opt/ros/melodic/lib:/home/dlx/catkin_limo_workspace/devel/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/feature_tracking_contour_roi")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/dlx/catkin_limo_workspace/devel/lib/libviso_feature_tracking_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so"
         OLD_RPATH "/opt/ros/melodic/lib:/home/dlx/catkin_limo_workspace/devel/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libviso_feature_tracking_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool" TYPE EXECUTABLE FILES "/home/dlx/catkin_limo_workspace/devel/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node"
         OLD_RPATH "/opt/ros/melodic/lib:/home/dlx/catkin_limo_workspace/devel/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/viso_feature_tracking_ros_tool/viso_feature_tracking_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/viso_feature_tracking_ros_tool" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/src/feature_tracking/viso_feature_tracking_ros_tool/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/viso_feature_tracking_ros_tool" TYPE DIRECTORY FILES "/home/dlx/catkin_limo_workspace/src/feature_tracking/viso_feature_tracking_ros_tool/res")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/viso_feature_tracking_ros_tool" TYPE FILE FILES "/home/dlx/catkin_limo_workspace/src/feature_tracking/viso_feature_tracking_ros_tool/nodelet_plugins.xml")
endif()

