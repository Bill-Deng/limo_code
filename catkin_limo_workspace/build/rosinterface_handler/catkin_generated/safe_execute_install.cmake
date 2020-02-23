execute_process(COMMAND "/home/dlx/catkin_limo_workspace/build/rosinterface_handler/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dlx/catkin_limo_workspace/build/rosinterface_handler/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
