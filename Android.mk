#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#

#include $(CLEAR_VARS)
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),x103f)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

WCNSS_CFG_INI := $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini
$(WCNSS_CFG_INI): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS_qcom_cfg.ini Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /data/misc/wifi/$(notdir $@) $@

PERSIST_DICT := $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_wlan_dictionary.dat
$(PERSIST_DICT): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS_wlan_dictionary.dat Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /persist/$(notdir $@) $@

PERSIST_MAC := $(TARGET_OUT_ETC)/firmware/wlan/prima/wlan_mac.bin
$(PERSIST_MAC): $(LOCAL_INSTALLED_MODULE)
	@echo "wlan_mac.bin Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /persist/$(notdir $@) $@

WLAN_MODULE_SYMLINK := $(TARGET_OUT)/lib/modules/wlan.ko
$(WLAN_MODULE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "wlan.ko module link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/lib/modules/pronto/pronto_wlan.ko $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_CFG_INI) $(PERSIST_DICT) $(PERSIST_MAC) $(WLAN_MODULE_SYMLINK)

endif
