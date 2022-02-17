#!/bin/bash

civo k3s create --version 1.22.2-k3s1 --save --switch --wait --merge

export GITHUB_TOKEN=mytoken

flux bootstrap github \
    --owner=cablespaghetti \
    --repository=flux-demo \
    --branch=main \
    --personal \
    --path=clusters/staging


