#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/cupid/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/cupid

# Bootloader
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/board/board-info.txt

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/configs/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 480

# UDFPS
SOONG_CONFIG_NAMESPACES += BIOMETRIC_XIAOMI
SOONG_CONFIG_BIOMETRIC_XIAOMI += USES_UDFPS_SENSOR
SOONG_CONFIG_BIOMETRIC_XIAOMI_USES_UDFPS_SENSOR := true
