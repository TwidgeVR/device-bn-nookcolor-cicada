#
# Copyright (C) 2009 Texas Instruments
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/ti/zoom2/zoom2_generic.mk)

# Overrides
PRODUCT_NAME := zoom2
PRODUCT_MODEL := LogicPD Zoom2
PRODUCT_LOCALES += en_US
PRODUCT_PACKAGE_OVERLAYS := device/ti/zoom2/overlay


PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.dateformat=MM-dd-yyyy \
	ro.com.android.dataroaming=true \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html 

PRODUCT_PACKAGES += \
	Quake \
	FieldTest \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
      libomap_mm_library_jni 
#	        CameraOMAP3 

PRODUCT_COPY_FILES += device/ti/zoom2/apns.xml:system/etc/apns-conf.xml

# Pick up audio package
include frameworks/base/data/sounds/AudioPackage2.mk

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    device/ti/zoom2/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \


# Install English (United States) TTS Language
include external/svox/pico/lang/PicoLangEnUsInSystem.mk

# this make file is to extend FRAMEWORKS_BASE_SUBDIRS from pathmake.mk
# and this is placed in common-open as this common between omap3 and omap4
include device/ti/common-open/OmapMMLib.mk
