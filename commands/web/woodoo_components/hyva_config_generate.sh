#!/bin/bash

function hyvaConfigGenerate() {
    THEME_PATH=$1
    THEME_CODE=$2

    if [[ ! -d "${THEME_PATH}/web/tailwind" ]]; then
        echo -e "${txtred}${ICON_ERROR} ${THEME_CODE} is not a valid Hyvä Theme. Please check your config.yaml${txtrst}"
        exit 0
    fi

    if [[ ! -f "${THEME_PATH}/web/tailwind/tailwind.config.js" ]]; then
        echo -e "${txtred}${ICON_ERROR} ${THEME_CODE} is missing the tailwind.config.js file. Please check your config.yaml${txtrst}"
        exit 0
    fi

    if [[ ! -f "${THEME_PATH}/web/tailwind/postcss.config.js" ]]; then
        echo -e "${txtred}${ICON_ERROR} ${THEME_CODE} is missing the postcss.config.js file. Please check your config.yaml${txtrst}"
        exit 0
    fi

    if [[ ! -f "${THEME_PATH}/web/tailwind/package.json" ]]; then
        echo -e "${txtred}${ICON_ERROR} ${THEME_CODE} is missing the package.json file. Please check your config.yaml${txtrst}"
        exit 0
    fi

    echo -e "${txtgrn}${ICON_SUCCESS} ${txtpur}${THEME_CODE}${txtcyn} is a valid Hyvä Theme${txtrst}"
}
