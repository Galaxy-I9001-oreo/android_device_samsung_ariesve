#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/ariesve.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := ariesve

PRODUCT_NAME := lineage_ariesve
PRODUCT_MANUFACTURER := Samsung
PRODUCT_DEVICE := ariesve
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9001
BOARD_VENDOR := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.6/GINGERBREAD/XXLMJ:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.6 GINGERBREAD XXLMJ release-keys"
