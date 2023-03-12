#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit from mozart device.
$(call inherit-product, device/huawei/mozart/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

PRODUCT_CHARACTERISTICS := tablet
PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_NAME := lineage_mozart
PRODUCT_DEVICE := mozart
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := Huawei
PRODUCT_MODEL := MediaPad M2 8.0

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Huawei/MOZART/hi3635:6.0/MRA58K/huawei11291304:user/test-keys" \
    PRIVATE_BUILD_DESC="MOZART-user 6.0 MRA58K eng.huawei.20161129.130256 test-keys" \
    TARGET_DEVICE=hi3635
