# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files
$(call inherit-product, vendor/simpleaosp/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := simpleaosp_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.4.4/KTU84Q/1253334:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.4.4 KTU84Q 1253334 release-keys"

# new adreno drivers
PRODUCT_COPY_FILES += \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/firmware/a330_pfp.fw:system/vendor/firmware/a330_pfp.fw \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/firmware/a330_pm4.fw:system/vendor/firmware/a330_pm4.fw \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libCB.so:system/vendor/lib/libCB.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libgsl.so:system/vendor/lib/libgsl.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    vendor/simpleaosp/proprietary/mako/system/NewAdrenoDrivers/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so 

#G3 bionic patch
PRODUCT_COPY_FILES += \
	vendor/simpleaosp/proprietary/mako/system/G3bionic/system/lib/libc.so:system/lib/libc.so \
	vendor/simpleaosp/proprietary/mako/system/G3bionic/system/lib/libm.so:system/lib/libm.so

# Z2 dalvik patch
PRODUCT_COPY_FILES += \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/bin/dalvikvm:system/bin/dalvikvm \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/bin/dexopt:system/bin/dexopt \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/bin/installd:system/bin/installd \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/lib/libcutils.so:system/lib/libcutils.so \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/lib/libdvm.so:system/lib/libdvm.so \
	vendor/simpleaosp/proprietary/mako/system/Z2dalvik/system/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so 
