# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from tostab03 device
$(call inherit-product, device/toshiba/tostab03/device_tostab03.mk)

# Camera
PRODUCT_PACKAGES := \
	HoloSpiralWallpaper \
	LiveWallpapersPicker \
	VisualizationWallpapers \

PRODUCT_PACKAGES += \
    	Camera
    	
# AGPS patch
PRODUCT_COPY_FILES += \
    device/toshiba/tostab03/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/toshiba/tostab03/prebuilt/etc/SuplRootCert:system/etc/SuplRootCert \
    device/toshiba/tostab03/prebuilt/etc/gps/gpsconfig.xml:system/etc/gps/gpsconfig.xml 

# Inherit full-base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_tostab03
PRODUCT_DEVICE := tostab03
PRODUCT_BRAND := toshiba
PRODUCT_MODEL := Toshiba THRiVE
