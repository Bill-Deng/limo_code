; Auto-generated. Do not edit!


(cl:in-package matches_msg_ros-msg)


;//! \htmlinclude TrackletWithOutlierFlag.msg.html

(cl:defclass <TrackletWithOutlierFlag> (roslisp-msg-protocol:ros-message)
  ((feature_points
    :reader feature_points
    :initarg :feature_points
    :type (cl:vector matches_msg_ros-msg:FeaturePoint)
   :initform (cl:make-array 0 :element-type 'matches_msg_ros-msg:FeaturePoint :initial-element (cl:make-instance 'matches_msg_ros-msg:FeaturePoint)))
   (is_outlier
    :reader is_outlier
    :initarg :is_outlier
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackletWithOutlierFlag (<TrackletWithOutlierFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackletWithOutlierFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackletWithOutlierFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matches_msg_ros-msg:<TrackletWithOutlierFlag> is deprecated: use matches_msg_ros-msg:TrackletWithOutlierFlag instead.")))

(cl:ensure-generic-function 'feature_points-val :lambda-list '(m))
(cl:defmethod feature_points-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:feature_points-val is deprecated.  Use matches_msg_ros-msg:feature_points instead.")
  (feature_points m))

(cl:ensure-generic-function 'is_outlier-val :lambda-list '(m))
(cl:defmethod is_outlier-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:is_outlier-val is deprecated.  Use matches_msg_ros-msg:is_outlier instead.")
  (is_outlier m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:error-val is deprecated.  Use matches_msg_ros-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:id-val is deprecated.  Use matches_msg_ros-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:age-val is deprecated.  Use matches_msg_ros-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <TrackletWithOutlierFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matches_msg_ros-msg:label-val is deprecated.  Use matches_msg_ros-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackletWithOutlierFlag>) ostream)
  "Serializes a message object of type '<TrackletWithOutlierFlag>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_outlier) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:let* ((signed (cl:slot-value msg 'label)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackletWithOutlierFlag>) istream)
  "Deserializes a message object of type '<TrackletWithOutlierFlag>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'matches_msg_ros-msg:FeaturePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_outlier) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackletWithOutlierFlag>)))
  "Returns string type for a message object of type '<TrackletWithOutlierFlag>"
  "matches_msg_ros/TrackletWithOutlierFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackletWithOutlierFlag)))
  "Returns string type for a message object of type 'TrackletWithOutlierFlag"
  "matches_msg_ros/TrackletWithOutlierFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackletWithOutlierFlag>)))
  "Returns md5sum for a message object of type '<TrackletWithOutlierFlag>"
  "b0850b41fae63a3817f19ea41f0d70c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackletWithOutlierFlag)))
  "Returns md5sum for a message object of type 'TrackletWithOutlierFlag"
  "b0850b41fae63a3817f19ea41f0d70c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackletWithOutlierFlag>)))
  "Returns full string definition for message of type '<TrackletWithOutlierFlag>"
  (cl:format cl:nil "~%# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# flag if this tracklet is an outlier or not, default is false~%bool is_outlier~%~%# field for saving error, f.e. loss from optimization, the higher the value the higher the probability that it is an outlier, typically this is a relative value to the other errors~%float32 error~%~%# id given by tracker~%uint64 id~%~%# age of the tracklet~%uint16 age~%~%# label for the tracklet, LUT has to be provided by the user~%int16 label~%~%================================================================================~%MSG: matches_msg_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches (as tracklets, el.first == u el.second == v)~%float32 u~%float32 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackletWithOutlierFlag)))
  "Returns full string definition for message of type 'TrackletWithOutlierFlag"
  (cl:format cl:nil "~%# no header since shall not be transmitted individually~%# Data field Tracklet~%FeaturePoint[] feature_points~%~%# flag if this tracklet is an outlier or not, default is false~%bool is_outlier~%~%# field for saving error, f.e. loss from optimization, the higher the value the higher the probability that it is an outlier, typically this is a relative value to the other errors~%float32 error~%~%# id given by tracker~%uint64 id~%~%# age of the tracklet~%uint16 age~%~%# label for the tracklet, LUT has to be provided by the user~%int16 label~%~%================================================================================~%MSG: matches_msg_ros/FeaturePoint~%# no header because shall not be send alone~%# Data field Matches (as tracklets, el.first == u el.second == v)~%float32 u~%float32 v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackletWithOutlierFlag>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     8
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackletWithOutlierFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackletWithOutlierFlag
    (cl:cons ':feature_points (feature_points msg))
    (cl:cons ':is_outlier (is_outlier msg))
    (cl:cons ':error (error msg))
    (cl:cons ':id (id msg))
    (cl:cons ':age (age msg))
    (cl:cons ':label (label msg))
))
