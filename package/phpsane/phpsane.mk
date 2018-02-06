# PHPSANE

PHPSANE_VERSION = 0.8.0
PHPSANE_SOURCE = phpSANE-$(PHPSANE_VERSION).zip
PHPSANE_SITE = http://downloads.sourceforge.net/project/phpsane/phpsane/$(PHPSANE_VERSION)
PHPSANE_LICENSE = COPYING

define PHPSANE_EXTRACT_CMDS
  $(UNZIP) -d $(@D) $(DL_DIR)/$(PHPSANE_SOURCE)
endef

define PHPSANE_INSTALL_TARGET_CMDS
  mkdir -p $(TARGET_DIR)/var/www
  cp -R $(@D)/* $(TARGET_DIR)/var/www/
endef

$(eval $(generic-package))
