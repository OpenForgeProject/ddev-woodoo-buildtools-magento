#!/bin/bash

function checkHyva() {
    THEME_PATH=$1

    if [[ -f "${THEME_PATH}/web/tailwind.config.js" ]]; then
        HYVA=true
    else
        HYVA=false
    fi
}
