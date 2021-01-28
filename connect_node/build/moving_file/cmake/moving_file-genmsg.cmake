# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moving_file: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moving_file_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_custom_target(_moving_file_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moving_file" "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(moving_file
  "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moving_file
)

### Generating Module File
_generate_module_cpp(moving_file
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moving_file
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moving_file_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moving_file_generate_messages moving_file_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_dependencies(moving_file_generate_messages_cpp _moving_file_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moving_file_gencpp)
add_dependencies(moving_file_gencpp moving_file_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moving_file_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(moving_file
  "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moving_file
)

### Generating Module File
_generate_module_eus(moving_file
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moving_file
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moving_file_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moving_file_generate_messages moving_file_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_dependencies(moving_file_generate_messages_eus _moving_file_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moving_file_geneus)
add_dependencies(moving_file_geneus moving_file_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moving_file_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(moving_file
  "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moving_file
)

### Generating Module File
_generate_module_lisp(moving_file
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moving_file
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moving_file_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moving_file_generate_messages moving_file_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_dependencies(moving_file_generate_messages_lisp _moving_file_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moving_file_genlisp)
add_dependencies(moving_file_genlisp moving_file_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moving_file_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(moving_file
  "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moving_file
)

### Generating Module File
_generate_module_nodejs(moving_file
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moving_file
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moving_file_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moving_file_generate_messages moving_file_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_dependencies(moving_file_generate_messages_nodejs _moving_file_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moving_file_gennodejs)
add_dependencies(moving_file_gennodejs moving_file_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moving_file_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(moving_file
  "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moving_file
)

### Generating Module File
_generate_module_py(moving_file
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moving_file
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moving_file_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moving_file_generate_messages moving_file_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cerlab/XK/connect_node/src/moving_file/srv/moving_stf.srv" NAME_WE)
add_dependencies(moving_file_generate_messages_py _moving_file_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moving_file_genpy)
add_dependencies(moving_file_genpy moving_file_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moving_file_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moving_file)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moving_file
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(moving_file_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moving_file)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moving_file
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(moving_file_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moving_file)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moving_file
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(moving_file_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moving_file)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moving_file
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(moving_file_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moving_file)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moving_file\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moving_file
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(moving_file_generate_messages_py std_msgs_generate_messages_py)
endif()
