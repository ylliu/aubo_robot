// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.mode = null;
      this.motor_sync = null;
      this.servo_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('motor_sync')) {
        this.motor_sync = initObj.motor_sync
      }
      else {
        this.motor_sync = 0;
      }
      if (initObj.hasOwnProperty('servo_enable')) {
        this.servo_enable = initObj.servo_enable
      }
      else {
        this.servo_enable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMsg
    // Serialize message field [state]
    bufferOffset = _serializer.int16(obj.state, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int16(obj.mode, buffer, bufferOffset);
    // Serialize message field [motor_sync]
    bufferOffset = _serializer.int16(obj.motor_sync, buffer, bufferOffset);
    // Serialize message field [servo_enable]
    bufferOffset = _serializer.int16(obj.servo_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMsg
    let len;
    let data = new RobotMsg(null);
    // Deserialize message field [state]
    data.state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor_sync]
    data.motor_sync = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [servo_enable]
    data.servo_enable = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/RobotMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da7d41c000dbbeaf511a5a696db54aea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 state
    int16 mode
    int16 motor_sync
    int16 servo_enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMsg(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.motor_sync !== undefined) {
      resolved.motor_sync = msg.motor_sync;
    }
    else {
      resolved.motor_sync = 0
    }

    if (msg.servo_enable !== undefined) {
      resolved.servo_enable = msg.servo_enable;
    }
    else {
      resolved.servo_enable = 0
    }

    return resolved;
    }
};

module.exports = RobotMsg;
