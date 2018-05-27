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

# Platform
TARGET_BOOTLOADER_BOARD_NAME := ariesve
TARGET_OTA_ASSERT_DEVICE := ariesve,GT-I9001
TARGET_BOARD_PLATFORM := msm7x30
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a8 #todo: add scorpion optimized variant
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_NEON := true

# Legacy ADB
TARGET_USES_LEGACY_ADB_INTERFACE := true

# LOWRAM
MALLOC_SVELTE := true 

# Legacy MMAP for pre-lollipop blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_NEEDS_GCC_LIBC := true
ANDROID_NO_TEST_CHECK := true

# Kernel
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/msm7x30-common
TARGET_KERNEL_CONFIG := ariesve_defconfig
BOARD_KERNEL_IMAGE_NAME := zImage

# Enable dex-preoptimization to speed up first boot sequence
WITH_DEXPREOPT := false #todo: fix build errors

# Graphics
TARGET_USES_C2D_COMPOSITION := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true 
BOARD_USES_LEGACY_MMAP := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# OREO MANIFEST
DEVICE_MANIFEST_FILE := device/samsung/ariesve/manifest.xml

# Memory allocation
BOARD_NEEDS_MEMORYHEAPPMEM := true

# QCOM
BOARD_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_USES_QCOM_HARDWARE := true

# Lights HAL
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8110080
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1447034880
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5146411008
BOARD_CACHEIMAGE_PARTITION_SIZE := 545259520
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_BLOCK_DISCARD := true
BOARD_REQUIRES_FORCE_VPARTITION := true

# Target filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# CWM Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/ariesve
TARGET_RECOVERY_FSTAB := device/samsung/ariesve/rootdir/fstab.qcom

# TWRP recovery
# GZIP_RAMDISK_TARGETS := recovery
DEVICE_RESOLUTION := 480x800
TW_TARGET_USES_QCOM_BSP := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_POWER_BUTTON := 107
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_SDCARD_ON_DATA := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_FB2PNG := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NEW_ION_HEAP := true
TARGET_RECOVERY_DENSITY := mdpi
