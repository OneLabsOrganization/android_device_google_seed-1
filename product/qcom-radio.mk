# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.custom_ecc=1 \
    persist.radio.ecc_hard_1=998 \
    persist.radio.ecc_hard_count=1 \
    persist.sys.ssr.restart_level=modem \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    ro.telephony.default_network=9

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/vendor/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/vendor/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/vendor/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/data/NsrmConfiguration.xml:system/vendor/etc/dpm/nsrm/NsrmConfiguration.xml \
    $(LOCAL_PATH)/configs/data/dpm.conf:system/vendor/etc/dpm/dpm.conf
endif
