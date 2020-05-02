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
kubectl patch deployment your_deployment -p "{\"spec\": {\"template\": {\"metadata\": { \"labels\": {  \"redeploy\": \"$(date +%s)\"}}}}}"
```
