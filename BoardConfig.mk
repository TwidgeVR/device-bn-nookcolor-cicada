
TARGET_BOARD_PLATFORM := omap3

# Board configuration
#
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_PROVIDES_INIT_RC := true
OMAP_ENHANCEMENT := true

# Kernel/Bootloader machine name
#
TARGET_BOOTLOADER_BOARD_NAME := zoom2
TARGET_NO_KERNEL := true

# Modem
TARGET_NO_RADIOIMAGE := true

# HW Graphcis
#TODO
OMAP3_GL := true
#OMAP3_GL := false

# Wifi
USES_TI_WL1271 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
ifdef USES_TI_WL1271
BOARD_WLAN_DEVICE           := wl1271
BOARD_SOFTAP_DEVICE         := wl1271
endif
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# FM
#BUILD_FM_RADIO := true
#BOARD_HAVE_FM_ROUTING := true
#FM_CHR_DEV_ST := true

# GPS
BOARD_HAVE_FAKE_GPS := true

# MultiMedia defines
USE_CAMERA_STUB := true
#BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_TI_OMAP_MODEM_AUDIO := true
#BOARD_USES_TI_CAMERA_HAL := true
HARDWARE_OMX := true
FW3A := true
#ICAP := true
#IMAGE_PROCESSING_PIPELINE := true 
ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
BOARD_CAMERA_LIBRARIES := libcamera
endif

ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT
endif

# This define enables the compilation of OpenCore's command line TestApps
#BUILD_PV_TEST_APPS :=1

