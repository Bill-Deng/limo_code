;; Auto-generated. Do not edit!


(when (boundp 'matches_msg_depth_ros::TrackletWithOutlierFlag)
  (if (not (find-package "MATCHES_MSG_DEPTH_ROS"))
    (make-package "MATCHES_MSG_DEPTH_ROS"))
  (shadow 'TrackletWithOutlierFlag (find-package "MATCHES_MSG_DEPTH_ROS")))
(unless (find-package "MATCHES_MSG_DEPTH_ROS::TRACKLETWITHOUTLIERFLAG")
  (make-package "MATCHES_MSG_DEPTH_ROS::TRACKLETWITHOUTLIERFLAG"))

(in-package "ROS")
;;//! \htmlinclude TrackletWithOutlierFlag.msg.html


(defclass matches_msg_depth_ros::TrackletWithOutlierFlag
  :super ros::object
  :slots (_feature_points _is_outlier _error _id _age _label ))

(defmethod matches_msg_depth_ros::TrackletWithOutlierFlag
  (:init
   (&key
    ((:feature_points __feature_points) (let (r) (dotimes (i 0) (push (instance matches_msg_depth_ros::FeaturePoint :init) r)) r))
    ((:is_outlier __is_outlier) nil)
    ((:error __error) 0.0)
    ((:id __id) 0)
    ((:age __age) 0)
    ((:label __label) 0)
    )
   (send-super :init)
   (setq _feature_points __feature_points)
   (setq _is_outlier __is_outlier)
   (setq _error (float __error))
   (setq _id (round __id))
   (setq _age (round __age))
   (setq _label (round __label))
   self)
  (:feature_points
   (&rest __feature_points)
   (if (keywordp (car __feature_points))
       (send* _feature_points __feature_points)
     (progn
       (if __feature_points (setq _feature_points (car __feature_points)))
       _feature_points)))
  (:is_outlier
   (&optional __is_outlier)
   (if __is_outlier (setq _is_outlier __is_outlier)) _is_outlier)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; matches_msg_depth_ros/FeaturePoint[] _feature_points
    (apply #'+ (send-all _feature_points :serialization-length)) 4
    ;; bool _is_outlier
    1
    ;; float32 _error
    4
    ;; uint64 _id
    8
    ;; uint16 _age
    2
    ;; int16 _label
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; matches_msg_depth_ros/FeaturePoint[] _feature_points
     (write-long (length _feature_points) s)
     (dolist (elem _feature_points)
       (send elem :serialize s)
       )
     ;; bool _is_outlier
       (if _is_outlier (write-byte -1 s) (write-byte 0 s))
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; uint16 _age
       (write-word _age s)
     ;; int16 _label
       (write-word _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; matches_msg_depth_ros/FeaturePoint[] _feature_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_points (let (r) (dotimes (i n) (push (instance matches_msg_depth_ros::FeaturePoint :init) r)) r))
     (dolist (elem- _feature_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_outlier
     (setq _is_outlier (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _label
     (setq _label (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get matches_msg_depth_ros::TrackletWithOutlierFlag :md5sum-) "9af38908a880df2b1cee0c7d2671c24a")
(setf (get matches_msg_depth_ros::TrackletWithOutlierFlag :datatype-) "matches_msg_depth_ros/TrackletWithOutlierFlag")
(setf (get matches_msg_depth_ros::TrackletWithOutlierFlag :definition-)
      "
# no header since shall not be transmitted individually
# Data field Tracklet
FeaturePoint[] feature_points

# flag if this tracklet is an outlier or not, default is false
bool is_outlier

# field for saving error, f.e. loss from optimization, the higher the value the higher the probability that it is an outlier, typically this is a relative value to the other errors
float32 error

# id given by tracker
uint64 id

# age of the tracklet
uint16 age

# label for the tracklet, LUT has to be provided by the user
int16 label

================================================================================
MSG: matches_msg_depth_ros/FeaturePoint
# no header because shall not be send alone
# Data field Matches with depth d in m, negative value means no depth was estimated
float32 u
float32 v
float32 d

")



(provide :matches_msg_depth_ros/TrackletWithOutlierFlag "9af38908a880df2b1cee0c7d2671c24a")


