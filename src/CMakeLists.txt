project(AquariumLightDimmer)
cmake_minimum_required(VERSION 3.18)

# C++11
set(CMAKE_CXX_STANDARD, 11)
set(CMAKE_CXX_STANDARD_REQUIRED, True)

# needed for vim autocomplete
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# arduino paths
set(ARDUINO_HARDWARE ~/Library/Arduino15/packages/arduino/hardware/avr/1.8.3)
set(ARDUINO_LIBRARIES ~/Documents/Arduino/libraries)

# core directories
include_directories(${ARDUINO_HARDWARE}/cores/arduino)
include_directories(${ARDUINO_HARDWARE}/variants/eightanaloginputs)

# lib directories
include_directories(${ARDUINO_LIBRARIES}/RTClib)

add_executable(AquariumLightDimmer main.cpp)

