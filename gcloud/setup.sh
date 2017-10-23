#!/bin/bash -eu

## define variables
readonly COMPONENTS_ID=(
alpha
beta
bq
cbt
core
gsutil
kubectl
)

## set gcloud components
echo "[gcloud components update]"
gcloud components update

for id in "${COMPONENTS_ID[@]}"
do
    echo "[${id}]" && echo y | gcloud components install "${id}"
done
