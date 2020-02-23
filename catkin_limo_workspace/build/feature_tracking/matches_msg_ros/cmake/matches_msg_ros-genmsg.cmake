# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "matches_msg_ros: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imatches_msg_ros:/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(matches_msg_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" "matches_msg_ros/TrackletWithInlierFlag:matches_msg_ros/FeaturePoint:std_msgs/Header"
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" "matches_msg_ros/FeaturePoint"
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" "matches_msg_ros/FeaturePoint:matches_msg_ros/TrackletWithOutlierFlag:std_msgs/Header"
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" "matches_msg_ros/FeaturePoint"
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" "matches_msg_ros/FeaturePoint"
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" ""
)

get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_custom_target(_matches_msg_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "matches_msg_ros" "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" "matches_msg_ros/FeaturePoint:matches_msg_ros/Tracklet:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_cpp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(matches_msg_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(matches_msg_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(matches_msg_ros_generate_messages matches_msg_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_cpp _matches_msg_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(matches_msg_ros_gencpp)
add_dependencies(matches_msg_ros_gencpp matches_msg_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS matches_msg_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_eus(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(matches_msg_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(matches_msg_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(matches_msg_ros_generate_messages matches_msg_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_eus _matches_msg_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(matches_msg_ros_geneus)
add_dependencies(matches_msg_ros_geneus matches_msg_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS matches_msg_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_lisp(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(matches_msg_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(matches_msg_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(matches_msg_ros_generate_messages matches_msg_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_lisp _matches_msg_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(matches_msg_ros_genlisp)
add_dependencies(matches_msg_ros_genlisp matches_msg_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS matches_msg_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_nodejs(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(matches_msg_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(matches_msg_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(matches_msg_ros_generate_messages matches_msg_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_nodejs _matches_msg_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(matches_msg_ros_gennodejs)
add_dependencies(matches_msg_ros_gennodejs matches_msg_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS matches_msg_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)
_generate_msg_py(matches_msg_ros
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg;/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
)

### Generating Services

### Generating Module File
_generate_module_py(matches_msg_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(matches_msg_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(matches_msg_ros_generate_messages matches_msg_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsgWithOutlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/Tracklet.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/TrackletWithInlierFlag.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/FeaturePoint.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg/MatchesMsg.msg" NAME_WE)
add_dependencies(matches_msg_ros_generate_messages_py _matches_msg_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(matches_msg_ros_genpy)
add_dependencies(matches_msg_ros_genpy matches_msg_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS matches_msg_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/matches_msg_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(matches_msg_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/matches_msg_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(matches_msg_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/matches_msg_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(matches_msg_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/matches_msg_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(matches_msg_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/matches_msg_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(matches_msg_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
