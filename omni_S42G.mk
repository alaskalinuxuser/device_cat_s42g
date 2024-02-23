#
# Copyright (C) 2023 The Android Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S42G device
$(call inherit-product, device/cat/S42G/device.mk)

PRODUCT_DEVICE := S42G
PRODUCT_NAME := omni_S42G
PRODUCT_BRAND := Cat
PRODUCT_MODEL := S42
PRODUCT_MANUFACTURER := cat

PRODUCT_GMS_CLIENTID_BASE := android-bullitt

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_v500-user 10 QP1A.190711.020 LTE_C01091.10_NE_S42G_0.037.01.00 release-keys"

BUILD_FINGERPRINT := Cat/S42/S42G:10/QP1A.190711.020/LTE_C01091.10_NE_S42G_0.037.01.00:user/release-keys
