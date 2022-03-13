##############################################################
#
# AESD-CHAR-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHAR_VERSION = d26722b6f1557ee418abb711561de3a910ffa69a #commit for assignment 3
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

AESD_CHAR_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-samu7988.git
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

# Adding aesd-char-driver subdirectory.

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/


# TODO adding all the dependencies(aesd-char).
define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/drivertest.sh $(TARGET_DIR)/usr/bin


endef

$(eval $(kernel-module))
$(eval $(generic-package))
