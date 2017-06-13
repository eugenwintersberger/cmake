==================
CMake utilty files
==================

This repository contains some utility CMake files which I use througout my
projects. Most probably this is not of much use for anyone else but maybe can
serve as an inspiration.
The main intention behind this files is to depend on as less information as
possible. Most of them only require the project name and the version number.

A short overview
================

* ``PackageConfig.cmake`` - set the name of the package config and version file
  by defining the two variables ``PACKAGE_VERSION_FILE_NAME`` and
  ``PACKAGE_CONFIG_FILE_NAME``. Both are derived form the projects name and
  version.
* ``InstallConfig.cmake`` - define installation directories for various 
  platforms by defining the following variables
  
  * ``CMAKE_INSTALL_LIBDIR`` - relative library installation path 
  * ``CMAKE_INSTALL_BINDIR`` - relative binary installation path
  * ``CMAKE_INSTALL_INCLUDEDIR`` - relative header installation path
  * ``CMAKE_DATAROOTDIR`` - relative path for data installation 
  * ``CMAKE_INSTALL_DOCDIR`` - relative path for documentation installation
  * ``CMAKE_INSTALL_PACKAGEDIR`` - relative path for cmake package file installation
  
* ``OutputDirConfig.cmake`` - set ouput directories for build artifacts by 
  defining the following variables
  
  * ``CMAKE_RUNTIME_OUTPUT_DIRECTORY`` 
  * ``CMAKE_LIBRARY_OUTPUT_DIRECTORY``
  * ``CMAKE_ARCHIVE_OUTPUT_DIRECTORY``
  
* ``ConanSetup.cmake`` - run boiler-plate code to use conan from within CMake. This
  script will stop the build if the ``conan`` executable cannot be found.
