#!/bin/bash

function readThemesInConfig() {
    local THEMES
    THEMES=$(cat .ddev/config-themes.yaml)
    echo "$THEMES"
}
