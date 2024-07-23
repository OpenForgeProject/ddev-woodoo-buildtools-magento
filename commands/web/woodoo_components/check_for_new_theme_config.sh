#!/bin/bash

function checkForNewThemeConfig() {
    if [[ -f ${PROJECT_CONFIG_FILE} ]]; then
        echo -e "${txtgrn}Config file ${PROJECT_CONFIG_FILE} exists.${txtrst}"
    else
        echo -e "${txtred}Config file ${PROJECT_CONFIG_FILE} does not exist.${txtrst}"
        echo -e "${txtgrn}Creating ${PROJECT_CONFIG_FILE}...${txtrst}"
        touch ${PROJECT_CONFIG_FILE}
        echo -e "${txtgrn}Config file ${PROJECT_CONFIG_FILE} created.${txtrst}"
    fi
}
