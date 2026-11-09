LOCAL_PATH := device/motorola/vantage

PRODUCT_PACKAGES += \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
