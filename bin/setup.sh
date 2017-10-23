#!/bin/bash -eu

## Define variables
readonly COMMAND_PATH="${HOME}/Dropbox/automan/bin"
readonly BIN_PATH="/usr/local/bin"
readonly COMMANDS=(
gcm
kubetop
nodecpu
switch
)


## set command path
for command in "${COMMANDS[@]}"
do
    which ${BIN_PATH}/${command} || ln -s ${COMMAND_PATH}/${command} ${BIN_PATH}/${command}
done
