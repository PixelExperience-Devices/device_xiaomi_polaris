#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/polaris

# Assert
TARGET_OTA_ASSERT_DEVICE := polaris

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/polaris
TARGET_KERNEL_CONFIG := polaris_defconfig
TARGET_KERNEL_CLANG_VERSION := proton
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-proton/bin
KERNEL_SUPPORTS_LLVM_TOOLS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# NFC
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Properties
TARGET_PRODUCT_PROP+= $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/polaris/BoardConfigVendor.mk
