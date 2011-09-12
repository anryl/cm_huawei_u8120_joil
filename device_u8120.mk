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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

#$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8120/overlay

PRODUCT_PACKAGES += \
    libRS \
    hwprops \
    rzscontrol \
    libOmxCore \
    libmm-omxcore \
    libOmxVidEnc \
    Gallery \
    Stk \
    Provision \
    LatinIME \
    copybit.u8120 \
    FM \
    SpareParts \
    CMParts \
    CMStats \
    dexpreopt

# FM RADIO
PRODUCT_PACKAGES += \
    FM \
    hcitool

# TSCAlibration	
PRODUCT_PACKAGES += \
    tccgetserial \
    TSCalibration

# Live Wallpapers
PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapersPicker \

# Live Wallpapers support
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# vold
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Compcache module
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/modules/ramzswap.ko:system/lib/modules/2.6.29-perf/ramzswap.ko

# Board-specific init
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/initlogo.rle:root/initlogo.rle

# DHCP config for wifi
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/init.rc:root/init.rc

PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/ueventd.qcom.rc:root/ueventd.qcom.rc

# Keychars & Keylayouts
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/huawei/u8120/prebuilt/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/huawei/u8120/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8120/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8120/prebuilt/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml

# Perfomance tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.compcache.default=0

# Don't put dexfiles in /cache on u8120
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1
	
# Media configuration xml file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# wpa_supplicant configuration file
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Sound and OMX
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8120/prebuilt/etc/AudioFilterU8120.csv:system/etc/AudioFilterU8120.csv \
    device/huawei/u8120/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/huawei/u8120/proprietary/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/huawei/u8120/proprietary/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/huawei/u8120/proprietary/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/huawei/u8120/proprietary/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/huawei/u8120/proprietary/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/huawei/u8120/proprietary/libsnd.so:system/lib/libsnd.so \
    device/huawei/u8120/prebuilt/etc/01_qc.cfg:system/etc/01_qc.cfg

# TScalibration files
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/init.d/11pointercal:system/etc/init.d/11pointercal

# HW
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/lights.msm7k.so:system/lib/hw/lights.msm7k.so \
	device/huawei/u8120/prebuilt/lib/hw/sensors.u8120.so:system/lib/hw/sensors.u8120.so \
    device/huawei/u8120/prebuilt/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
    device/huawei/u8120/prebuilt/lib/hw/gps.default.so:system/lib/hw/gps.default.so
	
# Sensors
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/akmd2:system/bin/akmd2

# GPS
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/etc/gps.conf:system/etc/gps.conf

# Proprietary RIL related and Bluetooth
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/libauth.so:system/lib/libauth.so \
    vendor/huawei/u8120/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/huawei/u8120/proprietary/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/huawei/u8120/proprietary/libdsm.so:system/lib/libdsm.so \
    vendor/huawei/u8120/proprietary/libqueue.so:system/lib/libqueue.so \
    vendor/huawei/u8120/proprietary/libcm.so:system/lib/libcm.so \
    vendor/huawei/u8120/proprietary/libdiag.so:system/lib/libdiag.so \
    vendor/huawei/u8120/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/huawei/u8120/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/huawei/u8120/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/huawei/u8120/proprietary/libwms.so:system/lib/libwms.so \
    vendor/huawei/u8120/proprietary/libnv.so:system/lib/libnv.so \
    vendor/huawei/u8120/proprietary/libwmsts.so:system/lib/libwmsts.so \
    vendor/huawei/u8120/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/huawei/u8120/proprietary/libdss.so:system/lib/libdss.so \
    vendor/huawei/u8120/proprietary/libdll.so:system/lib/libdll.so \
    vendor/huawei/u8120/proprietary/libqmi.so:system/lib/libqmi.so \
    vendor/huawei/u8120/proprietary/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/huawei/u8120/proprietary/qmuxd:system/bin/qmuxd \
    vendor/huawei/u8120/proprietary/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/huawei/u8120/proprietary/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

# OEM RPC
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/modempre:system/bin/modempre \
    vendor/huawei/u8120/proprietary/oem_rpc_svc:system/bin/oem_rpc_svc \
    vendor/huawei/u8120/proprietary/libhwrpc.so:system/lib/libhwrpc.so \
    vendor/huawei/u8120/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so

# Camera
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
    device/huawei/u8120/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    device/huawei/u8120/prebuilt/lib/libqcamera.so:system/lib/libqcamera.so \
    device/huawei/u8120/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/huawei/u8120/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    device/huawei/u8120/prebuilt/lib/libmmprocess.so:system/lib/libmmprocess.so

## Wifi related
PRODUCT_COPY_FILES += \
    vendor/huawei/u8120/proprietary/ar6000.ko:system/wifi/ar6000.ko \
    vendor/huawei/u8120/proprietary/iwlist:system/wifi/iwlist \
    vendor/huawei/u8120/proprietary/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
    vendor/huawei/u8120/proprietary/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
    vendor/huawei/u8120/proprietary/device.bin:system/wifi/device.bin \
    vendor/huawei/u8120/proprietary/udp_server:system/wifi/udp_server \
    vendor/huawei/u8120/proprietary/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
    vendor/huawei/u8120/proprietary/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    vendor/huawei/u8120/proprietary/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
    vendor/huawei/u8120/proprietary/artagent:system/wifi/artagent \
    vendor/huawei/u8120/proprietary/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    vendor/huawei/u8120/proprietary/iwconfig:system/wifi/iwconfig \
    vendor/huawei/u8120/proprietary/libwpa_client.so:system/lib/libwpa_client.so \
    device/huawei/u8120/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/modules/tun.ko:system/lib/modules/2.6.29-perf/tun.ko \

# Other
PRODUCT_COPY_FILES += \
    device/huawei/u8120/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/huawei/u8120/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    device/huawei/u8120/prebuilt/etc/init.d/12cm:system/etc/init.d/12cm

PRODUCT_COPY_FILES += device/huawei/u8120/prebuilt/kernel:kernel

## (2) Also get non-open-source aspects if available
$(call inherit-product-if-exists, vendor/huawei/u8120/u8120-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := cyanogen_u8120
PRODUCT_DEVICE := u8120
PRODUCT_MODEL := Huawei U8120
