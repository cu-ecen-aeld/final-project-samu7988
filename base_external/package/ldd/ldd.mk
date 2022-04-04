
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 742cbeee4df7a75048c7b6cbd222e829e52e5c89
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-samu7988.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES


LDD_MODULE_SUBDIRS = scull/
LDD_MODULE_SUBDIRS += misc-modules/




# TODO add your SCULL and misc-modules
define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin

	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
$(eval $(kernel-module))
