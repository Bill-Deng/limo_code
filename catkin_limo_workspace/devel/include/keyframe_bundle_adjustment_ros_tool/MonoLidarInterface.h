// *********************************************************
//
// File autogenerated for the keyframe_bundle_adjustment_ros_tool package
// by the rosinterface_handler package.
// Please do not edit.
//
// ********************************************************/

#pragma once

#include <stdlib.h>
#include <string>
#include <limits>
#include <memory>
#include <ros/param.h>
#include <ros/node_handle.h>
#include <rosinterface_handler/console_bridge_compatibility.hpp>
#include <rosinterface_handler/utilities.hpp>
#ifdef MESSAGE_FILTERS_FOUND
#include <message_filters/subscriber.h>
#include <matches_msg_depth_ros/MatchesMsgWithOutlierFlag.h>
#include <sensor_msgs/CameraInfo.h>
#include <nav_msgs/Path.h>
#include <sensor_msgs/PointCloud2.h>
#include <visualization_msgs/MarkerArray.h>
#else
#error message_filters was not found during compilation. Please recompile with message_filters.
#endif
#ifdef DYNAMIC_RECONFIGURE_FOUND
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wparentheses"
#include <keyframe_bundle_adjustment_ros_tool/MonoLidarConfig.h>
#pragma GCC diagnostic pop
#else
struct MonoLidarConfig{};
#endif


namespace keyframe_bundle_adjustment_ros_tool {

/// \brief Parameter struct generated by rosinterface_handler
struct MonoLidarInterface {

  using Config = MonoLidarConfig;
#ifdef MESSAGE_FILTERS_FOUND
  template<typename T>
  using Subscriber = message_filters::Subscriber<T>;
  template<typename T>
  using SubscriberPtr = std::shared_ptr<Subscriber<T>>;
#endif
#ifdef IF_HANDLER_DIAGNOSTICS_INCLUDED
  template<typename T, typename BaseT = message_filters::Subscriber<T>>
  using DiagSubscriber = rosinterface_handler::DiagnosedSubscriber<T, BaseT>;
  template<typename T, typename BaseT = message_filters::Subscriber<T>>
  using DiagSubscriberPtr = std::shared_ptr<DiagSubscriber<T, BaseT>>;
  template<typename T>
  using DiagPublisher = rosinterface_handler::DiagnosedPublisher<T>;
#endif

  MonoLidarInterface(const ros::NodeHandle& private_node_handle)
  : globalNamespace_{"/"},
    publicNamespace_{rosinterface_handler::getParentNamespace(private_node_handle) + "/"},
    privateNamespace_{private_node_handle.getNamespace() + "/"},
    nodeName_{rosinterface_handler::getNodeName(private_node_handle)},
    privateNodeHandle_{private_node_handle},
    tracklets_subscriber{std::make_shared<Subscriber<matches_msg_depth_ros::MatchesMsgWithOutlierFlag>>()},
    camera_info_subscriber{std::make_shared<Subscriber<sensor_msgs::CameraInfo>>()} {}

