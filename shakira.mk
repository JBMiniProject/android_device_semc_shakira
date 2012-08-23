# Copyright (C) 2012 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := shakira
PRODUCT_DEVICE := shakira
PRODUCT_MODEL := E15i

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

# Graphics
PRODUCT_PACKAGES := \
    copybit.msm7x27 \
    gralloc.msm7x27 \
    hwcomposer.msm7x27 \
    libopencorehw \
    libQcomUI

# OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libdivxdrmdecrypt \
    libstagefrighthw

# Camera
#PRODUCT_PACKAGES += \
#    camera.msm7x27

# GPS
PRODUCT_PACKAGES += \
    gps.delta

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaudioutils

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    rild \
    wlan_cu \
    wlan_loader

# OpenSSH
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Bugmailer
PRODUCT_PACKAGES += \
    send_bug

PRODUCT_COPY_FILES += \
    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct..xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Prebuilt files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/app/SystemConnector.apk:system/app/SystemConnector.apk \
    $(LOCAL_PATH)/prebuilt/bin/a2sd:system/bin/a2sd \
    $(LOCAL_PATH)/prebuilt/bin/akmd2:system/bin/akmd2 \
    $(LOCAL_PATH)/prebuilt/bin/chargemon:system/bin/chargemon \
    $(LOCAL_PATH)/prebuilt/bin/dhcpcd:system/bin/dhcpcd \
    $(LOCAL_PATH)/prebuilt/bin/hciattach:system/bin/hciattach \
    $(LOCAL_PATH)/prebuilt/bin/nvimport:system/bin/nvimport \
    $(LOCAL_PATH)/prebuilt/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/prebuilt/bin/qmuxd:system/bin/qmuxd \
    $(LOCAL_PATH)/prebuilt/bin/semc_chargalg:system/bin/semc_chargalg \
    $(LOCAL_PATH)/prebuilt/bin/tiap_cu:system/bin/tiap_cu \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader:system/bin/tiap_loader \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader.sh:system/bin/tiap_loader.sh \
    $(LOCAL_PATH)/prebuilt/bin/updatemiscta:system/bin/updatemiscta \
    $(LOCAL_PATH)/prebuilt/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/prebuilt/etc/adreno_config.txt:system/etc/adreno_config.txt \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    $(LOCAL_PATH)/prebuilt/etc/hw_config.sh:system/etc/hw_config.sh \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fmc_init_1273.1.bts:system/etc/firmware/fmc_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_rx_init_1273.1.bts:system/etc/firmware/fm_rx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_tx_init_1273.1.bts:system/etc/firmware/fm_tx_init_1273.1.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/fm_tx_init_1273.2.bts:system/etc/firmware/fm_tx_init_1273.2.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01mountext:system/etc/init.d/01mountext \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10dnsconf:system/etc/init.d/10dnsconf \
    $(LOCAL_PATH)/prebuilt/etc/init.d/10hostapconf:system/etc/init.d/10hostapconf \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    $(LOCAL_PATH)/prebuilt/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
    $(LOCAL_PATH)/prebuilt/etc/wifi/dnsmasq.conf:system/etc/wifi/dnsmasq.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan_firmware.bin:system/etc/wifi/tiwlan_firmware.bin \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_firmware_ap.bin:system/etc/wifi/softap/tiwlan_firmware_ap.bin \
    $(LOCAL_PATH)/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio_policy.msm7x27.so:system/lib/hw/audio_policy.msm7x27.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/audio.primary.msm7x27.so:system/lib/hw/audio.primary.msm7x27.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/hal_seport.default.so:system/lib/hw/hal_seport.default.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/lights.default.so:system/lib/hw/lights.default.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/lights.delta.so:system/lib/hw/lights.delta.so \
    $(LOCAL_PATH)/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector/libuinputdevicejni.so:system/lib/libsystemconnector/libuinputdevicejni.so \
    $(LOCAL_PATH)/prebuilt/lib/libaudioeq.so:system/lib/libaudioeq.so \
    $(LOCAL_PATH)/prebuilt/lib/libauth.so:system/lib/libauth.so \
    $(LOCAL_PATH)/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    $(LOCAL_PATH)/prebuilt/lib/libcamera.so:system/lib/libcamera.so \
    $(LOCAL_PATH)/prebuilt/lib/libcm.so:system/lib/libcm.so \
    $(LOCAL_PATH)/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
    $(LOCAL_PATH)/prebuilt/lib/libdll.so:system/lib/libdll.so \
    $(LOCAL_PATH)/prebuilt/lib/libdsm.so:system/lib/libdsm.so \
    $(LOCAL_PATH)/prebuilt/lib/libdss.so:system/lib/libdss.so \
    $(LOCAL_PATH)/prebuilt/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    $(LOCAL_PATH)/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    $(LOCAL_PATH)/prebuilt/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    $(LOCAL_PATH)/prebuilt/lib/libmiscta.so:system/lib/libmiscta.so \
    $(LOCAL_PATH)/prebuilt/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmipl.so:system/lib/libmmipl.so \
    $(LOCAL_PATH)/prebuilt/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    $(LOCAL_PATH)/prebuilt/lib/libnv.so:system/lib/libnv.so \
    $(LOCAL_PATH)/prebuilt/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    $(LOCAL_PATH)/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    $(LOCAL_PATH)/prebuilt/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
    $(LOCAL_PATH)/prebuilt/lib/liboncrpc.so:system/lib/liboncrpc.so \
    $(LOCAL_PATH)/prebuilt/lib/libopencore_common.so:system/lib/libopencore_common.so \
    $(LOCAL_PATH)/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    $(LOCAL_PATH)/prebuilt/lib/libpbmlib.so:system/lib/libpbmlib.so \
    $(LOCAL_PATH)/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
    $(LOCAL_PATH)/prebuilt/lib/libqueue.so:system/lib/libqueue.so \
    $(LOCAL_PATH)/prebuilt/lib/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/prebuilt/lib/libsemc_ril.so:system/lib/libsemc_ril.so \
    $(LOCAL_PATH)/prebuilt/lib/libsystemconnector_hal_jni.so:system/lib/libsystemconnector_hal_jni.so \
    $(LOCAL_PATH)/prebuilt/lib/libuim.so:system/lib/libuim.so \
    $(LOCAL_PATH)/prebuilt/lib/libwms.so:system/lib/libwms.so \
    $(LOCAL_PATH)/prebuilt/lib/libwmsts.so:system/lib/libwmsts.so \
    $(LOCAL_PATH)/prebuilt/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/keychars/shakira_keypad.kcm.bin:system/usr/keychars/shakira_keypad.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/shakira_keypad.kl:system/usr/keylayout/shakira_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    $(LOCAL_PATH)/prebuilt/xbin/rzscontrol:system/xbin/rzscontrol \
    $(LOCAL_PATH)/prebuilt/xbin/zipalign:system/xbin/zipalign

# Prebuilt Updater-script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/update-binary:obj/EXECUTABLES/updater_intermediates/updater

PRODUCT_LOCALES += mdpi
