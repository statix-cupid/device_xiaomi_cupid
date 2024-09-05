#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/cupid/cupid-vendor.mk)

# MiuiCamera
$(call inherit-product, vendor/xiaomi/camera/miuicamera.mk)

# Kernel
TARGET_KERNEL_DIR := device/xiaomi/cupid-kernel
TARGET_KERNEL_VERSION := 5.10

PRODUCT_COPY_FILES += \
    $(TARGET_KERNEL_DIR)/Image:kernel

# Kernel Headers
PRODUCT_VENDOR_KERNEL_HEADERS += device/xiaomi/cupid-kernel/kernel-headers

# Overlay
PRODUCT_PACKAGES += \
    ApertureResCupid \
    FrameworksResCupid \
    NfcResCupid \
    SettingsProviderResCupid \
    SettingsResCupid \
    SystemUIResCupid \
    WifiResCupid

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
