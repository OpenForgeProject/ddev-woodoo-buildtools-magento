#!/bin/bash

function getThemesFromDB() {
    local THEMES
    THEMES=$(mysql -u root -proot -e "SELECT theme_code FROM magento2_themes;" magento2)
    echo "$THEMES"
}
