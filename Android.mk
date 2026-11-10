LOCAL_PATH := $(call my-dir)

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
