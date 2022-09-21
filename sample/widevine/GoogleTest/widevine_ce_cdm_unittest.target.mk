# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := widevine_ce_cdm_unittest
DEFS_Debug := \
	'-DOEMCRYPTO_TESTS' \
	'-DUNIT_TEST' \
	'-DCORE_TESTS' \
	'-DCDM_TESTS' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-fno-exceptions \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=c++11

INCS_Debug := \
	-Iinclude \
	-Iinclude \
	-I../../../rootfs/protobuf/include \
	-Ithird_party/gmock/include \
	-Ithird_party/gmock/gtest/include

DEFS_Release := \
	'-DOEMCRYPTO_TESTS' \
	'-DUNIT_TEST' \
	'-DCORE_TESTS' \
	'-DCDM_TESTS' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-fno-exceptions \
	-O2

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=c++11

INCS_Release := \
	-Iinclude \
	-Iinclude \
	-I../../../rootfs/protobuf/include \
	-Ithird_party/gmock/include \
	-Ithird_party/gmock/gtest/include

OBJS := \
	$(obj).target/$(TARGET)/src/cdm_test_main.o \
	$(obj).target/$(TARGET)/src/device_cert.o \
	$(obj).target/$(TARGET)/src/test_host.o \
	$(obj).target/$(TARGET)/src/oec_device_features.o \
	$(obj).target/$(TARGET)/src/oec_session_util.o \
	$(obj).target/$(TARGET)/src/oemcrypto_test.o \
	$(obj).target/$(TARGET)/src/base64_test.o \
	$(obj).target/$(TARGET)/src/cdm_engine_test.o \
	$(obj).target/$(TARGET)/src/cdm_session_unittest.o \
	$(obj).target/$(TARGET)/src/config_test_env.o \
	$(obj).target/$(TARGET)/src/device_files_unittest.o \
	$(obj).target/$(TARGET)/src/generic_crypto_unittest.o \
	$(obj).target/$(TARGET)/src/http_socket.o \
	$(obj).target/$(TARGET)/src/initialization_data_unittest.o \
	$(obj).target/$(TARGET)/src/license_request.o \
	$(obj).target/$(TARGET)/src/license_unittest.o \
	$(obj).target/$(TARGET)/src/license_keys_unittest.o \
	$(obj).target/$(TARGET)/src/policy_engine_unittest.o \
	$(obj).target/$(TARGET)/src/policy_engine_constraints_unittest.o \
	$(obj).target/$(TARGET)/src/test_printers.o \
	$(obj).target/$(TARGET)/src/url_request.o \
	$(obj).target/$(TARGET)/src/cdm_test.o \
	$(obj).target/$(TARGET)/src/cdm_test_printers.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/third_party/libgmock.a $(obj).target/third_party/libgtest.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-g

LDFLAGS_Release :=

LIBS := \
	-lrt \
	-ljpeg \
	-lpthread \
	-lhi_widevineCdm \
	-lssl \
	-lcrypto \
	-lhi_widevine_tee_googletest \
	-lhi_msp \
	-lhi_common \
	-lteec \
	-lprotobuf \
	-ldl

$(builddir)/widevine_ce_cdm_unittest: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/widevine_ce_cdm_unittest: LIBS := $(LIBS)
$(builddir)/widevine_ce_cdm_unittest: LD_INPUTS := $(OBJS) $(obj).target/third_party/libgmock.a $(obj).target/third_party/libgtest.a
$(builddir)/widevine_ce_cdm_unittest: TOOLSET := $(TOOLSET)
$(builddir)/widevine_ce_cdm_unittest: $(OBJS) $(obj).target/third_party/libgmock.a $(obj).target/third_party/libgtest.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/widevine_ce_cdm_unittest
# Add target alias
.PHONY: widevine_ce_cdm_unittest
widevine_ce_cdm_unittest: $(builddir)/widevine_ce_cdm_unittest

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/widevine_ce_cdm_unittest

