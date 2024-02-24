#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common risingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := rising_sunfish

# RisingOS variables
RISING_MAINTAINER := xioyo&F1a5H
RISING_CHIPSET := Snapdragon730G

# Gms variables
WITH_GMS := true

# Ship Pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true

# Use Google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
