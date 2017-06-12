#
# set default output directory paths
#

# =============================================================================
# setting up the output directory for library, archive and runtime targets
#
# This should be the same on all platforms just to avoid confusion
# =============================================================================
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
set(CMAKE_ARCHVIE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
