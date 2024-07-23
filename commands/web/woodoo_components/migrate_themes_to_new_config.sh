#!/bin/bash

function migrateThemesToNewConfig() {
    if [[ -f ${OLD_CONFIG_FILE} ]]; then
        echo -e "${txtgrn}Old config file ${OLD_CONFIG_FILE} exists.${txtrst}"
        echo -e "${txtgrn}Migrating themes to new config file ${PROJECT_CONFIG_FILE}...${txtrst}"
        mv ${OLD_CONFIG_FILE} ${PROJECT_CONFIG_FILE}
        echo -e "${txtgrn}Themes migrated to new config file ${PROJECT_CONFIG_FILE}.${txtrst}"
    else
        echo -e "${txtred}Old config file ${OLD_CONFIG_FILE} does not exist.${txtrst}"
    fi
}
