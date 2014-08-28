# Local path for mako extras
LOCAL_PATH:= vendor/simpleaosp/extras/mako

# New adreno drivers
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/firmware/a330_pfp.fw:system/vendor/firmware/a330_pfp.fw \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/firmware/a330_pm4.fw:system/vendor/firmware/a330_pm4.fw \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/libplayback_adreno.so:system/vendor/lib/egl/libplayback_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    $(LOCAL_PATH)/NewAdrenoDrivers/system/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so 

# G3 bionic patch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/G3bionic/system/lib/libc.so:system/lib/libc.so \
    $(LOCAL_PATH)/G3bionic/system/lib/libm.so:system/lib/libm.so

# Z2 dalvik patch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/Z2dalvik/system/bin/dalvikvm:system/bin/dalvikvm \
    $(LOCAL_PATH)/Z2dalvik/system/bin/dexopt:system/bin/dexopt \
    $(LOCAL_PATH)/Z2dalvik/system/bin/installd:system/bin/installd \
    $(LOCAL_PATH)/Z2dalvik/system/lib/libcutils.so:system/lib/libcutils.so \
    $(LOCAL_PATH)/Z2dalvik/system/lib/libdvm.so:system/lib/libdvm.so \
    $(LOCAL_PATH)/Z2dalvik/system/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so 
