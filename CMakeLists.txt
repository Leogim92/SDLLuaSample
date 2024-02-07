cmake_minimum_required(VERSION 3.27.4)
project(GameProject VERSION 1.0.0)

add_executable(${PROJECT_NAME} main.cpp)

#--------LUA---------
SET (LUA_DIR ${PROJECT_SOURCE_DIR}/libs/lua)
add_subdirectory(libs/lua)

#--------SDL2--------
set(SDL2_LIB_DIR C:/SDL2/lib)
set(SDL2_INCLUDE_DIR C:/SDL2/include)

target_include_directories(${PROJECT_NAME} PRIVATE ${SDL2_INCLUDE_DIR} PRIVATE ${LUA_DIR})
target_link_libraries(${PROJECT_NAME} PRIVATE 
    mingw32 
    ${SDL2_LIB_DIR}/libSDL2Main.a
    ${SDL2_LIB_DIR}/libSDL2.dll.a
    lua
)