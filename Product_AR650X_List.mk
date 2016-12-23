LOCAL_PATH := $(call my-dir)

#======================AR650X PRODUCT LIST BEGIN=================================
#======================ADD NEW PRODUCT NAME BELOW================================
ifeq ($(YEP_PRODUCT_NAME),AR6500)
    KERNEL_DEFCONFIG := msm8909_ar650x_defconfig
endif

ifeq ($(YEP_PRODUCT_NAME),AR6501)
    KERNEL_DEFCONFIG := msm8909_ar650x_defconfig
endif

ifeq ($(YEP_PRODUCT_NAME),AR6502)
    KERNEL_DEFCONFIG := msm8909_ar6502_defconfig
endif

ifeq ($(YEP_PRODUCT_NAME),AR6505)
    KERNEL_DEFCONFIG := msm8909_ar6505_defconfig
endif
#======================AR650X PRODUCT LIST END=================================
