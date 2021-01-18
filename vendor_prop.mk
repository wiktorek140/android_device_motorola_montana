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

# RIL debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ims.disableADBLogs=0 \
    persist.vendor.ims.disableDebugDataPathLogs=0 \
    persist.vendor.ims.disableDebugLogs=0 \
    persist.vendor.ims.disableIMSLogs=0 \
    persist.vendor.ims.disableQXDMLogs=1 \
    persist.vendor.ims.vt.enableadb=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.sensors=montana
