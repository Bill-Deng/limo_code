// Auto-generated. Do not edit!

// (in-package matches_msg_depth_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FeaturePoint = require('./FeaturePoint.js');

//-----------------------------------------------------------

class TrackletWithInlierFlag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feature_points = null;
      this.is_inlier = null;
      this.id = null;
      this.age = null;
    }
    else {
      if (initObj.hasOwnProperty('feature_points')) {
        this.feature_points = initObj.feature_points
      }
      else {
        this.feature_points = [];
      }
      if (initObj.hasOwnProperty('is_inlier')) {
        this.is_inlier = initObj.is_inlier
      }
      else {
        this.is_inlier = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackletWithInlierFlag
    // Serialize message field [feature_points]
    // Serialize the length for message field [feature_points]
    bufferOffset = _serializer.uint32(obj.feature_points.length, buffer, bufferOffset);
    obj.feature_points.forEach((val) => {
      bufferOffset = FeaturePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_inlier]
    bufferOffset = _serializer.bool(obj.is_inlier, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint16(obj.age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackletWithInlierFlag
    let len;
    let data = new TrackletWithInlierFlag(null);
    // Deserialize message field [feature_points]
    // Deserialize array length for message field [feature_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.feature_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.feature_points[i] = FeaturePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_inlier]
    data.is_inlier = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.feature_points.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'matches_msg_depth_ros/TrackletWithInlierFlag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62a473d680d0e5ab1ca821370e02c176';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # no header since shall not be transmitted individually
    # Data field Tracklet
    FeaturePoint[] feature_points
    
    bool is_inlier
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackletWithInlierFlag(null);
    if (msg.feature_points !== undefined) {
      resolved.feature_points = new Array(msg.feature_points.length);
      for (let i = 0; i < resolved.feature_points.length; ++i) {
        resolved.feature_points[i] = FeaturePoint.Resolve(msg.feature_points[i]);
      }
    }
    else {
      resolved.feature_points = []
    }

    if (msg.is_inlier !== undefined) {
      resolved.is_inlier = msg.is_inlier;
    }
    else {
      resolved.is_inlier = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    return resolved;
    }
};

module.exports = TrackletWithInlierFlag;
