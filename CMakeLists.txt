cmake_minimum_required(VERSION 3.1)
project(tg)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# configure a header file to pass some of the CMake settings to the source code
set (GIT_VERSION tg.0.1)
execute_process(COMMAND git --git-dir=${PROJECT_SOURCE_DIR} rev-parse --abbrev-ref HEAD OUTPUT_VARIABLE GIT_BRANCH)
execute_process(COMMAND git --git-dir=${PROJECT_SOURCE_DIR} rev-parse HEAD OUTPUT_VARIABLE GIT_COMMIT)

configure_file (
  "${PROJECT_SOURCE_DIR}/lua_tg_version.h.in"
  "${PROJECT_BINARY_DIR}/lua_tg_version.h"
  )


include_directories(${PROJECT_SOURCE_DIR})

add_subdirectory(tgl)



set(SOURCE_FILES
    auto/auto-header.h
    auto/auto.c
    auto/constants.h
    config.h
    event-old.h
    interface.c
    interface.h
    LICENSE.h
    loop.c
    loop.h
    lua-tg.c
    lua-tg.h
    main.c
    msg-server-tg.h
    sema.h
    telegram.h
    lua_tg_version.h)

add_executable(tg-cli ${SOURCE_FILES})
target_link_libraries(tg-cli tgl)
