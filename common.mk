#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/huawei/hi3635-common

# Inherit common vendor blobs
$(call inherit-product, vendor/huawei/hi3635-common/hi3635-common-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudioutils \
    libaudioroute \
    libtinyalsa \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(COMMON_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

# Ambient
PRODUCT_PACKAGES += \
    ambientsdk

# Bluetooth
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# GPS
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/gps/clatd.conf:system/etc/clatd.conf \
    $(COMMON_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(COMMON_PATH)/configs/gps/gps47531config.xml:system/etc/gps47531config.xml \
    $(COMMON_PATH)/configs/gps/gps47531config_beta.xml:system/etc/gps47531config_beta.xml

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(COMMON_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OMX
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/omx/topazhp.cfg:system/etc/topazhp.cfg

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(COMMON_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.zygote=zygote64_32 \
    ro.config.sync=yes

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.hi3635 \
    init.hi3635.chip.usb.rc \
    init.hi3635.connectivity.rc \
    init.hi3635.gps.rc \
    init.hi3635.power.rc \
    init.hi3635.power.sh \
    init.hi3635.rc \
    init.hi3635.usb.rc \
    ueventd.hi3635.rc

PRODUCT_PACKAGES += \
    oeminfo_nvm_server \
    hw_healthd \
    teecd

# Shims
PRODUCT_PACKAGES += \
    libshim_hisi \
    libshim_gui

# Thermal
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/thermal/thermald.xml:system/etc/thermald.xml \
    $(COMMON_PATH)/configs/thermal/thermald_performance.xml:system/etc/thermald_performance.xml

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    hostapd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
