# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from matches_msg_ros/Tracklet.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import matches_msg_ros.msg

class Tracklet(genpy.Message):
  _md5sum = "2be181c14fc859dd60775fcbbb7b40d3"
  _type = "matches_msg_ros/Tracklet"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# no header since shall not be transmitted individually
# Data field Tracklet
FeaturePoint[] feature_points

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
"""
  __slots__ = ['feature_points','id','age']
  _slot_types = ['matches_msg_ros/FeaturePoint[]','uint64','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       feature_points,id,age

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Tracklet, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.feature_points is None:
        self.feature_points = []
      if self.id is None:
        self.id = 0
      if self.age is None:
        self.age = 0
    else:
      self.feature_points = []
      self.id = 0
      self.age = 0

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
      length = len(self.feature_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.feature_points:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.u, _x.v))
      _x = self
      buff.write(_get_struct_QH().pack(_x.id, _x.age))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.feature_points is None:
        self.feature_points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feature_points = []
      for i in range(0, length):
        val1 = matches_msg_ros.msg.FeaturePoint()
        _x = val1
        start = end
        end += 8
        (_x.u, _x.v,) = _get_struct_2f().unpack(str[start:end])
        self.feature_points.append(val1)
      _x = self
      start = end
      end += 10
      (_x.id, _x.age,) = _get_struct_QH().unpack(str[start:end])
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
      length = len(self.feature_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.feature_points:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.u, _x.v))
      _x = self
      buff.write(_get_struct_QH().pack(_x.id, _x.age))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.feature_points is None:
        self.feature_points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.feature_points = []
      for i in range(0, length):
        val1 = matches_msg_ros.msg.FeaturePoint()
        _x = val1
        start = end
        end += 8
        (_x.u, _x.v,) = _get_struct_2f().unpack(str[start:end])
        self.feature_points.append(val1)
      _x = self
      start = end
      end += 10
      (_x.id, _x.age,) = _get_struct_QH().unpack(str[start:end])
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
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f