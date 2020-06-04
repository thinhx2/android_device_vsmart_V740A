#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from V740A device
$(call inherit-product, device/vsmart/V740A/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_V740A
PRODUCT_DEVICE := V740A
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := V740A_open
PRODUCT_MANUFACTURER := vsmart

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "vsmart/V740A_open/V740A:10/QKQ1.191117.002/V740A_OPN_U_B10_200530:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=V740A \
    PRODUCT_NAME=V740A \
    PRIVATE_BUILD_DESC="V740A-user 10 QKQ1.191117.002 V740A_OPN_U_B10_200530 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-vsmart
