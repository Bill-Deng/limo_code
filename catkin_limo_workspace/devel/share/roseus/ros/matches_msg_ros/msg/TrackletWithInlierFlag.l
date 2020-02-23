;; Auto-generated. Do not edit!


(when (boundp 'matches_msg_ros::TrackletWithInlierFlag)
  (if (not (find-package "MATCHES_MSG_ROS"))
    (make-package "MATCHES_MSG_ROS"))
  (shadow 'TrackletWithInlierFlag (find-package "MATCHES_MSG_ROS")))
(unless (find-package "MATCHES_MSG_ROS::TRACKLETWITHINLIERFLAG")
  (make-package "MATCHES_MSG_ROS::TRACKLETWITHINLIERFLAG"))

(in-package "ROS")
;;//! \htmlinclude TrackletWithInlierFlag.msg.html


(defclass matches_msg_ros::TrackletWithInlierFlag
  :super ros::object
  :slots (_feature_points _is_inlier _id _age ))

(defmethod matches_msg_ros::TrackletWithInlierFlag
  (:init
   (&key
    ((:feature_points __feature_points) (let (r) (dotimes (i 0) (push (instance matches_msg_ros::FeaturePoint :init) r)) r))
    ((:is_inlier __is_inlier) nil)
    ((:id __id) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _feature_points __feature_points)
   (setq _is_inlier __is_inlier)
   (setq _id (round __id))
   (setq _age (round __age))
   self)
  (:feature_points
   (&rest __feature_points)
   (if (keywordp (car __feature_points))
       (send* _feature_points __feature_points)
     (progn
       (if __feature_points (setq _feature_points (car __feature_points)))
       _feature_points)))
  (:is_inlier
   (&optional __is_inlier)
   (if __is_inlier (setq _is_inlier __is_inlier)) _is_inlier)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; matches_msg_ros/FeaturePoint[] _feature_points
    (apply #'+ (send-all _feature_points :serialization-length)) 4
    ;; bool _is_inlier
    1
    ;; uint64 _id
    8
    ;; uint16 _age
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; matches_msg_ros/FeaturePoint[] _feature_points
     (write-long (length _feature_points) s)
     (dolist (elem _feature_points)
       (send elem :serialize s)
       )
     ;; bool _is_inlier
       (if _is_inlier (write-byte -1 s) (write-byte 0 s))
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; matches_msg_ros/FeaturePoint[] _feature_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_points (let (r) (dotimes (i n) (push (instance matches_msg_ros::FeaturePoint :init) r)) r))
     (dolist (elem- _feature_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_inlier
     (setq _is_inlier (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;;
   self)
  )

(setf (get matches_msg_ros::TrackletWithInlierFlag :md5sum-) "85dd8cca0ff51d3450ef97831fce3e89")
(setf (get matches_msg_ros::TrackletWithInlierFlag :datatype-) "matches_msg_ros/TrackletWithInlierFlag")
(setf (get matches_msg_ros::TrackletWithInlierFlag :definition-)
      "# no header since shall not be transmitted individually
# Data field Tracklet
FeaturePoint[] feature_points

# flag if is inlier
bool is_inlier

# id given by tracker
uint64 id

# age of the tracklet
uint16 age


================================================================================
MSG: matches_msg_ros/FeaturePoint
# no header because shall not be send alone
# Data field Matches (as tracklets, el.first == u el.second == v)
float32 u
float32 v

")



(provide :matches_msg_ros/TrackletWithInlierFlag "85dd8cca0ff51d3450ef97831fce3e89")


