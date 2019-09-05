LOCAL_PATH:= $(call my-dir)

$(info, $(LOCAL_PATH))

# ======================================
# 加载libOpenCV.so
# ======================================
OPENCV_INSTALL_MODULES:=on
OPENCV_CAMERA_MODULES:=off
OPENCV_LIB_TYPE:=STATIC
ifeq ("$(wildcard $(OPENCV_MK_PATH))","")
	include /Users/subowen/WorkDir/SDKDir/OpenCV-android-sdk/sdk/native/jni/OpenCV.mk
else
	include $(OPENCV_MK_PATH)
endif

#include $(CLEAR_VARS)
LOCAL_MODULE := libOpenCVTest
LOCAL_MODULE_TAGS := OpenCVTest
LOCAL_CFLAGS += -DANDROID

LOCAL_C_INCLUDES += /Users/subowen/WorkDir/SDKDir/OpenCV-android-sdk/sdk/native/jni/include \

LOCAL_SRC_FILES += $(LOCAL_PATH)/../../demo/testOpenCV.cpp

LOCAL_CFLAGS += -fPIC -pie -fPIE -Wno-deprecated-declarations
LOCAL_LDLIBS += -lz -ldl -llog -fPIE -pie
LOCAL_LDLIBS += -llog -landroid -lEGL -lGLESv2
include $(BUILD_EXECUTABLE)
