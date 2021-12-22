#!/bin/sh
apk add curl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
KUBECTL_PATH="~/.local/bin/kubectl"
mkdir -p $KUBECTL_PATH
mv ./kubectl $KUBECTL_PATH
export PATH=$PATH:$KUBECTL_PATH