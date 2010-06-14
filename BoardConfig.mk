#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi

TARGET_NO_BOOTLOADER := true

TARGET_BOOTLOADER_BOARD_NAME := inc

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x20000000

BOARD_HAVE_BLUETOOTH := true

TARGET_HARDWARE_3D := false

BOARD_GPS_LIBRARIES := libgps librpc

BOARD_VENDOR_USE_AKMD := true

USE_PV_WINDOWS_MEDIA := true

BOARD_USE_HTC_APPS := true

BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00280000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00500000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x05a00000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x127c0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

USE_CAMERA_STUB := true

BOARD_HAS_NO_SELECT_BUTTON := true