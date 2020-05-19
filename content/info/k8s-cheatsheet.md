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

# Custom columns!

Super useful for a LOT of quick information.  For example, to display pods and their current nodes:

```sh
kubectl get pods -o custom-columns=NAME:.metadata.name,NODE:.spec.nodeName
```

And to display ingresses with hostname and path

```sh
kubectl get ingress -o custom-columns=NAME:.metadata.name,HOST:.spec.rules[0].host,PATH:.spec.rules[0].http.paths[0].path
```