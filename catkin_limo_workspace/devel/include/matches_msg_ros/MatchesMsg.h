// Generated by gencpp from file matches_msg_ros/MatchesMsg.msg
// DO NOT EDIT!


#ifndef MATCHES_MSG_ROS_MESSAGE_MATCHESMSG_H
#define MATCHES_MSG_ROS_MESSAGE_MATCHESMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <matches_msg_ros/Tracklet.h>

namespace matches_msg_ros
{
template <class ContainerAllocator>
struct MatchesMsg_
{
  typedef MatchesMsg_<ContainerAllocator> Type;

  MatchesMsg_()
    : header()
    , tracks()
    , stamps()  {
    }
  MatchesMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tracks(_alloc)
    , stamps(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::matches_msg_ros::Tracklet_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::matches_msg_ros::Tracklet_<ContainerAllocator> >::other >  _tracks_type;
  _tracks_type tracks;

   typedef std::vector<ros::Time, typename ContainerAllocator::template rebind<ros::Time>::other >  _stamps_type;
  _stamps_type stamps;





  typedef boost::shared_ptr< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> const> ConstPtr;

}; // struct MatchesMsg_

typedef ::matches_msg_ros::MatchesMsg_<std::allocator<void> > MatchesMsg;

typedef boost::shared_ptr< ::matches_msg_ros::MatchesMsg > MatchesMsgPtr;
typedef boost::shared_ptr< ::matches_msg_ros::MatchesMsg const> MatchesMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::matches_msg_ros::MatchesMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace matches_msg_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'matches_msg_ros': ['/home/dlx/catkin_limo_workspace/src/feature_tracking/matches_msg_ros/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61c0a63c1f713fd8ac913d3b3b378751";
  }

  static const char* value(const ::matches_msg_ros::MatchesMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61c0a63c1f713fd8ULL;
  static const uint64_t static_value2 = 0xac913d3b3b378751ULL;
};

template<class ContainerAllocator>
struct DataType< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "matches_msg_ros/MatchesMsg";
  }

  static const char* value(const ::matches_msg_ros::MatchesMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Separate header for compatibility with current TimeSynchronizer.\n"
"std_msgs/Header header\n"
"\n"
"# Data field Tracklet (Tracklet=vector<float32[2]>)\n"
"Tracklet[] tracks\n"
"\n"
"# save timestamps corresponding to each match:\n"
"# to get stamp corresponding to match number i in tracklet take timestamp i in stamps\n"
"# stamps size is equal to the size of the longest tracklet\n"
"time[] stamps\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: matches_msg_ros/Tracklet\n"
"# no header since shall not be transmitted individually\n"
"# Data field Tracklet\n"
"FeaturePoint[] feature_points\n"
"\n"
"# id given by tracker\n"
"uint64 id\n"
"\n"
"# age of the tracklet\n"
"uint16 age\n"
"\n"
"================================================================================\n"
"MSG: matches_msg_ros/FeaturePoint\n"
"# no header because shall not be send alone\n"
"# Data field Matches (as tracklets, el.first == u el.second == v)\n"
"float32 u\n"
"float32 v\n"
;
  }

  static const char* value(const ::matches_msg_ros::MatchesMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tracks);
      stream.next(m.stamps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MatchesMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::matches_msg_ros::MatchesMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::matches_msg_ros::MatchesMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tracks[]" << std::endl;
    for (size_t i = 0; i < v.tracks.size(); ++i)
    {
      s << indent << "  tracks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::matches_msg_ros::Tracklet_<ContainerAllocator> >::stream(s, indent + "    ", v.tracks[i]);
    }
    s << indent << "stamps[]" << std::endl;
    for (size_t i = 0; i < v.stamps.size(); ++i)
    {
      s << indent << "  stamps[" << i << "]: ";
      Printer<ros::Time>::stream(s, indent + "  ", v.stamps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MATCHES_MSG_ROS_MESSAGE_MATCHESMSG_H
