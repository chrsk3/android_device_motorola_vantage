LOCAL_PATH := device/motorola/vantage

BUILD_BROKEN_ELF_PREBUILT_IN_PRODUCT_COPY_FILES := true

PRODUCT_PACKAGES += \
    fastbootd \
    qcom_decrypt \
    qcom_decrypt_fbe \
    android.hardware.boot-service.qti.recovery \
    android.hardware.fastboot-service.example_recovery \
    android.hardware.health-service.qti_recovery \
    android.hardware.boot-V1-ndk.so \
    android.hardware.fastboot-V1-ndk.so \
    android.hardware.health-V4-ndk.so \
    libboot_control_client.so \
    libboot_control_qti.so \
    bm_adsp_ulog.ko \
    goodix_brl_thp.ko \
    mmi_annotate.ko \
    mmi_glink_charger.ko \
    mmi_info.ko \
    mmi_relay.ko \
    moto_f_usbnet.ko \
    panel_event_notifier.ko \
    qti_glink_charger_v2.ko \
    sensors_class.ko \
    touchscreen_mmi.ko

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
