; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude RobotMsg.msg.html

(cl:defclass <RobotMsg> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (motor_sync
    :reader motor_sync
    :initarg :motor_sync
    :type cl:fixnum
    :initform 0)
   (servo_enable
    :reader servo_enable
    :initarg :servo_enable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotMsg (<RobotMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<RobotMsg> is deprecated: use robot_msgs-msg:RobotMsg instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:state-val is deprecated.  Use robot_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:mode-val is deprecated.  Use robot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'motor_sync-val :lambda-list '(m))
(cl:defmethod motor_sync-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:motor_sync-val is deprecated.  Use robot_msgs-msg:motor_sync instead.")
  (motor_sync m))

(cl:ensure-generic-function 'servo_enable-val :lambda-list '(m))
(cl:defmethod servo_enable-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:servo_enable-val is deprecated.  Use robot_msgs-msg:servo_enable instead.")
  (servo_enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMsg>) ostream)
  "Serializes a message object of type '<RobotMsg>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor_sync)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo_enable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMsg>) istream)
  "Deserializes a message object of type '<RobotMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_sync) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_enable) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMsg>)))
  "Returns string type for a message object of type '<RobotMsg>"
  "robot_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMsg)))
  "Returns string type for a message object of type 'RobotMsg"
  "robot_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMsg>)))
  "Returns md5sum for a message object of type '<RobotMsg>"
  "da7d41c000dbbeaf511a5a696db54aea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMsg)))
  "Returns md5sum for a message object of type 'RobotMsg"
  "da7d41c000dbbeaf511a5a696db54aea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMsg>)))
  "Returns full string definition for message of type '<RobotMsg>"
  (cl:format cl:nil "int16 state~%int16 mode~%int16 motor_sync~%int16 servo_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMsg)))
  "Returns full string definition for message of type 'RobotMsg"
  (cl:format cl:nil "int16 state~%int16 mode~%int16 motor_sync~%int16 servo_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMsg>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMsg
    (cl:cons ':state (state msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':motor_sync (motor_sync msg))
    (cl:cons ':servo_enable (servo_enable msg))
))
