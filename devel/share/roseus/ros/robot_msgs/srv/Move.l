;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Move)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Move (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MOVE")
  (make-package "ROBOT_MSGS::MOVE"))
(unless (find-package "ROBOT_MSGS::MOVEREQUEST")
  (make-package "ROBOT_MSGS::MOVEREQUEST"))
(unless (find-package "ROBOT_MSGS::MOVERESPONSE")
  (make-package "ROBOT_MSGS::MOVERESPONSE"))

(in-package "ROS")





(defclass robot_msgs::MoveRequest
  :super ros::object
  :slots (_pose _mvvelo _mvacc _coord_mode _index ))

(defmethod robot_msgs::MoveRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mvvelo __mvvelo) 0.0)
    ((:mvacc __mvacc) 0.0)
    ((:coord_mode __coord_mode) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _mvvelo (float __mvvelo))
   (setq _mvacc (float __mvacc))
   (setq _coord_mode (round __coord_mode))
   (setq _index (round __index))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:mvvelo
   (&optional __mvvelo)
   (if __mvvelo (setq _mvvelo __mvvelo)) _mvvelo)
  (:mvacc
   (&optional __mvacc)
   (if __mvacc (setq _mvacc __mvacc)) _mvacc)
  (:coord_mode
   (&optional __coord_mode)
   (if __coord_mode (setq _coord_mode __coord_mode)) _coord_mode)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; float32 _mvvelo
    4
    ;; float32 _mvacc
    4
    ;; int16 _coord_mode
    2
    ;; int16 _index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _mvvelo
       (sys::poke _mvvelo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mvacc
       (sys::poke _mvacc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _coord_mode
       (write-word _coord_mode s)
     ;; int16 _index
       (write-word _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _mvvelo
     (setq _mvvelo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mvacc
     (setq _mvacc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _coord_mode
     (setq _coord_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_msgs::MoveResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::MoveResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::Move
  :super ros::object
  :slots ())

(setf (get robot_msgs::Move :md5sum-) "1b38d8d2cdd7e17ee1138874afabea4f")
(setf (get robot_msgs::Move :datatype-) "robot_msgs/Move")
(setf (get robot_msgs::Move :request) robot_msgs::MoveRequest)
(setf (get robot_msgs::Move :response) robot_msgs::MoveResponse)

(defmethod robot_msgs::MoveRequest
  (:response () (instance robot_msgs::MoveResponse :init)))

(setf (get robot_msgs::MoveRequest :md5sum-) "1b38d8d2cdd7e17ee1138874afabea4f")
(setf (get robot_msgs::MoveRequest :datatype-) "robot_msgs/MoveRequest")
(setf (get robot_msgs::MoveRequest :definition-)
      "float32[] pose
float32 mvvelo
float32 mvacc
int16 coord_mode
int16 index
---
int16 ret
string message

")

(setf (get robot_msgs::MoveResponse :md5sum-) "1b38d8d2cdd7e17ee1138874afabea4f")
(setf (get robot_msgs::MoveResponse :datatype-) "robot_msgs/MoveResponse")
(setf (get robot_msgs::MoveResponse :definition-)
      "float32[] pose
float32 mvvelo
float32 mvacc
int16 coord_mode
int16 index
---
int16 ret
string message

")



(provide :robot_msgs/Move "1b38d8d2cdd7e17ee1138874afabea4f")


