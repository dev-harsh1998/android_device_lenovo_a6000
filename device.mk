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

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# AAPT CONFIG
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libgenlock \
    libtinyxml \
    memtrack.msm8916

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    debug.mdpcomp.idletime=600 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    debug.enable.sglscale=1

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Disable buffer age
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix \
    audio.primary.msm8916 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

PRODUCT_COPY_FILES += \
    device/lenovo/a6000/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml

# Audio
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/audio/acdb/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
    device/lenovo/a6000/audio/acdb/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
    device/lenovo/a6000/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    device/lenovo/a6000/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    device/lenovo/a6000/audio/mixer_paths.xml:system/vendor/etc/mixer_paths_qrd_skui.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=false \
    vendor.audio.offload_wakelock=false

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.av.streaming.offload.enable=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.msm8916 \
    libmm-qcamera \
    libshim_atomic \
    Snap

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cpp.duplication=false \
    persist.camera.hal.debug.mask=0

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service \
    gps.msm8916

PRODUCT_COPY_FILES += \
    device/lenovo/a6000/gps/flp.conf:system/etc/flp.conf \
    device/lenovo/a6000/gps/gps.conf:system/etc/gps.conf \
    device/lenovo/a6000/gps/izat.conf:system/etc/izat.conf \
    device/lenovo/a6000/gps/sap.conf:system/etc/sap.conf \
    device/lenovo/a6000/gps/quipc.conf:system/etc/quipc.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/lenovo/a6000/overlay \
    device/lenovo/a6000/overlay-lineage

# Enforced RRO targets
PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=smd \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc \
    init.qcom.rc \
    init.qcom.post_boot.sh \
    init.qcom.power.rc \
    init.qcom.ssr.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

# Media
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxSwVencHevc \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# Media config
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml

# Media
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    device/lenovo/a6000/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service.a6000 \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8

# IRSC
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/sec_config:system/vendor/etc/sec_config

# First api level, device has been commercially launched
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=19

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-01-01

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=false

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Touchscreen
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.a6000

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=1 \
    vidc.enc.narrow.searchrange=1

# Keylayout
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lenovo/a6000/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl\
    device/lenovo/a6000/keylayout/qpnp_pon.kl:system/usr/keylayout/qpnp_pon.kl

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# WiFi HAL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service \
    libwpa_client

PRODUCT_PACKAGES += \
    hostapd \
    wificond \
    wifilogd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lenovo/a6000/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/lenovo/a6000/configs/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini

# Wifi
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lenovo/a6000/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lenovo/a6000/wifi/WCNSS_wlan_dictionary.dat:system/etc/firmware/wlan/prima/WCNSS_wlan_dictionary.dat

# WiFi Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# Optimize
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapminfree=6m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.zygotemaxfailedboots=5 \
    dalvik.vm.foreground-heap-growth-multiplier=2.0 \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.dex2oat-swap=false \
    dalvik.vm.dex2oat-threads=2 \
    ro.vendor.qti.am.reschedule_service=true \
    sys.use_fifo_ui=1

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.smartselection.bundle1

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0 \
    persist.data.target=dpm1 \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=false \
    ro.use_data_netmgrd=true \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=112,911,110,122,119,120,000,118 \
    persist.radio.ecc_hard_count=1 \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.telephony.default_network=9,1 \
    persist.data.netmgrd.qos.enable=false

# RIL
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/data/netmgr_config.xml:system/vendor/etc/data/netmgr_config.xml \
    device/lenovo/a6000/configs/data/qmi_config.xml:system/vendor/etc/data/qmi_config.xml \
    device/lenovo/a6000/configs/data/dsi_config.xml:system/vendor/etc/data/dsi_config.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    qti-telephony-common

PRODUCT_BOOT_JARS += \
    telephony-ext

# Seccomp
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/seccomp/mediacodec-seccomp.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    device/lenovo/a6000/seccomp/mediaextractor-seccomp.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    accelcal \
    AccCalibration \
    sensord \
    sensors.msm8916

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml \
    device/lenovo/a6000/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

# Config File
PRODUCT_COPY_FILES += \
    device/lenovo/a6000/configs/thermal-engine.conf:system/vendor/etc/thermal-engine.conf

# USB ID
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.usb.id.midi=90BA \
    ro.usb.id.midi_adb=90BB \
    ro.usb.id.mtp=2281 \
    ro.usb.id.mtp_adb=2282 \
    ro.usb.id.ptp=2284 \
    ro.usb.id.ptp_adb=2283 \
    ro.usb.id.ums=2286 \
    ro.usb.id.ums_adb=2285 \
    ro.usb.vid=2970

$(call inherit-product, vendor/lenovo/a6000/a6000-vendor.mk)
