#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "rnnoise::rnnoise" for configuration "Release"
set_property(TARGET rnnoise::rnnoise APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(rnnoise::rnnoise PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/rnnoise.lib"
  )

list(APPEND _cmake_import_check_targets rnnoise::rnnoise )
list(APPEND _cmake_import_check_files_for_rnnoise::rnnoise "${_IMPORT_PREFIX}/lib/rnnoise.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
