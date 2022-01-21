#
# Copyright (C) 2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Ancient Official-ify
ANCIENT_OFFICIAL := true
#ANCIENT_WEEABO := true
FORCE_OTA := true
#TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
ANCIENT_GAPPS := true
REMOVE_GAPPS_PACKAGES += \
    NetworkPermissionConfigGoogle \
    NetworkStackGoogle

PRODUCT_NAME := ancient_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2123

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus9Pro \
    PRODUCT_NAME=OnePlus9Pro_EEA \
    PRIVATE_BUILD_DESC="redfin-user 11 SQ1A.211205.008 7888514 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/SQ1A.211205.008/7888514:user/release-keys"
