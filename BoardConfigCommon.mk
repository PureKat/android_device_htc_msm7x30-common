# Copyright (C) 2011 The CyanogenMod Project
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
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
USE_MALLOC_ALIGNMENT := 16
TARGET_CPU_VARIANT := cortex-a9

# Flags
TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36
TARGET_RECOVERY_FSTAB := device/htc/msm7x30-common/rootdir/fstab.msm7x30
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30-3.0
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_PAGE_SIZE := 4096

# Wi-Fi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME := bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcmdhd.ko"
BOARD_LEGACY_NL80211_STA_EVENTS := true

# QCOM Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/htc/msm7x30-common/rootdir/egl.cfg
BOARD_USES_ADRENO_200 := true
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_PROVIDES_LIBLIGHTS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_QCOM_DISPLAY_VARIANT := legacy

# QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200
TARGET_USES_PMEM := true

# Legacy
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_EGL_NEEDS_LEGACY_FB := true

# Audio
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_PREBUILT_LIBAUDIO := false
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
#TARGET_QCOM_MEDIA_VARIANT := caf

#BOARD_HAVE_QCOM_FM := true
#BOARD_USES_QCOM_AUDIO_LPA := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true
#BOARD_USES_QCOM_AUDIO_SPEECH := true
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# Screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := true
