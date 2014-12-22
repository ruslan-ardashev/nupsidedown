include theos/makefiles/common.mk

BUNDLE_NAME = nupsidedownprefs
nupsidedownprefs_FILES = nupsidedownprefs.mm
nupsidedownprefs_INSTALL_PATH = /Library/PreferenceBundles
nupsidedownprefs_FRAMEWORKS = UIKit
nupsidedownprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/nupsidedownprefs.plist$(ECHO_END)
