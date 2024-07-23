#!/bin/bash

function clearCache() {
    echo -e "${txtcyn}Clear Cache ...${txtrst}"
    ddev exec bin/magento cache:clean
    ddev exec bin/magento cache:flush
    echo -e "${txtgrn}Cache cleared.${txtrst}"
}
