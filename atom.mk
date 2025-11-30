LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := yosys
LOCAL_CATEGORY_PATH := tools
LOCAL_DESCRIPTION := Yosys Open SYnthesis Suite.

YOSYS_BUILD_DIR := $(call local-get-build-dir)
YOSYS_SOURCE_DIR := $(LOCAL_PATH)

YOSYS_MAKE_ARGS := \
	-C $(YOSYS_BUILD_DIR) \
	-f $(LOCAL_PATH)/Makefile \
	PREFIX=$(TARGET_OUT_STAGING)

# Build step
define LOCAL_CMD_BUILD
	@echo "Building yosys"
	$(MAKE) $(YOSYS_MAKE_ARGS)
	@echo "yosys built"
endef

# Build install
define LOCAL_CMD_INSTALL
	@echo "Installing yosys"
	$(MAKE) install $(YOSYS_MAKE_ARGS)
	@echo "yosys installed"
endef

include $(BUILD_CUSTOM)