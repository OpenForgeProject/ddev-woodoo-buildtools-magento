#!/bin/bash

function buildMagentoDefault() {
    THEME_CODE=$1

    echo -e "${txtcyn}Building Magento Default Theme: ${txtpur}${THEME_CODE}${txtrst}"
    ddev exec bin/magento setup:static-content:deploy -f ${THEME_CODE}
    echo -e "${txtgrn}Magento Default Theme ${txtpur}${THEME_CODE}${txtgrn} built successfully.${txtrst}"
}
