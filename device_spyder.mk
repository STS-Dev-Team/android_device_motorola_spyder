#
# This is the product configuration for a full spyder
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/spyder/overlay

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    charger \
    charger_res_images

# Audio - use stock ICS leak files for now
PRODUCT_COPY_FILES += \
    device/motorola/spyder/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/spyder/audio/audio.a2dp.default.so:/system/lib/hw/audio.a2dp.default.so \
    device/motorola/spyder/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/spyder/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/spyder/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/spyder/audio/libaudio_ext.so:/system/lib/libaudio_ext.so

# Hardware HALs
PRODUCT_PACKAGES += \
    camera.omap4 \
    libinvensense_mpl \

PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy \

# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libaudiomodemgeneric \
    libreference-cdma-sms \
    rild \
    radiooptions \

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    TQS_D_1.7.ini \
    crda \
    regulatory.bin \
    calibrator

# Wifi Direct
PRODUCT_PACKAGES += \
    ti_wfd_libs

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# Release utilities
PRODUCT_PACKAGES += \
    spyder_releaseutils-check_kernel \
    spyder_releaseutils-finalize_release \
    spyder_releaseutils-mke2fs \
    spyder_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    evtest \
    camera_test \
    Superuser \
    su \
    DockAudio \
    tinymix \
    tinycap \
    tinyplay \
    parse_hdmi_edid \

#    sh \
#    alsa_amixer \
#    alsa_aplay \
#    alsa_ctl \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \

# WirelessTether
PRODUCT_PACKAGES += wifi_tether_v3_2-pre1
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \
    

# Rootfs files
PRODUCT_COPY_FILES += \
    device/motorola/spyder/root/default.prop:/root/default.prop \
    device/motorola/spyder/root/init.rc:/root/init.rc \
    device/motorola/spyder/root/init.mapphone_cdma.rc:/root/init.mapphone_cdma.rc \
    device/motorola/spyder/root/init.mapphone_umts.rc:/root/init.mapphone_umts.rc \
    device/motorola/spyder/root/ueventd.rc:/root/ueventd.rc \
    device/motorola/spyder/root/ueventd.mapphone_cdma.rc:/root/ueventd.mapphone_cdma.rc \
    device/motorola/spyder/root/ueventd.mapphone_umts.rc:/root/ueventd.mapphone_umts.rc \

# Kexec files
PRODUCT_COPY_FILES += \
    device/motorola/spyder/kexec/arm_kexec.ko:system/etc/kexec/arm_kexec.ko \
    device/motorola/spyder/kexec/atags:system/etc/kexec/atags \
    device/motorola/spyder/kexec/devtree:system/etc/kexec/devtree \
    device/motorola/spyder/kexec/kexec:system/etc/kexec/kexec \
    device/motorola/spyder/kexec/kexec.ko:system/etc/kexec/kexec.ko \
    device/motorola/spyder/kexec/uart.ko:system/etc/kexec/uart.ko \
    out/target/product/spyder/ramdisk.img:system/etc/kexec/ramdisk.img \
    out/target/product/spyder/kernel:system/etc/kexec/kernel \

# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \


# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/bin/battd:system/bin/battd \
    device/motorola/spyder/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/spyder/prebuilt/bin/strace:system/bin/strace \
    device/motorola/spyder/prebuilt/etc/firmware/ducati-m3.bin:/system/etc/firmware/ducati-m3.bin \
    device/motorola/spyder/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/spyder/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/spyder/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/spyder/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/spyder/prebuilt/usr/idc/evfwd.idc:system/usr/idc/evfwd.idc \
    device/motorola/spyder/prebuilt/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc:system/usr/idc/Motorola_Mobility_Motorola_HD_Dock.idc \
    device/motorola/spyder/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/motorola/spyder/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/motorola/spyder/prebuilt/usr/keychars/evfwd.kcm:system/usr/keychars/evfwd.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/motorola/spyder/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/motorola/spyder/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/cy8c201xx.kl:system/usr/keylayout/cy8c201xx.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/evfwd.kl:system/usr/keylayout/evfwd.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
    device/motorola/spyder/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \

# Graphics
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/imgtec/lib/hw/gralloc.omap4430.so:/system/vendor/lib/hw/gralloc.omap4.so \
    device/motorola/spyder/prebuilt/imgtec/lib/egl/libEGL_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/egl/libGLESv2_POWERVR_SGX540_120.so:/system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libglslcompiler_SGX540_120.so:/system/vendor/lib/libglslcompiler_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libIMGegl_SGX540_120.so:/system/vendor/lib/libIMGegl_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libpvr2d_SGX540_120.so:/system/vendor/lib/libpvr2d_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libpvrANDROID_WSEGL_SGX540_120.so:/system/vendor/lib/libpvrANDROID_WSEGL_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libPVRScopeServices_SGX540_120.so:/system/vendor/lib/libPVRScopeServices_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libsrv_init_SGX540_120.so:/system/vendor/lib/libsrv_init_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libsrv_um_SGX540_120.so:/system/vendor/lib/libsrv_um_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/lib/libusc_SGX540_120.so:/system/vendor/lib/libusc_SGX540_120.so \
    device/motorola/spyder/prebuilt/imgtec/bin/pvrsrvinit:/system/vendor/bin/pvrsrvinit \
    device/motorola/spyder/prebuilt/imgtec/bin/pvrsrvctl_SGX540_120:/system/vendor/bin/pvrsrvctl_SGX540_120 \
    device/motorola/spyder/prebuilt/imgtec/etc/powervr.ini:/system/etc/powervr.ini \

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/motorola/spyder/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \

# Phone settings
PRODUCT_COPY_FILES += \
    device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \
    vendor/cm/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml \

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US


# copy all kernel modules under the "modules" directory to system/lib/modules
#PRODUCT_COPY_FILES += $(shell \
#    find device/motorola/spyder/modules -name '*.ko' \
#    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
#    | tr '\n' ' ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/spyder/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product-if-exists, vendor/verizon/verizon-ics.mk)

$(call inherit-product-if-exists, vendor/motorola/spyder/spyder-vendor.mk)


$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_spyder
PRODUCT_DEVICE := spyder