  /// \brief Get values from parameter server
  ///
  /// Will fail if a value can not be found and no default value is given.
  void fromParamServer(){
    bool success = true;
    success &= rosinterface_handler::getParam(privateNamespace_ + "verbosity", verbosity, std::string{"info"});
    rosinterface_handler::setLoggerLevel(privateNodeHandle_, "verbosity", nodeName());
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_debug");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_info");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_warning");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_error");
    rosinterface_handler::testConstParam(privateNamespace_ + "verbosity_fatal");
    success &= rosinterface_handler::getParam(privateNamespace_ + "diag_pub_topic", diag_pub_topic, std::string{"out_topic_diagnosed"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "diagnostic_updater_name", diagnostic_updater_name, std::string{"MonoLidarUpdater"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "diagnostic_updater_hardware_id", diagnostic_updater_hardware_id, std::string{"MonoLidar"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "diagnostic_updater_rate", diagnostic_updater_rate, double{1});
    success &= rosinterface_handler::getParam(privateNamespace_ + "diagnostic_updater_rate_tolerance", diagnostic_updater_rate_tolerance, double{1});
    success &= rosinterface_handler::getParam(privateNamespace_ + "prior_vehicle_frame", prior_vehicle_frame, std::string{""});
    success &= rosinterface_handler::getParam(privateNamespace_ + "prior_global_frame", prior_global_frame, std::string{"origin"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "tf_waiting_time", tf_waiting_time, double{10.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "calib_target_frame_id", calib_target_frame_id, std::string{"camera"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "calib_source_frame_id", calib_source_frame_id, std::string{"vehicle"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "tf_parent_frame_id", tf_parent_frame_id, std::string{"local_cs"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "tf_child_frame_id", tf_child_frame_id, std::string{""});
    success &= rosinterface_handler::getParam(privateNamespace_ + "max_number_landmarks_near_bin", max_number_landmarks_near_bin, int{300});
    success &= rosinterface_handler::getParam(privateNamespace_ + "max_number_landmarks_middle_bin", max_number_landmarks_middle_bin, int{300});
    success &= rosinterface_handler::getParam(privateNamespace_ + "max_number_landmarks_far_bin", max_number_landmarks_far_bin, int{300});
    success &= rosinterface_handler::getParam(privateNamespace_ + "time_between_keyframes_sec", time_between_keyframes_sec, double{0.1});
    success &= rosinterface_handler::getParam(privateNamespace_ + "min_median_flow", min_median_flow, double{8.});
    success &= rosinterface_handler::getParam(privateNamespace_ + "critical_rotation_difference", critical_rotation_difference, double{0.08});
    success &= rosinterface_handler::getParam(privateNamespace_ + "robust_loss_depth_thres", robust_loss_depth_thres, double{0.15});
    success &= rosinterface_handler::getParam(privateNamespace_ + "robust_loss_reprojection_thres", robust_loss_reprojection_thres, double{1.0});
    success &= rosinterface_handler::getParam(privateNamespace_ + "min_number_connecting_landmarks", min_number_connecting_landmarks, int{30});
    success &= rosinterface_handler::getParam(privateNamespace_ + "max_size_optimization_window", max_size_optimization_window, int{20});
    success &= rosinterface_handler::getParam(privateNamespace_ + "shrubbery_weight", shrubbery_weight, double{0.9});
    success &= rosinterface_handler::getParam(privateNamespace_ + "outlier_rejection_quantile", outlier_rejection_quantile, double{0.95});
    success &= rosinterface_handler::getParam(privateNamespace_ + "outlier_rejection_num_iterations", outlier_rejection_num_iterations, int{1});
    success &= rosinterface_handler::getParam(privateNamespace_ + "height_over_ground", height_over_ground, double{0.30});
    success &= rosinterface_handler::getParam(privateNamespace_ + "prior_speed", prior_speed, double{4.});
    success &= rosinterface_handler::getParam(privateNamespace_ + "show_debug_image", show_debug_image, bool{false});
    success &= rosinterface_handler::getParam(privateNamespace_ + "max_solver_time", max_solver_time, double{0.2});
    success &= rosinterface_handler::getParam(privateNamespace_ + "dump_path", dump_path, std::string{""});
    success &= rosinterface_handler::getParam(privateNamespace_ + "outlier_labels_yaml", outlier_labels_yaml, std::string{"../res/outlier_labels.yaml"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "tracklets_subscriber_topic", tracklets_subscriber_topic, std::string{"in_topic_tracklets"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "tracklets_subscriber_queue_size", tracklets_subscriber_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "camera_info_subscriber_topic", camera_info_subscriber_topic, std::string{"in_topic_cam_info"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "camera_info_subscriber_queue_size", camera_info_subscriber_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "active_path_publisher_topic", active_path_publisher_topic, std::string{"active_path_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "active_path_publisher_queue_size", active_path_publisher_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_publisher_topic", path_publisher_topic, std::string{"path_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "path_publisher_queue_size", path_publisher_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "landmarks_publisher_topic", landmarks_publisher_topic, std::string{"landmarks_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "landmarks_publisher_queue_size", landmarks_publisher_queue_size, int{5});
    success &= rosinterface_handler::getParam(privateNamespace_ + "planes_publisher_topic", planes_publisher_topic, std::string{"planes_topic"});
    success &= rosinterface_handler::getParam(privateNamespace_ + "planes_publisher_queue_size", planes_publisher_queue_size, int{5});

    tracklets_subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, tracklets_subscriber_topic), uint32_t(tracklets_subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    camera_info_subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, camera_info_subscriber_topic), uint32_t(camera_info_subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    active_path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, active_path_publisher_topic), active_path_publisher_queue_size);
    path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, path_publisher_topic), path_publisher_queue_size);
    landmarks_publisher = privateNodeHandle_.advertise<sensor_msgs::PointCloud2>(rosinterface_handler::getTopic(privateNamespace_, landmarks_publisher_topic), landmarks_publisher_queue_size);
    planes_publisher = privateNodeHandle_.advertise<visualization_msgs::MarkerArray>(rosinterface_handler::getTopic(privateNamespace_, planes_publisher_topic), planes_publisher_queue_size);

    rosinterface_handler::testMin<int>(privateNamespace_ + "max_number_landmarks_near_bin", max_number_landmarks_near_bin, 10);
    rosinterface_handler::testMax<int>(privateNamespace_ + "max_number_landmarks_near_bin", max_number_landmarks_near_bin, 5000);
    rosinterface_handler::testMin<int>(privateNamespace_ + "max_number_landmarks_middle_bin", max_number_landmarks_middle_bin, 10);
    rosinterface_handler::testMax<int>(privateNamespace_ + "max_number_landmarks_middle_bin", max_number_landmarks_middle_bin, 5000);
    rosinterface_handler::testMin<int>(privateNamespace_ + "max_number_landmarks_far_bin", max_number_landmarks_far_bin, 10);
    rosinterface_handler::testMax<int>(privateNamespace_ + "max_number_landmarks_far_bin", max_number_landmarks_far_bin, 5000);
    rosinterface_handler::testMin<double>(privateNamespace_ + "time_between_keyframes_sec", time_between_keyframes_sec, 0.01);
    rosinterface_handler::testMax<double>(privateNamespace_ + "time_between_keyframes_sec", time_between_keyframes_sec, 1.0);
    rosinterface_handler::testMin<double>(privateNamespace_ + "min_median_flow", min_median_flow, 0.);
    rosinterface_handler::testMax<double>(privateNamespace_ + "min_median_flow", min_median_flow, 200.);
    rosinterface_handler::testMin<double>(privateNamespace_ + "critical_rotation_difference", critical_rotation_difference, 0.);
    rosinterface_handler::testMax<double>(privateNamespace_ + "critical_rotation_difference", critical_rotation_difference, 1.5);
    rosinterface_handler::testMin<double>(privateNamespace_ + "robust_loss_depth_thres", robust_loss_depth_thres, 0.0001);
    rosinterface_handler::testMax<double>(privateNamespace_ + "robust_loss_depth_thres", robust_loss_depth_thres, 5.0);
    rosinterface_handler::testMin<double>(privateNamespace_ + "robust_loss_reprojection_thres", robust_loss_reprojection_thres, 0.0001);
    rosinterface_handler::testMax<double>(privateNamespace_ + "robust_loss_reprojection_thres", robust_loss_reprojection_thres, 10.);
    rosinterface_handler::testMin<int>(privateNamespace_ + "min_number_connecting_landmarks", min_number_connecting_landmarks, 5);
    rosinterface_handler::testMax<int>(privateNamespace_ + "min_number_connecting_landmarks", min_number_connecting_landmarks, 500);
    rosinterface_handler::testMin<int>(privateNamespace_ + "max_size_optimization_window", max_size_optimization_window, 3);
    rosinterface_handler::testMax<int>(privateNamespace_ + "max_size_optimization_window", max_size_optimization_window, 500);
    rosinterface_handler::testMin<double>(privateNamespace_ + "shrubbery_weight", shrubbery_weight, 0.);
    rosinterface_handler::testMax<double>(privateNamespace_ + "shrubbery_weight", shrubbery_weight, 1.);
    rosinterface_handler::testMin<double>(privateNamespace_ + "outlier_rejection_quantile", outlier_rejection_quantile, 0.01);
    rosinterface_handler::testMax<double>(privateNamespace_ + "outlier_rejection_quantile", outlier_rejection_quantile, 1.0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "outlier_rejection_num_iterations", outlier_rejection_num_iterations, 0);
    rosinterface_handler::testMax<int>(privateNamespace_ + "outlier_rejection_num_iterations", outlier_rejection_num_iterations, 10);
    rosinterface_handler::testMin<double>(privateNamespace_ + "height_over_ground", height_over_ground, -10.0001);
    rosinterface_handler::testMax<double>(privateNamespace_ + "height_over_ground", height_over_ground, 10);
    rosinterface_handler::testMin<double>(privateNamespace_ + "prior_speed", prior_speed, 0.001);
    rosinterface_handler::testMax<double>(privateNamespace_ + "prior_speed", prior_speed, 30.);
    rosinterface_handler::testMin<double>(privateNamespace_ + "max_solver_time", max_solver_time, 0.01);
    rosinterface_handler::testMax<double>(privateNamespace_ + "max_solver_time", max_solver_time, 20.0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "tracklets_subscriber_queue_size", tracklets_subscriber_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "camera_info_subscriber_queue_size", camera_info_subscriber_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "active_path_publisher_queue_size", active_path_publisher_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "path_publisher_queue_size", path_publisher_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "landmarks_publisher_queue_size", landmarks_publisher_queue_size, 0);
    rosinterface_handler::testMin<int>(privateNamespace_ + "planes_publisher_queue_size", planes_publisher_queue_size, 0);
    if(!success){
      missingParamsWarning();
      rosinterface_handler::exit("RosinterfaceHandler: GetParam could net retrieve parameter.");
    }
    ROS_DEBUG_STREAM(*this);
  }

  /// \brief Set parameters on ROS parameter server.
  void toParamServer(){
    rosinterface_handler::setParam(privateNamespace_ + "verbosity",verbosity);
    rosinterface_handler::setParam(privateNamespace_ + "diag_pub_topic",diag_pub_topic);
    rosinterface_handler::setParam(privateNamespace_ + "diagnostic_updater_name",diagnostic_updater_name);
    rosinterface_handler::setParam(privateNamespace_ + "diagnostic_updater_hardware_id",diagnostic_updater_hardware_id);
    rosinterface_handler::setParam(privateNamespace_ + "diagnostic_updater_rate",diagnostic_updater_rate);
    rosinterface_handler::setParam(privateNamespace_ + "diagnostic_updater_rate_tolerance",diagnostic_updater_rate_tolerance);
    rosinterface_handler::setParam(privateNamespace_ + "prior_vehicle_frame",prior_vehicle_frame);
    rosinterface_handler::setParam(privateNamespace_ + "prior_global_frame",prior_global_frame);
    rosinterface_handler::setParam(privateNamespace_ + "tf_waiting_time",tf_waiting_time);
    rosinterface_handler::setParam(privateNamespace_ + "calib_target_frame_id",calib_target_frame_id);
    rosinterface_handler::setParam(privateNamespace_ + "calib_source_frame_id",calib_source_frame_id);
    rosinterface_handler::setParam(privateNamespace_ + "tf_parent_frame_id",tf_parent_frame_id);
    rosinterface_handler::setParam(privateNamespace_ + "tf_child_frame_id",tf_child_frame_id);
    rosinterface_handler::setParam(privateNamespace_ + "max_number_landmarks_near_bin",max_number_landmarks_near_bin);
    rosinterface_handler::setParam(privateNamespace_ + "max_number_landmarks_middle_bin",max_number_landmarks_middle_bin);
    rosinterface_handler::setParam(privateNamespace_ + "max_number_landmarks_far_bin",max_number_landmarks_far_bin);
    rosinterface_handler::setParam(privateNamespace_ + "time_between_keyframes_sec",time_between_keyframes_sec);
    rosinterface_handler::setParam(privateNamespace_ + "min_median_flow",min_median_flow);
    rosinterface_handler::setParam(privateNamespace_ + "critical_rotation_difference",critical_rotation_difference);
    rosinterface_handler::setParam(privateNamespace_ + "robust_loss_depth_thres",robust_loss_depth_thres);
    rosinterface_handler::setParam(privateNamespace_ + "robust_loss_reprojection_thres",robust_loss_reprojection_thres);
    rosinterface_handler::setParam(privateNamespace_ + "min_number_connecting_landmarks",min_number_connecting_landmarks);
    rosinterface_handler::setParam(privateNamespace_ + "max_size_optimization_window",max_size_optimization_window);
    rosinterface_handler::setParam(privateNamespace_ + "shrubbery_weight",shrubbery_weight);
    rosinterface_handler::setParam(privateNamespace_ + "outlier_rejection_quantile",outlier_rejection_quantile);
    rosinterface_handler::setParam(privateNamespace_ + "outlier_rejection_num_iterations",outlier_rejection_num_iterations);
    rosinterface_handler::setParam(privateNamespace_ + "height_over_ground",height_over_ground);
    rosinterface_handler::setParam(privateNamespace_ + "prior_speed",prior_speed);
    rosinterface_handler::setParam(privateNamespace_ + "show_debug_image",show_debug_image);
    rosinterface_handler::setParam(privateNamespace_ + "max_solver_time",max_solver_time);
    rosinterface_handler::setParam(privateNamespace_ + "dump_path",dump_path);
    rosinterface_handler::setParam(privateNamespace_ + "outlier_labels_yaml",outlier_labels_yaml);
    rosinterface_handler::setParam(privateNamespace_ + "tracklets_subscriber_topic",tracklets_subscriber_topic);
    rosinterface_handler::setParam(privateNamespace_ + "tracklets_subscriber_queue_size",tracklets_subscriber_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "camera_info_subscriber_topic",camera_info_subscriber_topic);
    rosinterface_handler::setParam(privateNamespace_ + "camera_info_subscriber_queue_size",camera_info_subscriber_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "active_path_publisher_topic",active_path_publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "active_path_publisher_queue_size",active_path_publisher_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "path_publisher_topic",path_publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "path_publisher_queue_size",path_publisher_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "landmarks_publisher_topic",landmarks_publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "landmarks_publisher_queue_size",landmarks_publisher_queue_size);
    rosinterface_handler::setParam(privateNamespace_ + "planes_publisher_topic",planes_publisher_topic);
    rosinterface_handler::setParam(privateNamespace_ + "planes_publisher_queue_size",planes_publisher_queue_size);
  }

  /// \brief Update configurable parameters.
  ///
  /// \param config  dynamic reconfigure struct
  /// \level ?
  void fromConfig(const Config& config, const uint32_t level = 0){
#ifdef DYNAMIC_RECONFIGURE_FOUND
    if(tracklets_subscriber_topic != config.tracklets_subscriber_topic || tracklets_subscriber_queue_size != config.tracklets_subscriber_queue_size) {
      tracklets_subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, config.tracklets_subscriber_topic), uint32_t(config.tracklets_subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    }
    if(camera_info_subscriber_topic != config.camera_info_subscriber_topic || camera_info_subscriber_queue_size != config.camera_info_subscriber_queue_size) {
      camera_info_subscriber->subscribe(privateNodeHandle_, rosinterface_handler::getTopic(privateNamespace_, config.camera_info_subscriber_topic), uint32_t(config.camera_info_subscriber_queue_size), ros::TransportHints().tcpNoDelay());
    }
    if(active_path_publisher_topic != config.active_path_publisher_topic || active_path_publisher_queue_size != config.active_path_publisher_queue_size) {
      active_path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, config.active_path_publisher_topic), config.active_path_publisher_queue_size);
    }
    if(path_publisher_topic != config.path_publisher_topic || path_publisher_queue_size != config.path_publisher_queue_size) {
      path_publisher = privateNodeHandle_.advertise<nav_msgs::Path>(rosinterface_handler::getTopic(privateNamespace_, config.path_publisher_topic), config.path_publisher_queue_size);
    }
    if(landmarks_publisher_topic != config.landmarks_publisher_topic || landmarks_publisher_queue_size != config.landmarks_publisher_queue_size) {
      landmarks_publisher = privateNodeHandle_.advertise<sensor_msgs::PointCloud2>(rosinterface_handler::getTopic(privateNamespace_, config.landmarks_publisher_topic), config.landmarks_publisher_queue_size);
    }
    if(planes_publisher_topic != config.planes_publisher_topic || planes_publisher_queue_size != config.planes_publisher_queue_size) {
      planes_publisher = privateNodeHandle_.advertise<visualization_msgs::MarkerArray>(rosinterface_handler::getTopic(privateNamespace_, config.planes_publisher_topic), config.planes_publisher_queue_size);
    }
    if(config.verbosity != this->verbosity) {
        rosinterface_handler::setParam(privateNamespace_ + "verbosity", config.verbosity);
        rosinterface_handler::setLoggerLevel(privateNodeHandle_, "verbosity");
    }
    verbosity = config.verbosity;
    prior_vehicle_frame = config.prior_vehicle_frame;
    prior_global_frame = config.prior_global_frame;
    tf_waiting_time = config.tf_waiting_time;
    calib_target_frame_id = config.calib_target_frame_id;
    calib_source_frame_id = config.calib_source_frame_id;
    tf_parent_frame_id = config.tf_parent_frame_id;
    tf_child_frame_id = config.tf_child_frame_id;
    max_number_landmarks_near_bin = config.max_number_landmarks_near_bin;
    max_number_landmarks_middle_bin = config.max_number_landmarks_middle_bin;
    max_number_landmarks_far_bin = config.max_number_landmarks_far_bin;
    time_between_keyframes_sec = config.time_between_keyframes_sec;
    min_median_flow = config.min_median_flow;
    critical_rotation_difference = config.critical_rotation_difference;
    robust_loss_depth_thres = config.robust_loss_depth_thres;
    robust_loss_reprojection_thres = config.robust_loss_reprojection_thres;
    min_number_connecting_landmarks = config.min_number_connecting_landmarks;
    max_size_optimization_window = config.max_size_optimization_window;
    shrubbery_weight = config.shrubbery_weight;
    outlier_rejection_quantile = config.outlier_rejection_quantile;
    outlier_rejection_num_iterations = config.outlier_rejection_num_iterations;
    height_over_ground = config.height_over_ground;
    prior_speed = config.prior_speed;
    show_debug_image = config.show_debug_image;
    max_solver_time = config.max_solver_time;
    dump_path = config.dump_path;
    outlier_labels_yaml = config.outlier_labels_yaml;
    tracklets_subscriber_topic = config.tracklets_subscriber_topic;
    tracklets_subscriber_queue_size = config.tracklets_subscriber_queue_size;
    camera_info_subscriber_topic = config.camera_info_subscriber_topic;
    camera_info_subscriber_queue_size = config.camera_info_subscriber_queue_size;
    active_path_publisher_topic = config.active_path_publisher_topic;
    active_path_publisher_queue_size = config.active_path_publisher_queue_size;
    path_publisher_topic = config.path_publisher_topic;
    path_publisher_queue_size = config.path_publisher_queue_size;
    landmarks_publisher_topic = config.landmarks_publisher_topic;
    landmarks_publisher_queue_size = config.landmarks_publisher_queue_size;
    planes_publisher_topic = config.planes_publisher_topic;
    planes_publisher_queue_size = config.planes_publisher_queue_size;
#else
  ROS_FATAL_STREAM("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
  rosinterface_handler::exit("dynamic_reconfigure was not found during compilation. So fromConfig() is not available. Please recompile with dynamic_reconfigure.");
#endif
  }

  /// \brief Stream operator for printing parameter struct
  friend std::ostream& operator<<(std::ostream& os, const MonoLidarInterface& p)
  {
    os << "[" << p.nodeName_ << "]\nNode " << p.nodeName_ << " has the following parameters:\n"
      << "	" << p.privateNamespace_ << "verbosity:" << p.verbosity << "\n"
      << "	" << p.privateNamespace_ << "verbosity_debug:" << p.verbosity_debug << "\n"
      << "	" << p.privateNamespace_ << "verbosity_info:" << p.verbosity_info << "\n"
      << "	" << p.privateNamespace_ << "verbosity_warning:" << p.verbosity_warning << "\n"
      << "	" << p.privateNamespace_ << "verbosity_error:" << p.verbosity_error << "\n"
      << "	" << p.privateNamespace_ << "verbosity_fatal:" << p.verbosity_fatal << "\n"
      << "	" << p.privateNamespace_ << "diag_pub_topic:" << p.diag_pub_topic << "\n"
      << "	" << p.privateNamespace_ << "diagnostic_updater_name:" << p.diagnostic_updater_name << "\n"
      << "	" << p.privateNamespace_ << "diagnostic_updater_hardware_id:" << p.diagnostic_updater_hardware_id << "\n"
      << "	" << p.privateNamespace_ << "diagnostic_updater_rate:" << p.diagnostic_updater_rate << "\n"
      << "	" << p.privateNamespace_ << "diagnostic_updater_rate_tolerance:" << p.diagnostic_updater_rate_tolerance << "\n"
      << "	" << p.privateNamespace_ << "prior_vehicle_frame:" << p.prior_vehicle_frame << "\n"
      << "	" << p.privateNamespace_ << "prior_global_frame:" << p.prior_global_frame << "\n"
      << "	" << p.privateNamespace_ << "tf_waiting_time:" << p.tf_waiting_time << "\n"
      << "	" << p.privateNamespace_ << "calib_target_frame_id:" << p.calib_target_frame_id << "\n"
      << "	" << p.privateNamespace_ << "calib_source_frame_id:" << p.calib_source_frame_id << "\n"
      << "	" << p.privateNamespace_ << "tf_parent_frame_id:" << p.tf_parent_frame_id << "\n"
      << "	" << p.privateNamespace_ << "tf_child_frame_id:" << p.tf_child_frame_id << "\n"
      << "	" << p.privateNamespace_ << "max_number_landmarks_near_bin:" << p.max_number_landmarks_near_bin << "\n"
      << "	" << p.privateNamespace_ << "max_number_landmarks_middle_bin:" << p.max_number_landmarks_middle_bin << "\n"
      << "	" << p.privateNamespace_ << "max_number_landmarks_far_bin:" << p.max_number_landmarks_far_bin << "\n"
      << "	" << p.privateNamespace_ << "time_between_keyframes_sec:" << p.time_between_keyframes_sec << "\n"
      << "	" << p.privateNamespace_ << "min_median_flow:" << p.min_median_flow << "\n"
      << "	" << p.privateNamespace_ << "critical_rotation_difference:" << p.critical_rotation_difference << "\n"
      << "	" << p.privateNamespace_ << "robust_loss_depth_thres:" << p.robust_loss_depth_thres << "\n"
      << "	" << p.privateNamespace_ << "robust_loss_reprojection_thres:" << p.robust_loss_reprojection_thres << "\n"
      << "	" << p.privateNamespace_ << "min_number_connecting_landmarks:" << p.min_number_connecting_landmarks << "\n"
      << "	" << p.privateNamespace_ << "max_size_optimization_window:" << p.max_size_optimization_window << "\n"
      << "	" << p.privateNamespace_ << "shrubbery_weight:" << p.shrubbery_weight << "\n"
      << "	" << p.privateNamespace_ << "outlier_rejection_quantile:" << p.outlier_rejection_quantile << "\n"
      << "	" << p.privateNamespace_ << "outlier_rejection_num_iterations:" << p.outlier_rejection_num_iterations << "\n"
      << "	" << p.privateNamespace_ << "height_over_ground:" << p.height_over_ground << "\n"
      << "	" << p.privateNamespace_ << "prior_speed:" << p.prior_speed << "\n"
      << "	" << p.privateNamespace_ << "show_debug_image:" << p.show_debug_image << "\n"
      << "	" << p.privateNamespace_ << "max_solver_time:" << p.max_solver_time << "\n"
      << "	" << p.privateNamespace_ << "dump_path:" << p.dump_path << "\n"
      << "	" << p.privateNamespace_ << "outlier_labels_yaml:" << p.outlier_labels_yaml << "\n"
      << "	" << p.privateNamespace_ << "tracklets_subscriber_topic:" << p.tracklets_subscriber_topic << "\n"
      << "	" << p.privateNamespace_ << "tracklets_subscriber_queue_size:" << p.tracklets_subscriber_queue_size << "\n"
      << "	" << p.privateNamespace_ << "camera_info_subscriber_topic:" << p.camera_info_subscriber_topic << "\n"
      << "	" << p.privateNamespace_ << "camera_info_subscriber_queue_size:" << p.camera_info_subscriber_queue_size << "\n"
      << "	" << p.privateNamespace_ << "active_path_publisher_topic:" << p.active_path_publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "active_path_publisher_queue_size:" << p.active_path_publisher_queue_size << "\n"
      << "	" << p.privateNamespace_ << "path_publisher_topic:" << p.path_publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "path_publisher_queue_size:" << p.path_publisher_queue_size << "\n"
      << "	" << p.privateNamespace_ << "landmarks_publisher_topic:" << p.landmarks_publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "landmarks_publisher_queue_size:" << p.landmarks_publisher_queue_size << "\n"
      << "	" << p.privateNamespace_ << "planes_publisher_topic:" << p.planes_publisher_topic << "\n"
      << "	" << p.privateNamespace_ << "planes_publisher_queue_size:" << p.planes_publisher_queue_size << "\n"
;
    return os;
  }

  /// \brief get the node handle that the interface struct uses internally
  ros::NodeHandle getPrivateNodeHandle() {
      return privateNodeHandle_;
  }

  /// \brief returns the name of the node (works in nodelets, too)
  const std::string& nodeName() const {
      return nodeName_;
  }

  /// \brief logs to the debug output. Works also within nodelets. Output is throttled.
  // NOLINTNEXTLINE(readability-function-size)
  inline void logDebug(const std::string& msg) const {
      ROS_DEBUG_STREAM_NAMED(nodeName(), msg);
  }

  /// \brief logs to the debug output. Works also within nodelets. Output is throttled.
  // NOLINTNEXTLINE(readability-function-size)
  inline void logInfo(const std::string& msg) const {
      ROS_INFO_STREAM_THROTTLE_NAMED(5, nodeName(), msg);
  }

  /// \brief logs to the debug output. Works also within nodelets. Output is throttled.
  // NOLINTNEXTLINE(readability-function-size)
  inline void logWarn(const std::string& msg) const {
      ROS_WARN_STREAM_THROTTLE_NAMED(5, nodeName(), msg);
  }

  /// \brief logs to the error output. Works also within nodelets. Output is throttled.
  // NOLINTNEXTLINE(readability-function-size)
  inline void logError(const std::string& msg) const {
      ROS_ERROR_STREAM_THROTTLE_NAMED(5, nodeName(), msg);
  }

  /// \brief logs to the error output. Works also within nodelets. Not throttled! Dont call this in loops!
  // NOLINTNEXTLINE(readability-function-size)
  inline void logErrorDirect(const std::string& msg) const {
      ROS_ERROR_STREAM_NAMED(nodeName(), msg);
  }
private:
  const std::string globalNamespace_;
  const std::string publicNamespace_;
  const std::string privateNamespace_;
  const std::string nodeName_;
  ros::NodeHandle privateNodeHandle_;

public:
  std::string verbosity; /*!< Sets the verbosity for this node */
  static constexpr auto verbosity_debug = "debug"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_info = "info"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_warning = "warning"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_error = "error"; /*!< Constant for enum verbosity */
  static constexpr auto verbosity_fatal = "fatal"; /*!< Constant for enum verbosity */
  std::string diag_pub_topic; /*!< Topicname for diagnostic publisher */
  std::string diagnostic_updater_name; /*!< Name of diagnostic updater. */
  std::string diagnostic_updater_hardware_id; /*!< Identifier for hardware. */
  double diagnostic_updater_rate; /*!< Expected updater frequency */
  double diagnostic_updater_rate_tolerance; /*!< Tolerance with which bounds must be satisfied. */
  std::string prior_vehicle_frame; /*!< frame id of vehicle from prior(used for tf), if empty, internal prior estimation is used. */
  std::string prior_global_frame; /*!< frame id of origin from prior(used for tf) */
  double tf_waiting_time; /*!< time in sec that lookup transform from tf wiats before throwing exception */
  std::string calib_target_frame_id; /*!< target frame id of calibration */
  std::string calib_source_frame_id; /*!< source frame id of calibration */
  std::string tf_parent_frame_id; /*!< parent frame id for tf publishing if empty nothing is published; format: tf2 convention (without / at beginning) */
  std::string tf_child_frame_id; /*!< child frame id for tf publishing if empty nothing is published; format: tf2 convention (without / at beginning) */
  int max_number_landmarks_near_bin; /*!< number of landmarks in near bin by observation delta angle */
  int max_number_landmarks_middle_bin; /*!< number of landmarks in middle bin chosen randomly */
  int max_number_landmarks_far_bin; /*!< number of landmarks in far bin by tracklength */
  double time_between_keyframes_sec; /*!< time in seconds between the keyframes */
  double min_median_flow; /*!< minimum median flow so that frame is accepted as keyframe, especially important for standstill */
  double critical_rotation_difference; /*!< if rotation between last frame and that is bigger keyframe is selected, important for curves */
  double robust_loss_depth_thres; /*!< threshold in meters for robustifier(cauchy loss) for depth diff, from this threshold on measurements are considered as outlier */
  double robust_loss_reprojection_thres; /*!< threshold in pixels for robustifier(huber loss) for reprojection diff, from this threshold on measurements are considered as outlier */
  int min_number_connecting_landmarks; /*!< if number of tracklets that connect first to current frame is smaller than this, we set the end of the optimization window */
  int max_size_optimization_window; /*!< maximum number of keyframes in optimization window. */
  double shrubbery_weight; /*!< Weight assigned to landmarks with label that belongs to vegetation, sky, terrain, ... */
  double outlier_rejection_quantile; /*!< we solve the problem n times with n num_iterations and reject the (1-quantile)*100% most downweighted residuals */
  int outlier_rejection_num_iterations; /*!< we solve the problem n times with n num_iterations and reject the (1-quantile)*100% most downweighted residuals */
  double height_over_ground; /*!< height over ground from vehicle coordinate system, value<-10. means no gp will be added to problem. */
  double prior_speed; /*!< Speed of vehicle in meter per second at beginning, when plane can not be estimated yet. Only used if not external prior given.   */
  bool show_debug_image; /*!< if true show measurements on keyframes in debug image */
  double max_solver_time; /*!< maximum solver time in seconds, use that to make it real time */
  std::string dump_path; /*!< path to dump file */
  std::string outlier_labels_yaml; /*!< path to file for outlier labels */
  std::string tracklets_subscriber_topic; /*!< Topic for tracklets with depth and outlier flags */
  int tracklets_subscriber_queue_size; /*!< Queue size for tracklets with depth and outlier flags */
  std::string camera_info_subscriber_topic; /*!< Topic for camera info for intrinsics */
  int camera_info_subscriber_queue_size; /*!< Queue size for camera info for intrinsics */
  std::string active_path_publisher_topic; /*!< Topic for publish path that is actively optimized in bundle adjustment for plotting */
  int active_path_publisher_queue_size; /*!< Queue size for publish path that is actively optimized in bundle adjustment for plotting */
  std::string path_publisher_topic; /*!< Topic for publish whole path for plotting */
  int path_publisher_queue_size; /*!< Queue size for publish whole path for plotting */
  std::string landmarks_publisher_topic; /*!< Topic for publish landmarks in global frame */
  int landmarks_publisher_queue_size; /*!< Queue size for publish landmarks in global frame */
  std::string planes_publisher_topic; /*!< Topic for publish estiamted local planes in global frame */
  int planes_publisher_queue_size; /*!< Queue size for publish estiamted local planes in global frame */
  ros::Publisher active_path_publisher; /*!< publish path that is actively optimized in bundle adjustment for plotting */
  ros::Publisher path_publisher; /*!< publish whole path for plotting */
  ros::Publisher landmarks_publisher; /*!< publish landmarks in global frame */
  ros::Publisher planes_publisher; /*!< publish estiamted local planes in global frame */
  SubscriberPtr<matches_msg_depth_ros::MatchesMsgWithOutlierFlag> tracklets_subscriber; /*!< tracklets with depth and outlier flags */
  SubscriberPtr<sensor_msgs::CameraInfo> camera_info_subscriber; /*!< camera info for intrinsics */

private:
  /// \brief Issue a warning about missing default parameters.
  void missingParamsWarning(){
    ROS_WARN_STREAM("[" << nodeName_ << "]\nThe following parameters do not have default values and need to be specified:\n"
    );
  }
};

} // namespace keyframe_bundle_adjustment_ros_tool
