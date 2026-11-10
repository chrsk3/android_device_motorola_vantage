LOCAL_PATH := $(call my-dir)

# --- Binarios de HAL ---
include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.boot-service.qti.recovery
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin/hw
LOCAL_SRC_FILES := prebuilts/bin/hw/android.hardware.boot-service.qti.recovery
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.fastboot-service.example_recovery
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin/hw
LOCAL_SRC_FILES := prebuilts/bin/hw/android.hardware.fastboot-service.example_recovery
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.health-service.qti_recovery
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/system/bin/hw
LOCAL_SRC_FILES := prebuilts/bin/hw/android.hardware.health-service.qti_recovery
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)

# --- Modulos do Kernel (.ko) ---
KO_MODULES := \
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

$(foreach ko,$(KO_MODULES), \
    $(eval include $(CLEAR_VARS)) \
    $(eval LOCAL_MODULE := $(ko)) \
    $(eval LOCAL_MODULE_TAGS := optional) \
    $(eval LOCAL_MODULE_CLASS := ETC) \
    $(eval LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/vendor/lib/modules) \
    $(eval LOCAL_SRC_FILES := prebuilts/modules/$(ko)) \
    $(eval include $(BUILD_PREBUILT)) \
)
