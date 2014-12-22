export ARCHS = armv7 armv7s arm64
export TARGET = iphone:clang:8.1:8.1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = nupsidedown
nupsidedown_FRAMEWORKS = UIKit Foundation
# nupsidedown_LIBRARIES = applist activator
nupsidedown_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += nupsidedownprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
