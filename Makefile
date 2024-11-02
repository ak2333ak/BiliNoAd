TARGET = iphone:clang:latest:15.0
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = bili-universal


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BiliNoAd

BiliNoAd_FILES = Tweak.x
BiliNoAd_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

