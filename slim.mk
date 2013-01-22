## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p990/p990.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus2X

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p990
PRODUCT_NAME := slim_p990
PRODUCT_BRAND := lge
PRODUCT_MODEL := P990
PRODUCT_MANUFACTURER := LG

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=star_open_eu BUILD_ID=IMM76L BUILD_FINGERPRINT=lge/star_open_eu/star:4.0.4/IMM76L/LG-P990-P99030a.1211302332:user/release-keys PRIVATE_BUILD_DESC="star_open_eu-user 4.0.4 IMM76L LG-P990-P99030a.1211302332 release-keys"
