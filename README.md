# It's Flux Demo Time!



1. Create a cluster
```
civo k3s create --version 1.22.2-k3s1 --save --switch --wait --merge
```

2. Hook flux up to this repo
```
export GITHUB_TOKEN=mytoken
flux bootstrap github \
    --owner=cablespaghetti \
    --repository=flux-demo \
    --branch=main \
    --personal \
    --path=clusters/staging
```

3. Go to your new website...
