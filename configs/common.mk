# Brand
PRODUCT_BRAND ?= simpleaosp

# Local path for prebuilts
LOCAL_PATH:= vendor/simpleaosp/prebuilts/common/system

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=RobotsforEveryone.ogg \
    ro.config.notification_sound=Europa.ogg \
    ro.config.alarm_alert=Helium.ogg \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    persist.sys.root_access=3

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/simpleaosp/overlays/common

# Needed Packages
PRODUCT_PACKAGES += \
    CMHome \
    Stk \
    Superuser \
    su \
    ThemeChooser \
    ThemesProvider \
    Trebuchet

# Superuser support
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Blobs for media effects
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Backuptool support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-simpleaosp.sh:system/addon.d/50-simepleaosp.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# Bootanimation support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

# Enable bootanimation enhancements
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Theme engine permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/com.tmobile.software.themes.xml:system/etc/permissions/com.tmobile.software.themes.xml \
    $(LOCAL_PATH)/etc/permissions/org.cyanogenmod.theme.xml:system/etc/permissions/org.cyanogenmod.theme.xml

# Cyanogenmod permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# Inlcude stock audio makefile
-include vendor/simpleaosp/configs/stockaudio.mk

# If simpleaosp_mako then inlclude mako extras makefile
ifneq ($(filter simpleaosp_mako,$(TARGET_PRODUCT)),)
 -include vendor/simpleaosp/configs/makoextras.mk
endif
