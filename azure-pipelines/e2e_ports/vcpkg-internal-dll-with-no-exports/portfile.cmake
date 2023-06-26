SET(VCPKG_POLICY_DLLS_WITHOUT_LIBS enabled)
file(MAKE_DIRECTORY "${CURRENT_BUILDTREES_DIR}/src")
file(COPY "${CMAKE_CURRENT_LIST_DIR}/CMakeLists.txt" DESTINATION "${CURRENT_BUILDTREES_DIR}/src")
vcpkg_cmake_configure(SOURCE_PATH "${CURRENT_BUILDTREES_DIR}/src")
vcpkg_cmake_install()
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/share")
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/share/${PORT}")
file(REMOVE_RECURSE
    "${CURRENT_PACKAGES_DIR}/debug/include"
    "${CURRENT_PACKAGES_DIR}/debug/lib"
    "${CURRENT_PACKAGES_DIR}/lib")
file(TOUCH "${CURRENT_PACKAGES_DIR}/share/${PORT}/copyright")
