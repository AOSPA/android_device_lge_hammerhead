#
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2017 Paranoid Android
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

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth
PRODUCT_PACKAGES += \
    bdAddrLoader

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/BCM4339_003.001.009.0079.0339.hcd:$(TARGET_COPY_OUT_VENDOR)/firmware/bcm4335c0.hcd

# Camera
PRODUCT_PACKAGES += \
    camera.hammerhead \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    mm-jpeg-interface-test \
    mm-qcamera-app

# Charging Mode
PRODUCT_PACKAGES += \
    charger_res_images

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_ds_api \
    libloc_core \
    libizat_core \
    libgeofence \
    libgps.utils \
    gps.msm8974 \
    flp.msm8974 \
    liblbs_core \
    flp.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/sec_config:system/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kcm:system/usr/keychars/gpio-keys.kcm \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl \
    $(LOCAL_PATH)/keylayout/qpnp_pon.kcm:system/usr/keychars/qpnp_pon.kcm \
    $(LOCAL_PATH)/keylayout/Button_Jack.kl:system/usr/keylayout/msm8974-taiko-mtp-snd-card_Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/Button_Jack.kcm:system/usr/keychars/msm8974-taiko-mtp-snd-card_Button_Jack.kcm \
    $(LOCAL_PATH)/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    $(LOCAL_PATH)/keylayout/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
    $(LOCAL_PATH)/keylayout/touch_dev.idc:system/usr/idc/touch_dev.idc

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.hammerhead

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/etc/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/rootdir/etc/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Misc
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_PACKAGES += \
    libtinyxml

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.default \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/rootdir/etc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.hammerhead \
    init.hammerhead.rc \
    init.hammerhead.usb.rc \
    init.hammerhead.power.rc \
    init.recovery.hammerhead.rc \
    ueventd.hammerhead.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8974

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)

# Call the proprietary setup
$(call inherit-product, vendor/lge/hammerhead/hammerhead-vendor.mk)
