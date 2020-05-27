---
layout: page
title: "k8s Cheatsheet"
meta: "false"
tags: ["dev", "k8s", "kubernetes"]
---

Kubernetes cheatsheets

# Force a Redeployment

If you want to recycle pods in a deployment without deleting the pods ([Source](https://www.kevinsimper.dk/posts/trigger-a-redeploy-in-kubernetes))
```sh
kubectl patch deployment your_deployment \
-p "{\"spec\": {\"template\": {\"metadata\": { \"labels\": {  \"redeploy\": \"$(date +%s)\"}}}}}"
```

# Get ALL resorces

Only gets pods/deployments/services

```sh
kubectl get all <-n namespace>
```

Great hint [from this kubectl issue](https://github.com/kubernetes/kubectl/issues/151#issuecomment-402003022) on leveraging kubectl api-resources
to get all resources within a namespace

```sh
kubectl api-resources --verbs=list --namespaced -o name \
  | xargs -n 1 kubectl get --show-kind --ignore-not-found -l <label>=<value> -n <namespace>
```
