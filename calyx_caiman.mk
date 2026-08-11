#
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from lineage device
$(call inherit-product, device/google/caimito/lineage_caiman.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_$(DEVICE_CODENAME)

PRODUCT_RESTRICT_VENDOR_FILES := false
