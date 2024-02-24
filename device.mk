#
# Copyright (C) 2024 The Android Open Source Project
#

LOCAL_PATH := device/cat/S42G

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Treble
BOARD_VNDK_VERSION := current

# VIRTUAL A/B
ENABLE_VIRTUAL_AB := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    vendor \
    product \
    boot \
    vbmeta_vendor \
    vbmeta_system

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl.recovery \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-impl-recovery \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client \
    bootctrl

PRODUCT_PACKAGES += \
    bootctrl.$(TARGET_BOARD_PLATFORM) \
    bootctrl.$(TARGET_BOARD_PLATFORM).recovery

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \

# MTK PlPath Utils
PRODUCT_PACKAGES += \
    mtk_plpath_utils \
    mtk_plpath_utils.recovery

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

