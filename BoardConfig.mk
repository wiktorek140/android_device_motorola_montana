#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/montana

# Assert
TARGET_OTA_ASSERT_DEVICE := montana

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
BOARD_DTBTOOL_ARGS := --force-v3 --motorola 1
TARGET_KERNEL_CONFIG := montana_defconfig
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0x78B0000 androidboot.selinux=permissive

# NFC
NXP_CHIP_TYPE := pn554
ODM_MANIFEST_SKUS += n
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/odm_manifest_n.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 99879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272

# Security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/montana/BoardConfigVendor.mk
