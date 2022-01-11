TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = movepagedots2

movepagedots2_EXTRA_FRAMEWORKS += Cephei

movepagedots2_FILES = Tweak.x
movepagedots2_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += movepagedots2prefs
include $(THEOS_MAKE_PATH)/aggregate.mk
