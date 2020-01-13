# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.fluence.speaker=false

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-threads=6

# GPU
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610

# RescueParty disable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=montana
