TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = movepagedots2prefs

movepagedots2prefs_FILES = MPDRootListController.m
movepagedots2prefs_FRAMEWORKS = UIKit
movepagedots2prefs_PRIVATE_FRAMEWORKS = Preferences
movepagedots2prefs_INSTALL_PATH = /Library/PreferenceBundles
movepagedots2prefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
