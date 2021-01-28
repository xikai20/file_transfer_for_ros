;; Auto-generated. Do not edit!


(when (boundp 'moving_file::moving_stf)
  (if (not (find-package "MOVING_FILE"))
    (make-package "MOVING_FILE"))
  (shadow 'moving_stf (find-package "MOVING_FILE")))
(unless (find-package "MOVING_FILE::MOVING_STF")
  (make-package "MOVING_FILE::MOVING_STF"))
(unless (find-package "MOVING_FILE::MOVING_STFREQUEST")
  (make-package "MOVING_FILE::MOVING_STFREQUEST"))
(unless (find-package "MOVING_FILE::MOVING_STFRESPONSE")
  (make-package "MOVING_FILE::MOVING_STFRESPONSE"))

(in-package "ROS")





(defclass moving_file::moving_stfRequest
  :super ros::object
  :slots (_a _b ))

(defmethod moving_file::moving_stfRequest
  (:init
   (&key
    ((:a __a) "")
    ((:b __b) "")
    )
   (send-super :init)
   (setq _a (string __a))
   (setq _b (string __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _a
    4 (length _a)
    ;; string _b
    4 (length _b)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a
       (write-long (length _a) s) (princ _a s)
     ;; string _b
       (write-long (length _b) s) (princ _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass moving_file::moving_stfResponse
  :super ros::object
  :slots (_c ))

(defmethod moving_file::moving_stfResponse
  (:init
   (&key
    ((:c __c) "")
    )
   (send-super :init)
   (setq _c (string __c))
   self)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; string _c
    4 (length _c)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _c
       (write-long (length _c) s) (princ _c s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _c
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _c (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass moving_file::moving_stf
  :super ros::object
  :slots ())

(setf (get moving_file::moving_stf :md5sum-) "9b826a668338f1daad3bd62eab0c5bf8")
(setf (get moving_file::moving_stf :datatype-) "moving_file/moving_stf")
(setf (get moving_file::moving_stf :request) moving_file::moving_stfRequest)
(setf (get moving_file::moving_stf :response) moving_file::moving_stfResponse)

(defmethod moving_file::moving_stfRequest
  (:response () (instance moving_file::moving_stfResponse :init)))

(setf (get moving_file::moving_stfRequest :md5sum-) "9b826a668338f1daad3bd62eab0c5bf8")
(setf (get moving_file::moving_stfRequest :datatype-) "moving_file/moving_stfRequest")
(setf (get moving_file::moving_stfRequest :definition-)
      "string a
string b
---
string c

")

(setf (get moving_file::moving_stfResponse :md5sum-) "9b826a668338f1daad3bd62eab0c5bf8")
(setf (get moving_file::moving_stfResponse :datatype-) "moving_file/moving_stfResponse")
(setf (get moving_file::moving_stfResponse :definition-)
      "string a
string b
---
string c

")



(provide :moving_file/moving_stf "9b826a668338f1daad3bd62eab0c5bf8")


