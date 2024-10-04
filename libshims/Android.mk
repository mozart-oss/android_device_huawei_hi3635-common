#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += external/libexif
LOCAL_MODULE := libshim_hisi
LOCAL_SRC_FILES := shim.c
LOCAL_SHARED_LIBRARIES := liblog libexif
include $(BUILD_SHARED_LIBRARY)
