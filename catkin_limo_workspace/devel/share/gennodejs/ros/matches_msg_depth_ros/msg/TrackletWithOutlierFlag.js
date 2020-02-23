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

class TrackletWithOutlierFlag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feature_points = null;
      this.is_outlier = null;
      this.error = null;
      this.id = null;
      this.age = null;
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('feature_points')) {
        this.feature_points = initObj.feature_points
      }
      else {
        this.feature_points = [];
      }
      if (initObj.hasOwnProperty('is_outlier')) {
        this.is_outlier = initObj.is_outlier
      }
      else {
        this.is_outlier = false;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
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
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackletWithOutlierFlag
    // Serialize message field [feature_points]
    // Serialize the length for message field [feature_points]
    bufferOffset = _serializer.uint32(obj.feature_points.length, buffer, bufferOffset);
    obj.feature_points.forEach((val) => {
      bufferOffset = FeaturePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_outlier]
    bufferOffset = _serializer.bool(obj.is_outlier, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float32(obj.error, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint16(obj.age, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.int16(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackletWithOutlierFlag
    let len;
    let data = new TrackletWithOutlierFlag(null);
    // Deserialize message field [feature_points]
    // Deserialize array length for message field [feature_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.feature_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.feature_points[i] = FeaturePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_outlier]
    data.is_outlier = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.feature_points.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'matches_msg_depth_ros/TrackletWithOutlierFlag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9af38908a880df2b1cee0c7d2671c24a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackletWithOutlierFlag(null);
    if (msg.feature_points !== undefined) {
      resolved.feature_points = new Array(msg.feature_points.length);
      for (let i = 0; i < resolved.feature_points.length; ++i) {
        resolved.feature_points[i] = FeaturePoint.Resolve(msg.feature_points[i]);
      }
    }
    else {
      resolved.feature_points = []
    }

    if (msg.is_outlier !== undefined) {
      resolved.is_outlier = msg.is_outlier;
    }
    else {
      resolved.is_outlier = false
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
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

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    return resolved;
    }
};

module.exports = TrackletWithOutlierFlag;
