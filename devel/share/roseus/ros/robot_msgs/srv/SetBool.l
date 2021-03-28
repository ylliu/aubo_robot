;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::SetBool)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'SetBool (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SETBOOL")
  (make-package "ROBOT_MSGS::SETBOOL"))
(unless (find-package "ROBOT_MSGS::SETBOOLREQUEST")
  (make-package "ROBOT_MSGS::SETBOOLREQUEST"))
(unless (find-package "ROBOT_MSGS::SETBOOLRESPONSE")
  (make-package "ROBOT_MSGS::SETBOOLRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::SetBoolRequest
  :super ros::object
  :slots (_data ))

(defmethod robot_msgs::SetBoolRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_msgs::SetBoolResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robot_msgs::SetBoolResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::SetBool
  :super ros::object
  :slots ())

(setf (get robot_msgs::SetBool :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_msgs::SetBool :datatype-) "robot_msgs/SetBool")
(setf (get robot_msgs::SetBool :request) robot_msgs::SetBoolRequest)
(setf (get robot_msgs::SetBool :response) robot_msgs::SetBoolResponse)

(defmethod robot_msgs::SetBoolRequest
  (:response () (instance robot_msgs::SetBoolResponse :init)))

(setf (get robot_msgs::SetBoolRequest :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_msgs::SetBoolRequest :datatype-) "robot_msgs/SetBoolRequest")
(setf (get robot_msgs::SetBoolRequest :definition-)
      "bool data
---
bool success
string message

")

(setf (get robot_msgs::SetBoolResponse :md5sum-) "09fb03525b03e7ea1fd3992bafd87e16")
(setf (get robot_msgs::SetBoolResponse :datatype-) "robot_msgs/SetBoolResponse")
(setf (get robot_msgs::SetBoolResponse :definition-)
      "bool data
---
bool success
string message

")



(provide :robot_msgs/SetBool "09fb03525b03e7ea1fd3992bafd87e16")


