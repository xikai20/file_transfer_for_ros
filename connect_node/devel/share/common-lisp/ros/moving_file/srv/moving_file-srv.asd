
(cl:in-package :asdf)

(defsystem "moving_file-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "moving_stf" :depends-on ("_package_moving_stf"))
    (:file "_package_moving_stf" :depends-on ("_package"))
  ))