
(cl:in-package :asdf)

(defsystem "matches_msg_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FeaturePoint" :depends-on ("_package_FeaturePoint"))
    (:file "_package_FeaturePoint" :depends-on ("_package"))
    (:file "MatchesMsg" :depends-on ("_package_MatchesMsg"))
    (:file "_package_MatchesMsg" :depends-on ("_package"))
    (:file "MatchesMsgWithInlierFlag" :depends-on ("_package_MatchesMsgWithInlierFlag"))
    (:file "_package_MatchesMsgWithInlierFlag" :depends-on ("_package"))
    (:file "MatchesMsgWithOutlierFlag" :depends-on ("_package_MatchesMsgWithOutlierFlag"))
    (:file "_package_MatchesMsgWithOutlierFlag" :depends-on ("_package"))
    (:file "Tracklet" :depends-on ("_package_Tracklet"))
    (:file "_package_Tracklet" :depends-on ("_package"))
    (:file "TrackletWithInlierFlag" :depends-on ("_package_TrackletWithInlierFlag"))
    (:file "_package_TrackletWithInlierFlag" :depends-on ("_package"))
    (:file "TrackletWithOutlierFlag" :depends-on ("_package_TrackletWithOutlierFlag"))
    (:file "_package_TrackletWithOutlierFlag" :depends-on ("_package"))
  ))