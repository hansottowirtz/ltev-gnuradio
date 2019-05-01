INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_LTEV ltev)

FIND_PATH(
    LTEV_INCLUDE_DIRS
    NAMES ltev/api.h
    HINTS $ENV{LTEV_DIR}/include
        ${PC_LTEV_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    LTEV_LIBRARIES
    NAMES gnuradio-ltev
    HINTS $ENV{LTEV_DIR}/lib
        ${PC_LTEV_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LTEV DEFAULT_MSG LTEV_LIBRARIES LTEV_INCLUDE_DIRS)
MARK_AS_ADVANCED(LTEV_LIBRARIES LTEV_INCLUDE_DIRS)

