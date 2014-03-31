# Inherit device configuration.
$(call inherit-product, device/malata/smba1002/device-smba1002.mk)

# Inherit some common LiquidSmooth stuff.
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# Change these to values from a stock SMBA1002 rom

PRODUCT_NAME := liquid_smba1002
PRODUCT_BRAND := Malata
PRODUCT_DEVICE := smba1002
PRODUCT_MODEL := Malata SMBA1002
PRODUCT_MANUFACTURER := Malata
#Stole from Pershoot (should allow better market selection)
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:4.0.4/IMM76D/UELPL:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 4.0.4 IMM76D UELPL release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := SMBA1002
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.smba1002.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD 		:= true
TARGET_BOOTANIMATION_TEXTURE_CACHE      := true
TARGET_BOOTANIMATION_USE_RGB565         := true
TARGET_SCREEN_HEIGHT 			:= 1024
TARGET_SCREEN_WIDTH 			:= 600
