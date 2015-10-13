
################################  common copy ##########################################################

#thememanager
$(shell rm -rf $(TARGET_OUT)/media/theme/thememanager;)
$(shell mkdir -p --mode=755 $(TARGET_OUT)/media/theme/thememanager;)
$(shell cp -a ./nubia/vendor/IdleCommonResources/theme/* $(TARGET_OUT)/media/theme/thememanager/.;)

################################## common copy end ####################################################
