#
# simplify build by creating batch files. This ensures that the appropriate
# configuration for which the configuration was set up is passed.
#
if(CMAKE_HOST_SYSTEM_NAME MATCHES Windows)
    configure_file(${CMAKE_CURRENT_LIST_DIR}/make.bat.in ${PROJECT_BINARY_DIR}/make.bat @ONLY)
    configure_file(${CMAKE_CURRENT_LIST_DIR}/test.bat.in ${PROJECT_BINARY_DIR}/test.bat @ONLY)
endif()
