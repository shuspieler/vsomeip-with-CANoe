cmake_minimum_required (VERSION 3.13)

set (CMAKE_CXX_FLAGS "-g -std=c++0x")

find_package (vsomeip3 3.4.10 REQUIRED)
find_package( Boost 1.55 COMPONENTS system thread log REQUIRED )

include_directories (
    ${Boost_INCLUDE_DIR}
    ${VSOMEIP_INCLUDE_DIRS}
)

add_executable(service-example ../src/service-example.cpp)
target_link_libraries(service-example vsomeip3 ${Boost_LIBRARIES})

add_executable(client-local-example ../src/client-local-example.cpp)
target_link_libraries(client-local-example vsomeip3 ${Boost_LIBRARIES})

add_executable(client-CANoe-example ../src/client-CANoe-example.cpp)
target_link_libraries(client-CANoe-example vsomeip3 ${Boost_LIBRARIES})