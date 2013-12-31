THEOS_DEVICE_IP = 192.168.1.7
ARCHS = armv7 arm64
TARGET = iphone:clang:7.0

include theos/makefiles/common.mk

BUNDLE_NAME = WeeAppTest7
WeeAppTest7_FILES = WeeAppTest7Controller.m
WeeAppTest7_FRAMEWORKS = UIKit
WeeAppTest7_PRIVATE_FRAMEWORKS = SpringBoardUIServices
WeeAppTest7_INSTALL_PATH = /System/Library/WeeAppPlugins/

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 backboardd"
