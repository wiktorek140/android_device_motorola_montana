#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Device specific part
$(call inherit-product, device/motorola/montana/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_montana
PRODUCT_DEVICE := montana
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G5S
PRODUCT_MANUFACTURER := motorola


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="montana_retail-user 8.1.0 OPPS28.65-37-7-12 073f74 release-keys" \
    PRODUCT_NAME="montana"

BUILD_FINGERPRINT := motorola/montana_retail/montana:8.1.0/OPPS28.65-37-7-12/073f74:user/release-keys
