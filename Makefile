export ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk
THEOS_DEVICE_IP = 10.0.0.4

TWEAK_NAME = VolHUD
VolHUD_FILES = $(wildcard *.xm *.mm)
VolHUD_FRAMEWORKS = UIKit
VolHUD_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += VolHUD
include $(THEOS_MAKE_PATH)/aggregate.mk
