GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk
THEOS_DEVICE_IP = 10.0.0.4

BUNDLE_NAME = VolHUD
VolHUD_FILES = HDDRootListController.m
VolHUD_INSTALL_PATH = /Library/PreferenceBundles
VolHUD_FRAMEWORKS = UIKit Preferences
VolHUD_LDFLAGS += -F../Frameworks/

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/VolHUD.plist$(ECHO_END)
