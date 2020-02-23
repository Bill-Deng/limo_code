// Auto-generated. Do not edit!

// (in-package matches_msg_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tracklet = require('./Tracklet.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MatchesMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracks = null;
      this.stamps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracks')) {
        this.tracks = initObj.tracks
      }
      else {
        this.tracks = [];
      }
      if (initObj.hasOwnProperty('stamps')) {
        this.stamps = initObj.stamps
      }
      else {
        this.stamps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MatchesMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracks]
    // Serialize the length for message field [tracks]
    bufferOffset = _serializer.uint32(obj.tracks.length, buffer, bufferOffset);
    obj.tracks.forEach((val) => {
      bufferOffset = Tracklet.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stamps]
    bufferOffset = _arraySerializer.time(obj.stamps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MatchesMsg
    let len;
    let data = new MatchesMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracks]
    // Deserialize array length for message field [tracks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracks[i] = Tracklet.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stamps]
    data.stamps = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tracks.forEach((val) => {
      length += Tracklet.getMessageSize(val);
    });
    length += 8 * object.stamps.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'matches_msg_ros/MatchesMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c0a63c1f713fd8ac913d3b3b378751';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Separate header for compatibility with current TimeSynchronizer.
    std_msgs/Header header
    
    # Data field Tracklet (Tracklet=vector<float32[2]>)
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
    MSG: matches_msg_ros/Tracklet
    # no header since shall not be transmitted individually
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MatchesMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracks !== undefined) {
      resolved.tracks = new Array(msg.tracks.length);
      for (let i = 0; i < resolved.tracks.length; ++i) {
        resolved.tracks[i] = Tracklet.Resolve(msg.tracks[i]);
      }
    }
    else {
      resolved.tracks = []
    }

    if (msg.stamps !== undefined) {
      resolved.stamps = msg.stamps;
    }
    else {
      resolved.stamps = []
    }

    return resolved;
    }
};

module.exports = MatchesMsg;
