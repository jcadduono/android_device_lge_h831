# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-andreno530
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x004C00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x004C00000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x0UNKNOWN
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0UNKNOWN
#BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x0UNKNOWN
BOARD_FLASH_BLOCK_SIZE := 262144

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Android boot image creation
TARGET_PREBUILT_KERNEL := device/lge/h831/Image.gz
TARGET_PREBUILT_DTB := device/lge/h831/dtb.img
BOARD_CUSTOM_BOOTIMG_MK :=  device/lge/h831/bootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=20M@0-0xffffffff androidboot.hardware=h1 androidboot.bootdevice=624000.ufshc androidboot.selinux=permissive dhash_entries=131072 ihash_entries=131072
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/module/g_android/parameters/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_SCREEN_BLANK_ON_BOOT := true
TW_MTP_DEVICE := "/dev/mtp_usb"
# exFAT enabled in kernel for now, exfat-fuse was causing problems
TW_NO_EXFAT_FUSE := true

# Encryption support
# - Only enable standard crypto for now to support AOSP/CM crypto
TW_INCLUDE_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true
