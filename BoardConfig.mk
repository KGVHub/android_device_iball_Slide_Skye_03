# System-only port: retain the validated KGV-Pro-X boot and stock vendor.
include build/make/target/board/treble_common_32.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
# CONFIG_ANDROID_BINDER_IPC_32BIT=y in the validated kernel.
TARGET_USES_64_BIT_BINDER := false

TARGET_BOARD_PLATFORM := sp7731e
TARGET_BOOTLOADER_BOARD_NAME := sp7731e_1h10
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RECOVERY := true
TARGET_SYSTEM_PROP := device/iball/Slide_Skye_03/system.prop

# Measured raw system partition size. A-only, no system-as-root.
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1363148800
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_USES_GENERIC_AUDIO := false
TARGET_USES_HWC2 := true
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024
