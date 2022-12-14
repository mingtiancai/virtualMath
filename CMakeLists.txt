cmake_minimum_required(VERSION 3.16)

project(virtualMath VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appvirtualMath
    main.cpp
    MyMethod.h
    MyMethod.cpp
)

qt_add_qml_module(appvirtualMath
    URI virtualMath
    VERSION 1.0
    QML_FILES main.qml Dia.qml About.qml
    RESOURCES
        resource/img/test.png
        resource/img/logo.png
        resource/img/about.png
)

set_target_properties(appvirtualMath PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(appvirtualMath
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appvirtualMath
    PRIVATE Qt6::Quick)
