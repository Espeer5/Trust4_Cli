# Top-level CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project(Trust4_Cli)

# Add submodule directory
add_subdirectory(TRUST4)

# Add the main source directory
# add_executable(MyApp src/main.cpp)

# Link the submodule's library (if it builds one) to the main executable
# target_link_libraries(MyApp PRIVATE submodule_library)

# Specify C++ standard
# target_compile_features(MyApp PRIVATE cxx_std_17)

# Include submodule's headers (if necessary)
# target_include_directories(MyApp PRIVATE submodule/include)
