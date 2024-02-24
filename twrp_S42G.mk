#
# Copyright (C) 2024 The Android Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from S42G device
$(call inherit-product, device/cat/S42G/device.mk)

PRODUCT_DEVICE := S42G
PRODUCT_NAME := twrp_S42G
PRODUCT_BRAND := Cat
PRODUCT_MODEL := S42
PRODUCT_MANUFACTURER := Cat

PRODUCT_GMS_CLIENTID_BASE := android-bullitt

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=S42G \
    PRODUCT_NAME=S42 \
    PRIVATE_BUILD_DESC="vnd_v500-user 12 SP1A.210812.016 LTE_C01091.12_NE_S42G_2.012.00 release-keys"

BUILD_FINGERPRINT := Cat/S42/S42G:12/SP1A.210812.016/LTE_C01091.12_NE_S42G_2.012.00:user/release-keys
