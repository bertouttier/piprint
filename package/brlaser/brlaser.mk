################################################################################
#
# BRLASER 
#
################################################################################

BRLASER_VERSION = ba25b63af6b5bd7de58ee11571a15090c7114256 
BRLASER_SITE = https://github.com/pdewacht/brlaser.git
BRLASER_SITE_METHOD = git
BRLASER_LICENSE = GPLv2+
BRLASER_LICENSE_FILES = COPYING 
BRLASER_DEPENDENCIES = cups
BRLASER_CONF_OPTS = -DEXTRA_CXX_FLAGS=-isystem\ $(HOST_DIR)/arm-buildroot-linux-uclibcgnueabihf/sysroot/usr/include \
                    -DCUPS_CONFIG=$(HOST_DIR)/arm-buildroot-linux-uclibcgnueabihf/sysroot/usr/bin/cups-config


$(eval $(cmake-package))
