# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files
$(call inherit-product, vendor/simpleaosp/configs/common.mk)

# Setup device specific product configuration
PRODUCT_NAME := simpleaosp_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint overrides
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4.4/KTU84Q/1253334:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4.4 KTU84Q 1253334 release-keys"

# Proprietary libmmcamera_interface.so because of green bar bug
PRODUCT_COPY_FILES += \
    vendor/simpleaosp/prebuilts/common/system/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so
