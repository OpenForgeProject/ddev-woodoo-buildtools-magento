#!/bin/bash

function addThemesToConfig() {
    local THEMES
    THEMES=$(getThemesFromDB)
    echo "$THEMES" > .ddev/config-themes.yaml
}
