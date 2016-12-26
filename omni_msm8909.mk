# Omni Stuff 
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := omni_msm8909
PRODUCT_DEVICE := msm8909
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := lenovo
PRODUCT_MODEL := msm8909

PRODUCT_MAKEFILES := \
        $(LOCAL_DIR)/msm8909.mk

