# CMake generated Testfile for 
# Source directory: /home/dlx/catkin_limo_workspace/src/mono_lidar_depth/tracklets_depth_ros_tool
# Build directory: /home/dlx/catkin_limo_workspace/build/mono_lidar_depth/tracklets_depth_ros_tool
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tracklets_depth_ros_tool_rostest_test_test_tracklets_depth_ros_tool.test "/home/dlx/catkin_limo_workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/dlx/catkin_limo_workspace/build/test_results/tracklets_depth_ros_tool/rostest-test_test_tracklets_depth_ros_tool.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/tracklets_depth_ros_tool --package=tracklets_depth_ros_tool --results-filename test_test_tracklets_depth_ros_tool.xml --results-base-dir \"/home/dlx/catkin_limo_workspace/build/test_results\" /home/dlx/catkin_limo_workspace/src/mono_lidar_depth/tracklets_depth_ros_tool/test/test_tracklets_depth_ros_tool.test ")
add_test(_ctest_tracklets_depth_ros_tool_nosetests_test "/home/dlx/catkin_limo_workspace/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/dlx/catkin_limo_workspace/build/test_results/tracklets_depth_ros_tool/nosetests-test.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/dlx/catkin_limo_workspace/build/test_results/tracklets_depth_ros_tool" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/dlx/catkin_limo_workspace/src/mono_lidar_depth/tracklets_depth_ros_tool/test --with-xunit --xunit-file=/home/dlx/catkin_limo_workspace/build/test_results/tracklets_depth_ros_tool/nosetests-test.xml")
