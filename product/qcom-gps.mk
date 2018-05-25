# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml
