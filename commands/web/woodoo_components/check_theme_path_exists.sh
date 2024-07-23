#!/bin/bash

function checkThemePathExists() {
    local THEMES_IN_CONFIG
    THEMES_IN_CONFIG=$(grep -oP '^\s*\K[^:]+' .ddev/config-themes.yaml)
    for THEME in $THEMES_IN_CONFIG; do
        THEME_PATH=$(grep -oP '(?<='$THEME': ).*' .ddev/config-themes.yaml | cut -d ' ' -f 1 | sed 's/"//g')
        if [[ ! -d "$THEME_PATH" ]]; then
            echo -e "${txtred}${ICON_ERROR} ${THEME} path does not exist: ${THEME_PATH}${txtrst}"
        else
            echo -e "${txtgrn}${ICON_SUCCESS} ${THEME} path exists: ${THEME_PATH}${txtrst}"
        fi
    done
}
