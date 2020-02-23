;; Auto-generated. Do not edit!


(when (boundp 'matches_msg_depth_ros::FeaturePoint)
  (if (not (find-package "MATCHES_MSG_DEPTH_ROS"))
    (make-package "MATCHES_MSG_DEPTH_ROS"))
  (shadow 'FeaturePoint (find-package "MATCHES_MSG_DEPTH_ROS")))
(unless (find-package "MATCHES_MSG_DEPTH_ROS::FEATUREPOINT")
  (make-package "MATCHES_MSG_DEPTH_ROS::FEATUREPOINT"))

(in-package "ROS")
;;//! \htmlinclude FeaturePoint.msg.html


(defclass matches_msg_depth_ros::FeaturePoint
  :super ros::object
  :slots (_u _v _d ))

(defmethod matches_msg_depth_ros::FeaturePoint
  (:init
   (&key
    ((:u __u) 0.0)
    ((:v __v) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _u (float __u))
   (setq _v (float __v))
   (setq _d (float __d))
   self)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float32 _u
    4
    ;; float32 _v
    4
    ;; float32 _d
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _u
       (sys::poke _u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _u
     (setq _u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get matches_msg_depth_ros::FeaturePoint :md5sum-) "b2beffcde7c18cb4f3c7beb468d9a001")
(setf (get matches_msg_depth_ros::FeaturePoint :datatype-) "matches_msg_depth_ros/FeaturePoint")
(setf (get matches_msg_depth_ros::FeaturePoint :definition-)
      "# no header because shall not be send alone
# Data field Matches with depth d in m, negative value means no depth was estimated
float32 u
float32 v
float32 d

")



(provide :matches_msg_depth_ros/FeaturePoint "b2beffcde7c18cb4f3c7beb468d9a001")


