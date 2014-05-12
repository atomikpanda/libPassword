TARGET = iphone:clang:7.1:2.0
ARCHS = armv7 armv7s arm64
CFLAGS = -fobjc-arc

THEOS_PACKAGE_DIR_NAME = debs

include theos/makefiles/common.mk
include theos/makefiles/library.mk
include theos/makefiles/bundle.mk

TWEAK_NAME = libPass

libPass_FILES = libPass.m Tweak.xm
libPass_FRAMEWORKS = AVFoundation UIKit Security

include $(THEOS_MAKE_PATH)/tweak.mk

#SUBPROJECTS += libPassPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk
