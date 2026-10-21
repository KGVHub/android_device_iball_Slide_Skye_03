# Android 8.1 system image for the stock 27.0 Treble vendor interface.
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_32.mk)
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/go_defaults.mk)

PRODUCT_NAME := lineage_Slide_Skye_03
PRODUCT_DEVICE := Slide_Skye_03
PRODUCT_BRAND := iBall
PRODUCT_MANUFACTURER := iBall
PRODUCT_MODEL := Slide Skye 03
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal large mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES := en_US

# No vendor blobs, firmware, kernel, recovery or userdata in this target.
# Keep authenticated ADB rather than the generic GSI's ro.adb.secure=0.

# These vendor dependencies are proprietary system libraries in the stock ROM.
# The setup script copies them from the already committed stock blob repo.
PRODUCT_COPY_FILES += \
    device/iball/Slide_Skye_03/proprietary/libefuse.so:system/lib/libefuse.so \
    device/iball/Slide_Skye_03/proprietary/librpmbclient.so:system/lib/librpmbclient.so
