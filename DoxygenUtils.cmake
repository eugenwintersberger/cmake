#
# utility functions and variables which should make using doxygen 
# more conveniant 
#

#
# check if doxygen is installed on the build machine
#
find_package(Doxygen REQUIRED)

if(DOXYGEN_FOUND)
message(STATUS "Found doxygen executable: ${DOXYGEN_EXECUTABLE}")
endif()

#
# this variable adds build depencencies for the doxygen build
#
set(CMAKE_DOXYGEN_BUILD_DEPENDENCIES CACHE INTERNAL "")

#
# add doxygen dependencies in the source tree
#
function(add_doxygen_source_deps)
	
	set(DEPENDENCIES)
	foreach(deps ${ARGV})
	    if(IS_ABSOLUTE ${deps})
	      list(APPEND DEPENDENCIES ${deps})
	    else()
	      #we assume here that the path is relative to the current 
	      #source directory. 
		  list(APPEND DEPENDENCIES ${CMAKE_CURRENT_SOURCE_DIR}/${deps})
		endif()
	endforeach()
	
	set(CMAKE_DOXYGEN_BUILD_DEPENDENCIES ${CMAKE_DOXYGEN_BUILD_DEPENDENCIES} 
	                                     ${DEPENDENCIES} CACHE INTERNAL "")

endfunction()