; Auto-generated. Do not edit!


(cl:in-package matches_msg_depth_ros-msg)


;//! \htmlinclude FeaturePoint.msg.html

(cl:defclass <FeaturePoint> (roslisp-msg-protocol:ros-message)
  ((u
    :reader u
    :initarg :u
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0))
)

(cl:defclass FeaturePoint (<FeaturePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeaturePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeaturePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matches_msg_depth_ros-msg:<FeaturePoint> is deprecated: use matches_msg_depth_ros-msg:FeaturePoint instead.")))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <FeaturePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:u-val is deprecated.  Use matches_msg_depth_ros-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <FeaturePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:v-val is deprecated.  Use matches_msg_depth_ros-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <FeaturePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_depth_ros-msg:d-val is deprecated.  Use matches_msg_depth_ros-msg:d instead.")
  (d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeaturePoint>) ostream)
  "Serializes a message object of type '<FeaturePoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'u))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeaturePoint>) istream)
  "Deserializes a message object of type '<FeaturePoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'u) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeaturePoint>)))
  "Returns string type for a message object of type '<FeaturePoint>"
  "matches_msg_depth_ros/FeaturePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeaturePoint)))
  "Returns string type for a message object of type 'FeaturePoint"
  "matches_msg_depth_ros/FeaturePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeaturePoint>)))
  "Returns md5sum for a message object of type '<FeaturePoint>"
  "b2beffcde7c18cb4f3c7beb468d9a001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeaturePoint)))
  "Returns md5sum for a message object of type 'FeaturePoint"
  "b2beffcde7c18cb4f3c7beb468d9a001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeaturePoint>)))
  "Returns full string definition for message of type '<FeaturePoint>"
  (cl:format cl:nil "# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeaturePoint)))
  "Returns full string definition for message of type 'FeaturePoint"
  (cl:format cl:nil "# no header because shall not be send alone~%# Data field Matches with depth d in m, negative value means no depth was estimated~%float32 u~%float32 v~%float32 d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeaturePoint>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeaturePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'FeaturePoint
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':d (d msg))
))
