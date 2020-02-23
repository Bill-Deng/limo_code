;; Auto-generated. Do not edit!


(when (boundp 'matches_msg_depth_ros::MatchesMsgWithInlierFlag)
  (if (not (find-package "MATCHES_MSG_DEPTH_ROS"))
    (make-package "MATCHES_MSG_DEPTH_ROS"))
  (shadow 'MatchesMsgWithInlierFlag (find-package "MATCHES_MSG_DEPTH_ROS")))
(unless (find-package "MATCHES_MSG_DEPTH_ROS::MATCHESMSGWITHINLIERFLAG")
  (make-package "MATCHES_MSG_DEPTH_ROS::MATCHESMSGWITHINLIERFLAG"))

(in-package "ROS")
;;//! \htmlinclude MatchesMsgWithInlierFlag.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass matches_msg_depth_ros::MatchesMsgWithInlierFlag
  :super ros::object
  :slots (_header _tracks _stamps ))

(defmethod matches_msg_depth_ros::MatchesMsgWithInlierFlag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracks __tracks) (let (r) (dotimes (i 0) (push (instance matches_msg_depth_ros::TrackletWithInlierFlag :init) r)) r))
    ((:stamps __stamps) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracks __tracks)
   (setq _stamps __stamps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracks
   (&rest __tracks)
   (if (keywordp (car __tracks))
       (send* _tracks __tracks)
     (progn
       (if __tracks (setq _tracks (car __tracks)))
       _tracks)))
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; matches_msg_depth_ros/TrackletWithInlierFlag[] _tracks
    (apply #'+ (send-all _tracks :serialization-length)) 4
    ;; time[] _stamps
    (* 8    (length _stamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; matches_msg_depth_ros/TrackletWithInlierFlag[] _tracks
     (write-long (length _tracks) s)
     (dolist (elem _tracks)
       (send elem :serialize s)
       )
     ;; time[] _stamps
     (write-long (length _stamps) s)
     (dotimes (i (length _stamps))
       (write-long (send (elt _stamps i) :sec) s) (write-long (send (elt _stamps i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; matches_msg_depth_ros/TrackletWithInlierFlag[] _tracks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracks (let (r) (dotimes (i n) (push (instance matches_msg_depth_ros::TrackletWithInlierFlag :init) r)) r))
     (dolist (elem- _tracks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; time[] _stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stamps (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _stamps)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get matches_msg_depth_ros::MatchesMsgWithInlierFlag :md5sum-) "dfa650e1428e434367af8c618c20dd07")
(setf (get matches_msg_depth_ros::MatchesMsgWithInlierFlag :datatype-) "matches_msg_depth_ros/MatchesMsgWithInlierFlag")
(setf (get matches_msg_depth_ros::MatchesMsgWithInlierFlag :definition-)
      "# Separate header for compatibility with current TimeSynchronizer.
std_msgs/Header header

# Data field Tracklet (Tracklet=vector<float32[2]>)
TrackletWithInlierFlag[] tracks

# save timestamps corresponding to each match:
# to get stamp corresponding to match number i in tracklet take timestamp i in stamps
# stamps size is equal to the size of the longest tracklet
time[] stamps


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: matches_msg_depth_ros/TrackletWithInlierFlag
# no header since shall not be transmitted individually
# Data field Tracklet
FeaturePoint[] feature_points

bool is_inlier

# id given by tracker
uint64 id
uint16 age

================================================================================
MSG: matches_msg_depth_ros/FeaturePoint
# no header because shall not be send alone
# Data field Matches with depth d in m, negative value means no depth was estimated
float32 u
float32 v
float32 d

")



(provide :matches_msg_depth_ros/MatchesMsgWithInlierFlag "dfa650e1428e434367af8c618c20dd07")


