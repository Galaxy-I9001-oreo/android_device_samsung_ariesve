#
# Copyright (C) 2018 The LineageOS Project
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


# Android GO Low-RAM configuration
$(call inherit-product, build/target/product/go_defaults_512.mk)

# This device is HDPI
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Bootsplash image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ARIESVE.rle:root/ARIESVE.rle

# WiFi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Wifi calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram_net.txt:system/vendor/firmware/nvram_net.txt

# WPA supplicant
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf\
    wificond \
    wifilogd

# Sensors
PRODUCT_PACKAGES += \
    sensors.ariesve 

# Disable OMX Treble
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false

# HIDLs
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.light@2.0-impl \
    android.hardware.renderscript@1.0-impl \
    android.hardware.power@1.0-impl \
    android.hardware.sensors@1.0-impl \
    android.hardware.vibrator@1.0-impl \
    android.hardware.wifi@1.0-service \
    android.hardware.drm@1.0-impl \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    memtrack.msm8660

# Filesystem packages
PRODUCT_PACKAGES += \
    fsck.f2fs \
    resize2fs_static \
    badblocks \
    mke2fs.conf \
    resize2fs \
    make_ext4fs 

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom 

# MAC adress tool
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/system/bin/get_macaddrs:system/bin/get_macaddrs

# Touchscreen configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/quantom-touchscreen.idc:system/usr/idc/quantom-touchscreen.idc

# Keychars and keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/keylayout/ariesve_handset.kl:system/usr/keylayout/ariesve_handset.kl \
    $(LOCAL_PATH)/keylayout/ariesve_keypad.kl:system/usr/keylayout/ariesve_keypad.kl \
    $(LOCAL_PATH)/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl

# Other
PRODUCT_PACKAGES += \
    libgenlock \
    libstlport

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Vendor
$(call inherit-product-if-exists, vendor/samsung/ariesve/device-vendor.mk)
