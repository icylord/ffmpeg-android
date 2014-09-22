LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := videodecoder
LOCAL_SRC_FILES := h264decoder.c

LOCAL_C_INCLUDES := $(LOCAL_C_INCLUDES) $(LOCAL_PATH)/ffmpeg-android/armv7-a/include
LOCAL_LDFLAGS := -L$(LOCAL_PATH)/ffmpeg-android/armv7-a/lib

LOCAL_CFLAGS := -std=c99 -Wall -fvisibility=hidden
LOCAL_LDFLAGS := $(LOCAL_LDFLAGS) -Wl,--gc-sections 
LOCAL_LDLIBS := -llog -lavformat -lavcodec -lswscale -lavutil -lx264

include $(BUILD_SHARED_LIBRARY)
