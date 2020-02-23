; Auto-generated. Do not edit!


(cl:in-package matches_msg_depth_ros-msg)


;//! \htmlinclude Tracklet.msg.html

(cl:defclass <Tracklet> (roslisp-msg-protocol:ros-message)
  ((feature_points
    :reader feature_points
    :initarg :feature_points
    :type (cl:vector matches_msg_depth_ros-msg:FeaturePoint)
   :initform (cl:make-array 0 :element-type 'matches_msg_depth_ros-msg:FeaturePoint :initial-element (cl:make-instance 'matches_msg_depth_ros-msg:FeaturePoint)))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tracklet (<Tracklet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tracklet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tracklet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matches_msg_depth_ros-msg:<Tracklet> is deprecated: use matches_msg_depth_ros-msg:Tracklet instead.")))

(cl:ensure-generic-function 'feature_points-val :lambda-list '(m))
(cl:defmethod feature_points-val ((m <Tracklet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:feature_points-val is deprecated.  Use matches_msg_depth_ros-msg:feature_points instead.")
  (feature_points m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Tracklet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:id-val is deprecated.  Use matches_msg_depth_ros-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Tracklet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:age-val is deprecated.  Use matches_msg_depth_ros-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tracklet>) ostream)
  "Serializes a message object of type '<Tracklet>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tracklet>) istream)
  "Deserializes a message object of type '<Tracklet>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'matches_msg_depth_ros-msg:FeaturePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tracklet>)))
  "Returns string type for a message object of type '<Tracklet>"
  "matches_msg_depth_ros/Tracklet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tracklet)))
  "Returns string type for a message object of type 'Tracklet"
  "matches_msg_depth_ros/Tracklet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tracklet>)))
  "Returns md5sum for a message object of type '<Tracklet>"
  "34e0ff56b8db66c5bf7d381d41f46fff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tracklet)))
  "Returns md5sum for a message object of type 'Tracklet"
  "34e0ff56b8db66c5bf7d381d41f46fff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tracklet>)))
  "Returns full string definition for message of type '<Tracklet>"
  (cl:format cl:nil "# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# id given by tracker~%uint64 id~%uint16 age~%~%================================================================================~%MSG: matches_msg_depth_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tracklet)))
  "Returns full string definition for message of type 'Tracklet"
  (cl:format cl:nil "# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# id given by tracker~%uint64 id~%uint16 age~%~%================================================================================~%MSG: matches_msg_depth_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tracklet>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tracklet>))
  "Converts a ROS message object to a list"
  (cl:list 'Tracklet
    (cl:cons ':feature_points (feature_points msg))
    (cl:cons ':id (id msg))
    (cl:cons ':age (age msg))
))
