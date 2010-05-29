LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.supersonic.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.supersonic.rc | $(ACP)
	$(transform-prebuilt-to-target)
