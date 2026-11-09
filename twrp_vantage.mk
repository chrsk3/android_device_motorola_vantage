$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/motorola/vantage/device.mk)

PRODUCT_NAME := twrp_vantage
PRODUCT_DEVICE := vantage
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola Signature
PRODUCT_MANUFACTURER := motorola
PRODUCT_RELEASE_NAME := vantage
