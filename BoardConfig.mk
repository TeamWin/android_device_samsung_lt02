# Platform
TARGET_ARCH                  := arm
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_BOARD_PLATFORM        := mrvl
TARGET_BOARD_PLATFORM_GPU    := vivante-gc1000
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_CPU_VARIANT           := cortex-a9
TARGET_CPU_SMP               := true
TARGET_SOC                   := pxa988
ARCH_ARM_HAVE_TLS_REGISTER   := true
ARCH_ARM_HAVE_NEON           := true
TARGET_BOOTLOADER_BOARD_NAME := lt02
BOARD_VENDOR                 := samsung

TARGET_GLOBAL_CFLAGS   += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp


# U-boot
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/lt02/prebuilt/zImage

BOARD_KERNEL_CMDLINE     := androidboot.selinux=permissive androidboot.hardware=pxa988
BOARD_KERNEL_BASE        := 0x10000000
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_SECOND_OFFSET      := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS     := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline "androidboot.selinux=permissive androidboot.hardware=pxa988"
BOARD_CUSTOM_BOOTIMG_MK  := device/samsung/lt02/mkbootimg.mk
BOARD_KERNEL_PAGESIZE    := 2048


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1507852288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5775556608
BOARD_FLASH_BLOCK_SIZE             := 4096
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_HAS_NO_MISC_PARTITION        := true


# Update OTA
BLOCK_BASED_OTA := false


# Assert
TARGET_OTA_ASSERT_DEVICE   := lt02,lt02wifi,lt023g
BOARD_HAS_NO_SELECT_BUTTON := true


# TWRP
BOARD_USES_MMCUTILS        := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERY_SWIPE       := true
RECOVERY_FSTAB_VERSION     := 2
TARGET_RECOVERY_FSTAB      := device/samsung/lt02/recovery.fstab
BOARD_UMS_LUNFILE          := "/sys/class/android_usb/f_mass_storage/lun/file"
TW_MTP_DEVICE              := "/dev/usb_mtp_gadget"

TW_THEME                     := landscape_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

TARGET_RECOVERY_INITRC := device/samsung/lt02/recovery/root/init.rc

RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
RECOVERY_GRAPHICS_USE_LINELENGTH      := true

TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE    := true

TW_INTERNAL_STORAGE_PATH        := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH        := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD        := true
SP1_NAME                        := "efs"
SP1_BACKUP_METHOD               := files

TW_EXCLUDE_TWRPAPP           := true
TW_USE_TOOLBOX               := true
TW_INCLUDE_FUSE_EXFAT        := true
TW_INCLUDE_CRYPTO            := false
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_NO_CPU_TEMP               := true
TW_NO_HAPTICS                := true
TW_EXTRA_LANGUAGES           := false

RECOVERY_SDCARD_ON_DATA := false


# MRVL hardware + Graphics
BOARD_USES_MRVL_HARDWARE          := true
MRVL_ION                          := true
MRVL_INTERFACE_ANIMATION          := true
TARGET_FORCE_CPU_UPLOAD           := true
USE_OPENGL_RENDERER               := true
BOARD_USE_BGRA_8888               := true
BOARD_HAVE_PIXEL_FORMAT_INFO      := true
BOARD_USE_VIVANTE_GRALLOC         := true
MRVL_LAUNCH_DMS_IN_SURFACEFLINGER := true


# Resolution
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH  := 600
