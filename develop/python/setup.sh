#!/bin/bash -eu

## define variables
readonly PYTHON_DIR="${HOME}/workspace/dev/python"

## set directory
mkdir -p "${PYTHON_DIR}"

## set version
pyenv install 2.7.14
pyenv virtualenv --distribute 2.7.14 develop2714
pyenv global develop2714

## install packages
easy_install-2.7 pip
pip install --upgrade setuptools
pip install --upgrade pip
pip install -r requirements.txt
