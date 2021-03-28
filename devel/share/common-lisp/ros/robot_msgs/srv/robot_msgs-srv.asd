
(cl:in-package :asdf)

(defsystem "robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
    (:file "SetBool" :depends-on ("_package_SetBool"))
    (:file "_package_SetBool" :depends-on ("_package"))
    (:file "SetTcp" :depends-on ("_package_SetTcp"))
    (:file "_package_SetTcp" :depends-on ("_package"))
    (:file "SetUserFrame" :depends-on ("_package_SetUserFrame"))
    (:file "_package_SetUserFrame" :depends-on ("_package"))
  ))