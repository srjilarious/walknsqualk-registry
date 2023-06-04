vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO srjilarious/argunaught 
  REF 60223190bace21849a291fb1815725ff0ca42a36
  SHA512 b64574eda7fbf8d8caa3a490e337eed5074facb71d55c948e2594cf27c499faf5b2cd1b9d5c0d489cab77aa35da7abbc9f1a17b8b8882c9bc441310a04a0ee73
  HEAD_REF master
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
#vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/License"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)

