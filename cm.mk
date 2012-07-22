## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/semc/shakira/shakira.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := E15i
PRODUCT_DEVICE := shakira
PRODUCT_NAME := cm_shakira
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := X8
PRODUCT_MANUFACTURER := Sony Ericsson

# Release data
PRODUCT_VERSION_DEVICE_SPECIFIC := 01
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := vertical-320x480

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E15i BUILD_ID=JRO03C BUILD_DISPLAY_ID=JRO03C