################################################################################
#
# SCANSERVJS
#
################################################################################

SCANSERVJS_VERSION = v0.1.2
SCANSERVJS_SITE = https://github.com/sbs20/scanservjs.git
SCANSERVJS_SITE_METHOD = git
SCANSERVJS_LICENSE = GPLv2+
SCANSERVJS_LICENSE_FILES = LICENSE
SCANSERVJS_INSTALL_STAGING = NO
SCANSERVJS_INSTALL_TARGET = YES

define SCANSERVJS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/var/www/scanservjs

	cp -rf $(@D)/* /var/www/scanservjs
	cd $(TARGET_DIR)/var/www/scanservjs; $(NPM) install --production
endef

$(eval $(generic-package))
