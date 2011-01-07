#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#



ifeq ($(TARGET_DEVICE),zoom2)

common_ti_dirs := sensors
common_ti_dirs := gps

include $(call all-named-subdir-makefiles, $(common_ti_dirs))

endif
