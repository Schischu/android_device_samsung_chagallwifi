#
# Copyright 2016 The Android Open-Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_NAME := chagallwifixx
PRODUCT_DEVICE := chagallwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T800
PRODUCT_MANUFACTURER := samsung

$(call inherit-product, device/samsung/chagall-klimt-common/device.mk)
$(call inherit-product, device/samsung/chagallwifi/device.mk)

$(call inherit-product-if-exists, vendor/samsung/chagallwifi/device-vendor.mk)

PRODUCT_NAME := aosp_chagallwifi

PRODUCT_PACKAGES += \
    Launcher3 \
    OneTimeInitializer \
    Gallery2 \
    OpenDelta

