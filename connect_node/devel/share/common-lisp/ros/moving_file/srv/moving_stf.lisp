; Auto-generated. Do not edit!


(cl:in-package moving_file-srv)


;//! \htmlinclude moving_stf-request.msg.html

(cl:defclass <moving_stf-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:string
    :initform "")
   (b
    :reader b
    :initarg :b
    :type cl:string
    :initform ""))
)

(cl:defclass moving_stf-request (<moving_stf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moving_stf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moving_stf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_file-srv:<moving_stf-request> is deprecated: use moving_file-srv:moving_stf-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <moving_stf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_file-srv:a-val is deprecated.  Use moving_file-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <moving_stf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_file-srv:b-val is deprecated.  Use moving_file-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moving_stf-request>) ostream)
  "Serializes a message object of type '<moving_stf-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moving_stf-request>) istream)
  "Deserializes a message object of type '<moving_stf-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'b) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moving_stf-request>)))
  "Returns string type for a service object of type '<moving_stf-request>"
  "moving_file/moving_stfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_stf-request)))
  "Returns string type for a service object of type 'moving_stf-request"
  "moving_file/moving_stfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moving_stf-request>)))
  "Returns md5sum for a message object of type '<moving_stf-request>"
  "9b826a668338f1daad3bd62eab0c5bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moving_stf-request)))
  "Returns md5sum for a message object of type 'moving_stf-request"
  "9b826a668338f1daad3bd62eab0c5bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moving_stf-request>)))
  "Returns full string definition for message of type '<moving_stf-request>"
  (cl:format cl:nil "string a~%string b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moving_stf-request)))
  "Returns full string definition for message of type 'moving_stf-request"
  (cl:format cl:nil "string a~%string b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moving_stf-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'a))
     4 (cl:length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moving_stf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'moving_stf-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude moving_stf-response.msg.html

(cl:defclass <moving_stf-response> (roslisp-msg-protocol:ros-message)
  ((c
    :reader c
    :initarg :c
    :type cl:string
    :initform ""))
)

(cl:defclass moving_stf-response (<moving_stf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moving_stf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moving_stf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_file-srv:<moving_stf-response> is deprecated: use moving_file-srv:moving_stf-response instead.")))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <moving_stf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_file-srv:c-val is deprecated.  Use moving_file-srv:c instead.")
  (c m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moving_stf-response>) ostream)
  "Serializes a message object of type '<moving_stf-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'c))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moving_stf-response>) istream)
  "Deserializes a message object of type '<moving_stf-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'c) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moving_stf-response>)))
  "Returns string type for a service object of type '<moving_stf-response>"
  "moving_file/moving_stfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_stf-response)))
  "Returns string type for a service object of type 'moving_stf-response"
  "moving_file/moving_stfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moving_stf-response>)))
  "Returns md5sum for a message object of type '<moving_stf-response>"
  "9b826a668338f1daad3bd62eab0c5bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moving_stf-response)))
  "Returns md5sum for a message object of type 'moving_stf-response"
  "9b826a668338f1daad3bd62eab0c5bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moving_stf-response>)))
  "Returns full string definition for message of type '<moving_stf-response>"
  (cl:format cl:nil "string c~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moving_stf-response)))
  "Returns full string definition for message of type 'moving_stf-response"
  (cl:format cl:nil "string c~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moving_stf-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'c))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moving_stf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'moving_stf-response
    (cl:cons ':c (c msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'moving_stf)))
  'moving_stf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'moving_stf)))
  'moving_stf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moving_stf)))
  "Returns string type for a service object of type '<moving_stf>"
  "moving_file/moving_stf")