LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libcmcc-crypto
LOCAL_CFLAGS := \
	-std=gnu99 \
	-DLOG=1
LOCAL_SRC_FILES := \
	src/init.c
LOCAL_SHARED_LIBRARIES := \
	liblog \
	libdl \
	libcutils \
	libcrypto
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cmccc
LOCAL_SRC_FILES := \
	src/service.c
LOCAL_CFLAGS := \
	-std=gnu99 \
	-DLOG=1
LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libcmcc-crypto
include $(BUILD_EXECUTABLE)
