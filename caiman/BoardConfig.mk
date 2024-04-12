#
# Copyright (C) 2020 The Android Open-Source Project
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

# Enable load module in parallel
BOARD_BOOTCONFIG += androidboot.load_modules_parallel=true

# The modules which need to be loaded in sequential
BOARD_KERNEL_CMDLINE += exynos_drm.load_sequential=1
BOARD_KERNEL_CMDLINE += g2d.load_sequential=1
BOARD_KERNEL_CMDLINE += samsung_iommu_v9.load_sequential=1
BOARD_KERNEL_CMDLINE += vh_sched.load_sequential=1
BOARD_KERNEL_CMDLINE += pcie_exynos_gs.load_sequential=1

TARGET_BOARD_INFO_FILE := device/google/caimito/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := caiman
TARGET_SCREEN_DENSITY := 480
BOARD_USES_GENERIC_AUDIO := true
USES_DEVICE_GOOGLE_CAIMITO := true

include device/google/caimito/device-caimito-common.mk

include device/google/zumapro/BoardConfig-common.mk
-include vendor/google_devices/zumapro/prebuilts/BoardConfigVendor.mk
-include vendor/google_devices/caiman/proprietary/BoardConfigVendor.mk
include device/google/caimito-sepolicy/caiman-sepolicy.mk
include device/google/caimito/wifi/BoardConfig-wifi.mk

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
-include device/google/common/etm/6_1/BoardUserdebugModules.mk
endif
