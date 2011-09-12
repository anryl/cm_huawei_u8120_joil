#
# Copyright (C) 2011 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/huawei/u8120/BoardConfigVendor.mk

# Camera
BOARD_USE_FROYO_LIBCAMERA := true

# ARMv6-compatible processor rev 2 (v6l)
# CPU
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI := armeabi-v6j

# Target properties
TARGET_OTA_ASSERT_DEVICE := u8120
TARGET_BOOTLOADER_BOARD_NAME=u8120

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

## GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := U8120
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

# Browser
JS_ENGINE := v8

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true
BOARD_VENDOR_USE_AKMD := akm8973

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8120/recovery/recovery_ui.c
BOARD_LDPI_RECOVERY := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4708

# HW
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Graphics
TARGET_HARDWARE_3D := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/huawei/u8120/prebuilt/lib/egl/egl.cfg
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# RIL
TARGET_PROVIDES_LIBRIL := true
BOARD_HAS_LIMITED_EGL := true

TARGET_ELECTRONBEAM_FRAMES := 10

# Wifi related defines
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/2.6.29-perf/tun.ko"
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_NAME     := "ar6000"

# MISC
WITH_JIT := true
ENABLE_JSC_JIT := true

# Add TSCalibration premissions
TARGET_PROVIDES_INIT_RC := true

# Kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := mem=211M console=ttyMSM2,115200n8 androidboot.hardware=qcom console=ttyUSBCONSOLE0 androidboot.console=ttyUSBCONSOLE0
BOARD_PAGE_SIZE := 4096

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a6a0000

# (BOARD_KERNEL_PAGESIZE * 64)
BOARD_FLASH_BLOCK_SIZE := 262144 
