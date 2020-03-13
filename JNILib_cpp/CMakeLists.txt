cmake_minimum_required(VERSION 3.9)
project(native VERSION 1.0.0 DESCRIPTION "native description")
set(JNILib_HEADER_FILES
    JNILib_Library.h)

add_library(native SHARED
            JNILib_Library.cpp ${JNILib_HEADER_FILES})

set_property(TARGET native PROPERTY POSITION_INDEPENDENT_CODE 1)

find_package(JNI REQUIRED)
  if(JNI_FOUND)
    include_directories(SYSTEM ${JAVA_INCLUDE_PATH})
    include_directories(SYSTEM ${JAVA_INCLUDE_PATH2})
  endif()

install(DIRECTORY DESTINATION ${CMAKE_SOURCE_DIR}/../build/libs/native/)
install(DIRECTORY DESTINATION ${CMAKE_SOURCE_DIR}/../build/libs/native/include/)
install(TARGETS native
        LIBRARY DESTINATION ${CMAKE_SOURCE_DIR}/../build/libs/native/
        PUBLIC_HEADER DESTINATION ${CMAKE_SOURCE_DIR}/../build/libs/native/include/)
