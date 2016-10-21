LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES:= \
 		dirtyc0w.c

LOCAL_SHARED_LIBRARIES :=

#error: undefined reference to 'android::IMediaPlayerService::asInterface(android::sp<android::IBinder> const&)'

LOCAL_WHOLE_STATIC_LIBRARIES := \

ifeq ($(TARGET_ARCH),arm64)
	LOCAL_CFLAGS += -DARCH64
else
	LOCAL_ARM_MODE := arm
endif


LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)	\
	bionic



LOCAL_CFLAGS += -Werror -Wno-error=deprecated-declarations -Wall
#LOCAL_CLANG := true
LOCAL_MODULE_TARGET_ARCH :=	arm
# TARGET_PREFER_32_BIT := true
# LOCAL_MODULE_STEM_32 := CVE_2016_0811
LOCAL_MODULE_PATH := /home/FloatG/code/android6.0.1/external/Vulnerbility/PWN
LOCAL_MODULE:= dirtyc0w
include $(BUILD_EXECUTABLE)

