#!/bin/bash

function getMagento2_ThemeStoreCodes() {
    local THEME_CODES
    THEME_CODES=$(mysql -u root -proot -e "SELECT theme_code FROM magento2_theme_store_codes;" magento2)
    echo "$THEME_CODES"
}
