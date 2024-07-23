#!/bin/bash

function buildHyva() {
    THEME_PATH=$1
    THEME_CODE=$2

    echo -e "${txtcyn}Building Hyvä Theme: ${txtpur}${THEME_CODE}${txtrst}"
    cd "${THEME_PATH}/web/tailwind" || exit
    npm ci
    npm run build
    echo -e "${txtgrn}Hyvä Theme ${txtpur}${THEME_CODE}${txtgrn} built successfully.${txtrst}"
}
