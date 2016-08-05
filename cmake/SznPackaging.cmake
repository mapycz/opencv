if(EXISTS "${CMAKE_ROOT}/Modules/CPack.cmake")
set(CPACK_set_DESTDIR "on")

set(CPACK_PACKAGE_NAME "szn-panorama-opencv")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Open Computer Vision Library")
set(CPACK_PACKAGE_DESCRIPTION
"OpenCV (Open Source Computer Vision Library) is an open source computer vision
and machine learning software library. OpenCV was built to provide a common
infrastructure for computer vision applications and to accelerate the use of
machine perception in the commercial products. Being a BSD-licensed product,
OpenCV makes it easy for businesses to utilize and modify the code.")
set(CPACK_PACKAGE_VENDOR "Seznam.cz a.s.")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set(CPACK_PACKAGE_CONTACT "jiri.drbalek@firma.seznam.cz")
set(CPACK_PACKAGE_VERSION_MAJOR "${OPENCV_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${OPENCV_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION "${OPENCV_VCSVERSION}")

set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${OPENCV_VCSVERSION}-${CMAKE_SYSTEM_PROCESSOR}")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${OPENCV_VCSVERSION}-${CMAKE_SYSTEM_PROCESSOR}")

#deb options
set(CPACK_DEB_COMPONENT_INSTALL TRUE)
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_SECTION "libs")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "http://opencv.org")

set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS TRUE)

#depencencies
set(CPACK_COMPONENT_LIBS_REQUIRED TRUE)
set(CPACK_COMPONENT_PYTHON_REQUIRED TRUE)
set(CPACK_COMPONENT_DEV_REQUIRED TRUE)

set(CPACK_COMPONENTS_GROUPING ALL_COMPONENTS_IN_ONE)

include(CPack)

ENDif(EXISTS "${CMAKE_ROOT}/Modules/CPack.cmake")
