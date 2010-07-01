#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi
#TARGET_CPU_ABI2 := armeabi
#TARGET_ARCH_VARIANT := armv7-a
#ARCH_ARM_HAVE_TLS_REGISTER := true
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := inc


# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_NO_CACHED_BUFFERS := true

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x20000000

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libgps librpc

USE_PV_WINDOWS_MEDIA := false

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x0f800000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x09500000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_DATADATA := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_DATA_DEVICE := /dev/block/mmcblk0p1
BOARD_DATA_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p2
BOARD_CACHE_FILESYSTEM := ext3

BOARD_EGL_CFG := vendor/htc/inc/egl.cfg

ENABLE_ANIMATED_GIF := true
ALLOW_LGPL := true
