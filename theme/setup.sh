#!/bin/bash -eu

## define variables
readonly THEME_ID=(
alfred
iterm
visual-studio-code
)

## Git clone
for id in "${THEME_ID[@]}"
do
    git clone https://github.com/dracula/"${id}".git
done

## Open
open ./iterm/Dracula.itermcolors
open ./alfred/Dracula.alfredappearance

## Install Ricty
cp -f /usr/local/Cellar/ricty/4.1.0_2/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf
