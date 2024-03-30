#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Cipher stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/cipher/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
#$(call inherit-product, device/google/gs201/cipher_common.mk)

#include device/google/pantah/panther/device-cipher.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := cipher_panther

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Cipher flags
TARGET_BOOT_ANIMATION_RES := $(TARGET_SCREEN_WIDTH)
TARGET_FACE_UNLOCK_SUPPORTED := true
CIPHER_BATTERY := 4355mAh
CIPHER_SCREEN := 6.3
CIPHER_BLUR := true
CIPHER_MAINTAINER := lahaina

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/AP1A.240305.019.A1/11445699:user/release-keys

#$(call inherit-product, vendor/google/panther/panther-vendor.mk)

# Gapps
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
