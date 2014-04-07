#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES := \
	drm.service.enabled=true

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)
$(call inherit-product, vendor/vanir/products/beats.mk)

#PRODUCT_PACKAGES += \
#    LiveWallpapersPicker

# Boot Animation
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/boot_animations/480x800.zip:system/media/bootanimation.zip

# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Inherit AOSP device configuration for Manta.
$(call inherit-product, device/malata/smba1002/device-smba1002.mk)

PRODUCT_NAME := vanir_smba1002
PRODUCT_DEVICE := smba1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Malata SMBA1002
PRODUCT_MANUFACTURER := Malata

# Release name and versioning
PRODUCT_RELEASE_NAME := SMBA1002
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.smba1002.$(shell date +%m%d%y).$(shell date +%H%M%S)

#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.4.2/KOT49L/937116:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4.2 KOT49L 937116 release-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=Vanir-SMBA1002
