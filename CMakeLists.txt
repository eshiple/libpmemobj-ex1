cmake_minimum_required(VERSION 3.1)
project(rw)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "-I/usr/local/include -std=c++11 -Wall -O2")
SET(CMAKE_EXE_LINKER_FLAGS  "-L/usr/local/lib -lpmemobj -O2")
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# execute_process (COMMAND "pkg-config --cflags libpmemobj" OUTPUT_VARIABLE outVar.txt)
# execute_process (COMMAND "pkg-config --libs libpmemobj" OUTPUT_VARIABLE outVar2)
# set(CMAKE_CXX_FLAGS "${outVar} ${outVar2} -lpmemobj -pthread -Wall -Wextra")
include_directories(${CMAKE_SOURCE_DIR})
include_directories(/usr/local/include)
include_directories(/usr/local/include/libpmemobj)
# add_subdirectory(common)

file(GLOB hashtable_src
    "*.h"
    "*.c"
)

file(GLOB libpmemobj_src
    "/usr/local/include/*.c"
    "/usr/local/include/*.h"
    "/usr/local/include/libpmemobj/*.c"
    "/usr/local/include/libpmemobj/*.h"    
)

add_library(libp_stuff OBJECT ${libpmemobj_src})
add_library(lib2 OBJECT ${hashtable_src})
# set_property(TARGET HashTable PROPERTY POSITION_INDEPENDENT_CODE ON)

# V1
# cmake_minimum_required(VERSION 3.1)

# set(CMAKE_CXX_STANDARD 11)

# set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

# set(DIVISIBLE_INSTALL_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)
# set(DIVISIBLE_INSTALL_BIN_DIR ${PROJECT_SOURCE_DIR}/bin)
# set(DIVISIBLE_INSTALL_LIB_DIR ${PROJECT_SOURCE_DIR}/lib)

# set(DIVISION_HEADERS_DIR ${PROJECT_SOURCE_DIR}/src/division)

# include_directories(${DIVISIBLE_INSTALL_INCLUDE_DIR})
# include_directories(${DIVISION_HEADERS_DIR})

# add_subdirectory(src)
# add_subdirectory(test)
# end V1

# find_package(PkgConfig QUIET)
# include(libpmemobj)
set(EXE_NAME cmake_test ${hashtable_src} ${libpmemobj_src})
add_executable(${EXE_NAME} ${CMAKE_SOURCE_DIR}/src/writer.cpp)
target_link_libraries(${EXE_NAME} ${libp_stuff} ${lib2})
# install(TARGETS ${EXE_NAME} RUNTIME DESTINATION bin)