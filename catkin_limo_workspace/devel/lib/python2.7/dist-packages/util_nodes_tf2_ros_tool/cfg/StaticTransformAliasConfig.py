## *********************************************************
##
## File autogenerated for the util_nodes_tf2_ros_tool package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Sets the verbosity for this node', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'verbosity', 'edit_method': "{'enum_description': 'Sets the verbosity for this node', 'enum': [{'srcline': 15, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'debug', 'ctype': 'std::string', 'type': 'str', 'name': 'debug'}, {'srcline': 16, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'info', 'ctype': 'std::string', 'type': 'str', 'name': 'info'}, {'srcline': 17, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'warning', 'ctype': 'std::string', 'type': 'str', 'name': 'warning'}, {'srcline': 18, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'error', 'ctype': 'std::string', 'type': 'str', 'name': 'error'}, {'srcline': 19, 'description': '', 'srcfile': '/home/dlx/catkin_limo_workspace/devel/share/util_nodes_tf2_ros_tool/cfg/StaticTransformAlias.cfg', 'cconsttype': 'const char * const', 'value': 'fatal', 'ctype': 'std::string', 'type': 'str', 'name': 'fatal'}]}", 'default': 'info', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'tf2 frame id of the source frame from which to read', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'from_source_frame_id', 'edit_method': '', 'default': 'from/source', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'tf2 frame id of the source frame to which we map', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'to_source_frame_id', 'edit_method': '', 'default': 'to/source', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'tf2 frame id of the target frame from which to read', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'from_target_frame_id', 'edit_method': '', 'default': 'from/target', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'tf2 frame id of the target frame to which we map', 'max': '', 'cconsttype': 'const char * const', 'ctype': 'std::string', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'to_target_frame_id', 'edit_method': '', 'default': 'to/target', 'level': 0, 'min': '', 'type': 'str'}, {'srcline': 291, 'description': 'time in secondsd before failing', 'max': 60.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'timeout', 'edit_method': '', 'default': 10.0, 'level': 0, 'min': 0.5, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

StaticTransformAlias_debug = 'debug'
StaticTransformAlias_info = 'info'
StaticTransformAlias_warning = 'warning'
StaticTransformAlias_error = 'error'
StaticTransformAlias_fatal = 'fatal'
