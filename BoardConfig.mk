#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from common
-include device/intel/cherrytrail-common/BoardConfigCommon.mk

DEVICE_PATH := device/intel/chuwi_hi10pro

# Assert
TARGET_OTA_ASSERT_DEVICE := cht_cr_mrd_w,chuwi_vi10plus,chuwi_hi10pro

# Kernel
BOARD_KERNEL_IMAGE_NAME := bzImage
KERNEL_TOOLCHAIN := /home/devvil/los13/prebuilts/gcc/linux-x86/x86/x86_64-linux-android-4.9/bin
TARGET_KERNEL_ARCH := x86_64
TARGET_KERNEL_CONFIG := x86_64_chuwi_hi10pro_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android-
TARGET_KERNEL_SOURCE := kernel/intel/cherrytrail

#Prebuilt Kernel
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Partition sizes
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27783069696

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Block based ota
BLOCK_BASED_OTA := false
