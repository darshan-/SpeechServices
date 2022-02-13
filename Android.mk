LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#PRODUCT_COPY_FILES += \
#        packages/apps/SpeechServices/default_permissions_com.google.android.tts.xml:/system/etc/default-permissions/com.google.android.tts.xml \

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := SpeechServices

LOCAL_CERTIFICATE := PRESIGNED

LOCAL_SRC_FILES := SpeechServices.apk

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

#LOCAL_PACKAGE_NAME := com.google.android.tts
LOCAL_PRIVILEGED_MODULE := true

#LOCAL_REQUIRED_MODULES := default_permissions_com.google.android.tts privapp_whitelist_com.google.android.tts

# Maybe?
#TARGET_OUT_DATA_APPS_PRIVILEGED := $(TARGET_OUT_DATA)/priv-app

#PRODUCT_COPY_FILE += your/build/tree/$FILE:path/to/location/on/device/$FIL

# Let's make sure we have a proper build, because we don't actually know if this isn't working, or
#  or if something else is causing the bootloop.  Time for a sanity check.
# And, um, oops... I had this in packages/apps/Car/libs/car-ui-lib/referencedesign/product.mk and its stuff here...
#  Still want the sanity check first, though

# Okay, let's try adding privapp permissions to the master file, see if we can boot, and then try
#  only adding default permissions this way.
# Ooh... and/or install app to system_ext?  and/or install these files to /system/etc, not /system_ext/etc?
#PRODUCT_COPY_FILES += \
#        packages/apps/SpeechServices/default_permissions_com.google.android.tts.xml:/system_ext/etc/default-permissions/default_permissions_com.google.android.tts.xml \
    packages/apps/SpeechServices/privapp_whitelist_com.google.android.tts.xml:/system_ext/etc/permissions/com.google.android.tts.xml \


include $(BUILD_PREBUILT)
