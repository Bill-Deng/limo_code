; Auto-generated. Do not edit!


(cl:in-package matches_msg_depth_ros-msg)


;//! \htmlinclude MatchesMsg.msg.html

(cl:defclass <MatchesMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracks
    :reader tracks
    :initarg :tracks
    :type (cl:vector matches_msg_depth_ros-msg:Tracklet)
   :initform (cl:make-array 0 :element-type 'matches_msg_depth_ros-msg:Tracklet :initial-element (cl:make-instance 'matches_msg_depth_ros-msg:Tracklet)))
   (stamps
    :reader stamps
    :initarg :stamps
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass MatchesMsg (<MatchesMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchesMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchesMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matches_msg_depth_ros-msg:<MatchesMsg> is deprecated: use matches_msg_depth_ros-msg:MatchesMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MatchesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:header-val is deprecated.  Use matches_msg_depth_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracks-val :lambda-list '(m))
(cl:defmethod tracks-val ((m <MatchesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:tracks-val is deprecated.  Use matches_msg_depth_ros-msg:tracks instead.")
  (tracks m))

(cl:ensure-generic-function 'stamps-val :lambda-list '(m))
(cl:defmethod stamps-val ((m <MatchesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:stamps-val is deprecated.  Use matches_msg_depth_ros-msg:stamps instead.")
  (stamps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchesMsg>) ostream)
  "Serializes a message object of type '<MatchesMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stamps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'stamps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchesMsg>) istream)
  "Deserializes a message object of type '<MatchesMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'matches_msg_depth_ros-msg:Tracklet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stamps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stamps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchesMsg>)))
  "Returns string type for a message object of type '<MatchesMsg>"
  "matches_msg_depth_ros/MatchesMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchesMsg)))
  "Returns string type for a message object of type 'MatchesMsg"
  "matches_msg_depth_ros/MatchesMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchesMsg>)))
  "Returns md5sum for a message object of type '<MatchesMsg>"
  "7978b81eb316866114a1ed42f5d90280")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchesMsg)))
  "Returns md5sum for a message object of type 'MatchesMsg"
  "7978b81eb316866114a1ed42f5d90280")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchesMsg>)))
  "Returns full string definition for message of type '<MatchesMsg>"
  (cl:format cl:nil "# Separate header for compatibility with current TimeSynchronizer.~%std_msgs/Header header~%~%# Data field Tracklet (Tracklet=vector<float32[3]>)~%Tracklet[] tracks~%~%# save timestamps corresponding to each match:~%# to get stamp corresponding to match number i in tracklet take timestamp i in stamps~%# stamps size is equal to the size of the longest tracklet~%time[] stamps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: matches_msg_depth_ros/Tracklet~%# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# id given by tracker~%uint64 id~%uint16 age~%~%================================================================================~%MSG: matches_msg_depth_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchesMsg)))
  "Returns full string definition for message of type 'MatchesMsg"
  (cl:format cl:nil "# Separate header for compatibility with current TimeSynchronizer.~%std_msgs/Header header~%~%# Data field Tracklet (Tracklet=vector<float32[3]>)~%Tracklet[] tracks~%~%# save timestamps corresponding to each match:~%# to get stamp corresponding to match number i in tracklet take timestamp i in stamps~%# stamps size is equal to the size of the longest tracklet~%time[] stamps~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: matches_msg_depth_ros/Tracklet~%# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# id given by tracker~%uint64 id~%uint16 age~%~%================================================================================~%MSG: matches_msg_depth_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchesMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stamps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchesMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchesMsg
    (cl:cons ':header (header msg))
    (cl:cons ':tracks (tracks msg))
    (cl:cons ':stamps (stamps msg))
))
