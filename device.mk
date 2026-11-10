LOCAL_PATH := device/motorola/vantage

PRODUCT_PACKAGES += \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe \
    android.hardware.boot-service.qti.recovery \
    android.hardware.fastboot-service.example_recovery \
    android.hardware.health-service.qti_recovery

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
