sdm-libs := sdm/libs
display-hals := include $(sdm-libs)/utils $(sdm-libs)/core

display-hals += libcopybit libmemtrack hdmi_cec \
                $(sdm-libs)/hwc $(sdm-libs)/hwc2 gpu_tonemapper libdrmutils libdisplayconfig
display-hals += gralloc

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))
