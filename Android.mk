#
# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

ifneq ($(filter hammerhead, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

LOCAL_AAPT_INCLUDE_ALL_RESOURCES := true
LOCAL_AAPT_FLAGS := --extra-packages com.koushikdutta.superuser:com.koushikdutta.widgets -S $(LOCAL_PATH)/../../../external/koush/Widgets/Widgets/res -S $(LOCAL_PATH)/../../../external/koush/Superuser/Superuser/res --auto-add-overlay

LOCAL_SRC_FILES += $(call all-java-files-under,../../../external/koush/Superuser/Superuser/src) $(call all-java-files-under,../../../external/koush/Widgets/Widgets/src)
