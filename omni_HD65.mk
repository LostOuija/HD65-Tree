#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from HD65 device
$(call inherit-product, device/vortex/HD65/device.mk)

PRODUCT_DEVICE := HD65
PRODUCT_NAME := omni_HD65
PRODUCT_BRAND := Vortex
PRODUCT_MODEL := HD65
PRODUCT_MANUFACTURER := vortex

PRODUCT_GMS_CLIENTID_BASE := android-vortex

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k61v1_64_bsp-user 12 SP1A.210812.016 20230630 release-keys"

BUILD_FINGERPRINT := Vortex/HD65/HD65:12/SP1A.210812.016/20230630:user/release-keys
