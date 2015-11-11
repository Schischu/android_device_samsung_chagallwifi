#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),chagallwifi)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Create links for wifi data files
$(shell mkdir -p $(TARGET_OUT_ETC)/wifi; \
	ln -sf /system/etc/wifi/bcmdhd_apsta.bin \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_apsta.bin_4354_a1;\
	ln -sf /system/etc/wifi/bcmdhd_apsta.bin_a0 \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_apsta.bin_4354_a0;\
	\
	ln -sf /system/etc/wifi/bcmdhd_ibss.bin \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_ibss.bin_4354_a1;\
	ln -sf /system/etc/wifi/bcmdhd_ibss.bin_a0 \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_ibss.bin_4354_a0;\
	\
	ln -sf /system/etc/wifi/bcmdhd_mfg.bin \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_mfg.bin_4354_a1;\
	ln -sf /system/etc/wifi/bcmdhd_mfg.bin_a0 \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_mfg.bin_4354_a0;\
	\
	ln -sf /system/etc/wifi/bcmdhd_sta.bin \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_sta.bin_4354_a1;\
	ln -sf /system/etc/wifi/bcmdhd_sta.bin_a0 \
		$(TARGET_OUT_ETC)/wifi/bcmdhd_sta.bin_4354_a0;\
	)

# Create links for opencl data files
$(shell mkdir -p $(TARGET_OUT_VENDOR_SHARED_LIBRARIES); \
	ln -sf /system/vendor/lib/egl/libGLES_mali.so \
		$(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libOpenCL.so.1.1;\
	)

endif
