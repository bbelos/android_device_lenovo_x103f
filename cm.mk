#
# Copyright (C) 2012 The CyanogenMod Project
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
# Boot animation
#TARGET_SCREEN_HEIGHT := 1024
#TARGET_SCREEN_WIDTH := 768

# Release name
PRODUCT_RELEASE_NAME := msm8909

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/x103f/full_x103f.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_x103f
PRODUCT_BRAND := lenovo
PRODUCT_DEVICE := x103f
PRODUCT_MODEL := TB-X103F
PRODUCT_MANUFACTURER := lenovo



