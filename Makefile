TARGET := iphone:7.1
ARCHS := armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = passtoad
passtoad_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
