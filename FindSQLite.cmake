# - Locate SQLite library
# Defines:
#
#  SQLITE_FOUND
#  SQLITE_INCLUDE_DIR
#  SQLITE_INCLUDE_DIRS (not cached)
#  SQLITE_LIBRARY
#  SQLITE_LIBRARIES (not cached)
#  SQLITE_LIBRARY_DIRS (not cached)

find_path(SQLITE_INCLUDE_DIR sqlite3.h)
find_library(SQLITE_LIBRARY NAMES sqlite3)

# handle the QUIETLY and REQUIRED arguments and set SQLITE_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SQLite DEFAULT_MSG SQLITE_INCLUDE_DIR SQLITE_LIBRARY)

mark_as_advanced(SQLITE_FOUND SQLITE_INCLUDE_DIR SQLITE_LIBRARIES)

if(SQLITE_LIBRARY)
  get_filename_component(SQLITE_LIBRARY_DIRS ${SQLITE_LIBRARY} PATH)
  set(SQLITE_LIBRARIES ${SQLITE_LIBRARY})
endif()

set(SQLITE_INCLUDE_DIRS ${SQLITE_INCLUDE_DIR})