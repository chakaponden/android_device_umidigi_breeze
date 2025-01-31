#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/umidigi/breeze/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := umidigi
PRODUCT_DEVICE := breeze
PRODUCT_MANUFACTURER := umidigi
PRODUCT_NAME := lineage_breeze
PRODUCT_MODEL := breeze

PRODUCT_GMS_CLIENTID_BASE := android-umidigi
TARGET_VENDOR := umidigi
TARGET_VENDOR_PRODUCT_NAME := A5_Pro

PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"   
BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"