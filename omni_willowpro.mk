#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from willowpro device
$(call inherit-product, device/vsmart/willowpro/device.mk)

PRODUCT_DEVICE := willowpro
PRODUCT_NAME := omni_willowpro
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Star 4
PRODUCT_MANUFACTURER := vsmart

PRODUCT_GMS_CLIENTID_BASE := android-vsmart

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="willowpro_open-user 10 QP1A.190711.020 V341A_OPN_U_A5_210301 release-keys"

BUILD_FINGERPRINT := vsmart/willowpro_open/willowpro:10/QP1A.190711.020/V341A_OPN_U_A5_210301:user/release-keys
