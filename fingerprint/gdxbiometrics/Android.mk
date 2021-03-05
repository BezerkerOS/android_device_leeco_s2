LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.biometrics.fingerprint@2.1-service.leeco_s2
LOCAL_INIT_RC := android.hardware.biometrics.fingerprint@2.1-service.leeco_s2.rc
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := \
    BiometricsFingerprint.cpp \
    service.cpp \
    fingerprintd/FingerprintDaemonCallbackProxy.cpp \
    fingerprintd/FingerprintDaemonProxy.cpp \
    fingerprintd/IFingerprintDaemonCallback.cpp \
    fingerprintd/IFingerprintDaemon.cpp \
    fingerprintd/wrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libcutils \
    liblog \
    libhidlbase \
    libhardware \
    libutils \
    libkeystore_aidl \
    android.hardware.biometrics.fingerprint@2.1

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
