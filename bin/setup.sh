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
    type ${BIN_PATH}/${command} > /dev/null

    if [ ${?} -eq 1 ]; then
        ln -s ${COMMAND_PATH}/${command} ${BIN_PATH}/${command}
    fi
done
