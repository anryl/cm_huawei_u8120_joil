ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8120)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := tccgetserial.c
LOCAL_MODULE := tccgetserial
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

endif
