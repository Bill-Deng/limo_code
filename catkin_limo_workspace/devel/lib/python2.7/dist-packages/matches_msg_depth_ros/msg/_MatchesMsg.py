# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from matches_msg_depth_ros/MatchesMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import matches_msg_depth_ros.msg
import genpy
import std_msgs.msg

class MatchesMsg(genpy.Message):
  _md5sum = "7978b81eb316866114a1ed42f5d90280"
  _type = "matches_msg_depth_ros/MatchesMsg"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Separate header for compatibility with current TimeSynchronizer.
std_msgs/Header header

# Data field Tracklet (Tracklet=vector<float32[3]>)
Tracklet[] tracks

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
MSG: matches_msg_depth_ros/Tracklet
# no header since shall not be transmitted individually
# Data field Tracklet
FeaturePoint[] feature_points

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
"""
  __slots__ = ['header','tracks','stamps']
  _slot_types = ['std_msgs/Header','matches_msg_depth_ros/Tracklet[]','time[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tracks,stamps

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MatchesMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tracks is None:
        self.tracks = []
      if self.stamps is None:
        self.stamps = []
    else:
      self.header = std_msgs.msg.Header()
      self.tracks = []
      self.stamps = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.tracks)
      buff.write(_struct_I.pack(length))
      for val1 in self.tracks:
        length = len(val1.feature_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.feature_points:
          _x = val2
          buff.write(_get_struct_3f().pack(_x.u, _x.v, _x.d))
        _x = val1
        buff.write(_get_struct_QH().pack(_x.id, _x.age))
      length = len(self.stamps)
      buff.write(_struct_I.pack(length))
      for val1 in self.stamps:
        _x = val1
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tracks is None:
        self.tracks = None
      if self.stamps is None:
        self.stamps = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tracks = []
      for i in range(0, length):
        val1 = matches_msg_depth_ros.msg.Tracklet()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.feature_points = []
        for i in range(0, length):
          val2 = matches_msg_depth_ros.msg.FeaturePoint()
          _x = val2
          start = end
          end += 12
          (_x.u, _x.v, _x.d,) = _get_struct_3f().unpack(str[start:end])
          val1.feature_points.append(val2)
        _x = val1
        start = end
        end += 10
        (_x.id, _x.age,) = _get_struct_QH().unpack(str[start:end])
        self.tracks.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stamps = []
      for i in range(0, length):
        val1 = genpy.Time()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        self.stamps.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.tracks)
      buff.write(_struct_I.pack(length))
      for val1 in self.tracks:
        length = len(val1.feature_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.feature_points:
          _x = val2
          buff.write(_get_struct_3f().pack(_x.u, _x.v, _x.d))
        _x = val1
        buff.write(_get_struct_QH().pack(_x.id, _x.age))
      length = len(self.stamps)
      buff.write(_struct_I.pack(length))
      for val1 in self.stamps:
        _x = val1
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tracks is None:
        self.tracks = None
      if self.stamps is None:
        self.stamps = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.tracks = []
      for i in range(0, length):
        val1 = matches_msg_depth_ros.msg.Tracklet()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.feature_points = []
        for i in range(0, length):
          val2 = matches_msg_depth_ros.msg.FeaturePoint()
          _x = val2
          start = end
          end += 12
          (_x.u, _x.v, _x.d,) = _get_struct_3f().unpack(str[start:end])
          val1.feature_points.append(val2)
        _x = val1
        start = end
        end += 10
        (_x.id, _x.age,) = _get_struct_QH().unpack(str[start:end])
        self.tracks.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.stamps = []
      for i in range(0, length):
        val1 = genpy.Time()
        _x = val1
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        self.stamps.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_QH = None
def _get_struct_QH():
    global _struct_QH
    if _struct_QH is None:
        _struct_QH = struct.Struct("<QH")
    return _struct_QH
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
