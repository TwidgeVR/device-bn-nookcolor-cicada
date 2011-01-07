LOCAL_PATH := $(call my-dir)


# kernel binary
# this is here to use the pre-built kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
        $(transform-prebuilt-to-target)

# keyboard layouts
#
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/twl4030-keypad.kl:system/usr/keylayout/twl4030-keypad.kl


# cellular operators apn list, vold config, media_profiles.xml
#
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/vold.conf:system/etc/vold.conf \
        $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
        $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# keyboard maps
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES := twl4030-keypad.kcm
include $(BUILD_KEY_CHAR_MAP)

# board specific init.rc
#
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init.omapzoom2.rc:root/init.omapzoom2.rc \
        $(LOCAL_PATH)/env.txt:root/env.txt
