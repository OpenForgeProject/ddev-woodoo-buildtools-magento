#!/bin/bash

function clearStaticFiles() {
    echo -e "${txtcyn}Clear Static Files ...${txtrst}"
    ddev exec rm -rf var/view_preprocessed pub/static/*
    echo -e "${txtgrn}Static Files cleared.${txtrst}"
}
