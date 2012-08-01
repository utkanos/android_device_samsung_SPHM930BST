$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/SPHM930BST/SPHM930BST-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/SPHM930BST/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/SPHM930BST/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/charging.rle:recovery/root/charging.rle \
    $(LOCAL_PATH)/SPH-M930BST.rle:recovery/root/SPH-M930BST.rle \
    $(LOCAL_PATH)/init.SPH-M930BST.sh:recovery/root/init.SPH-M930BST.sh \
    $(LOCAL_PATH)/init.SPH-M930BST.post_boot.sh:recovery/root/init.SPH-M930BST.post_boot.sh \
    $(LOCAL_PATH)/lib/modules/bthid.ko:recovery/root/lib/modules/bthid.ko \
    $(LOCAL_PATH)/lib/modules/dhd.ko:recovery/root/lib/modules/dhd.ko \
    $(LOCAL_PATH)/lib/modules/qce.ko:recovery/root/lib/modules/qce.ko \
    $(LOCAL_PATH)/lib/modules/qcedev.ko:recovery/root/lib/modules/qcedev.ko \
    $(LOCAL_PATH)/lib/modules/qcrypto.ko:recovery/root/lib/modules/qcrypto.ko \
    $(LOCAL_PATH)/sbin/rmt_storage:recovery/root/sbin/rmt_storage \
    $(LOCAL_PATH)/system/lib/libc.so:recovery/root/system/lib/libc.so \
    $(LOCAL_PATH)/system/lib/libcutils.so:recovery/root/system/lib/libcutils.so \
    $(LOCAL_PATH)/system/lib/liblog.so:recovery/root/system/lib/liblog.so \
    $(LOCAL_PATH)/system/lib/libm.so:recovery/root/system/lib/libm.so \
    $(LOCAL_PATH)/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    $(LOCAL_PATH)/system/bin/linker:recovery/root/system/bin/linker
    



$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_SPHM930BST
PRODUCT_DEVICE := SPHM930BST
