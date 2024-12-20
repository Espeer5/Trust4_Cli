################################################################################
#                                                                              #
#  DO_BUILD.SH                                                                 #
#                                                                              #
#  Top-level build script for Trust4_Cli. Build configuration is specified by  #
#  Cmake. This script ensures required dependencies are installed, and then    #
#  uses cmake to build the project.                                            #
#                                                                              #
#  Usage: ./do_build.sh                                                        #
#                                                                              #
#  Revision History:                                                           #
#      12/20/2024  Edward Speer  Initial Revision.                             #
#                                                                              #
################################################################################

# !/bin/bash

# Check if cmake is installed
if ! command -v cmake &> /dev/null
then
    echo "cmake could not be found. Please install cmake (v3.1+) and try again."
    exit
fi

# Ensure build directory exists
mkdir -p build

# Change to build directory
cd build

# Run CMake on the project
cmake -G Ninja ..

# Now build the project using Ninja
cmake --build . -- -j$(nproc)
