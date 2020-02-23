// Auto-generated. Do not edit!

// (in-package matches_msg_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FeaturePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeaturePoint
    // Serialize message field [u]
    bufferOffset = _serializer.float32(obj.u, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float32(obj.v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeaturePoint
    let len;
    let data = new FeaturePoint(null);
    // Deserialize message field [u]
    data.u = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'matches_msg_ros/FeaturePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f5254e0e12914c461d4b17a0cd07f7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FeaturePoint(null);
    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    return resolved;
    }
};

module.exports = FeaturePoint;
