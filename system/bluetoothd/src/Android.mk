LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= bt-core.c \
                  bt-core-io.c \
                  bt-io.c \
                  bt-pdubuf.c \
                  bt-proto.c \
                  bt-sock.c \
                  bt-sock-io.c \
                  core.c \
                  core-io.c \
                  main.c \
                  service.c
LOCAL_C_INCLUDES := system/libfdio/include
LOCAL_CFLAGS := -DANDROID_VERSION=$(PLATFORM_SDK_VERSION) -Wall -Werror
LOCAL_SHARED_LIBRARIES := libfdio libhardware libcutils liblog
LOCAL_MODULE:= bluetoothd
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
