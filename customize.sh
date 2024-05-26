SKIPUNZIP=0
ASH_STANDALONE=0
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
"
set_perm_recursive $MODPATH 0 0 0755 0644