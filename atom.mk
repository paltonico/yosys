LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := yosys
LOCAL_CATEGORY_PATH := tools
LOCAL_DESCRIPTION := Yosys Open SYnthesis Suite.

LOCAL_ARCHIVE_VERSION := 0.59.1
LOCAL_ARCHIVE := $(LOCAL_MODULE)-$(LOCAL_ARCHIVE_VERSION).tar.gz
LOCAL_ARCHIVE_SUBDIR := $(LOCAL_MODULE)-$(LOCAL_ARCHIVE_VERSION)

YOSYS_BUILD_DIR := $(call local-get-build-dir)

YOSYS_MAKE_ARGS := \
	-C $(YOSYS_BUILD_DIR)/$(LOCAL_ARCHIVE_SUBDIR)

# Build step
define LOCAL_CMD_BUILD
	@echo "Building yosys"
	$(MAKE) $(YOSYS_MAKE_ARGS)
	@echo "yosys built"
endef

include $(BUILD_CUSTOM)