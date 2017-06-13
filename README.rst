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
* ``InstallConfig.cmake`` - define installation directories for various platforms
* ``OutputDirConfig.cmake`` - set ouput directories for build artifacts
* ``ConanSetup.cmake`` - run boiler-plate code to use conan from within CMake
