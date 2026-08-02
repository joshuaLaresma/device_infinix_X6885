#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#

# Inherit from common AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/infinix/X6885/device.mk)

PRODUCT_NAME := twrp_X6885
PRODUCT_DEVICE := X6885
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := HOT 60 Pro
PRODUCT_MANUFACTURER := Infinix
