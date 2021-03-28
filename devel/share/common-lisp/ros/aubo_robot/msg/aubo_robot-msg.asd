
(cl:in-package :asdf)

(defsystem "aubo_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServoL" :depends-on ("_package_ServoL"))
    (:file "_package_ServoL" :depends-on ("_package"))
  ))