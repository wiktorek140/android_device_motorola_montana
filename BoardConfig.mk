#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from msm8937-common
-include device/motorola/msm8937-common_49/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/montana_49

# Assert
TARGET_OTA_ASSERT_DEVICE := montana,montana_49

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=27

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := montana_defconfig
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += dm=\"system none ro,0 1 android-verity /dev/mmcblk0p53\"
BOARD_KERNEL_LZ4C_DT := true

# Metadata for 4.9
BOARD_USES_METADATA_PARTITION := true

# NFC
NXP_CHIP_TYPE := pn554

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272

# Security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/montana/BoardConfigVendor.mk

# Sensor multi HAL
USE_SENSOR_MULTI_HAL := true
