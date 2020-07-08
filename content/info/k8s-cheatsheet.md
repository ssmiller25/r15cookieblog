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

# Custom columns!

Super useful for a LOT of quick information.  For example, to display pods and their current nodes:

```sh
kubectl get pods -o custom-columns=NAME:.metadata.name,NODE:.spec.nodeName
```

(PS, the above info is also provided in `kubectl get pods -o wide`, but above still useful if you are ONLY looking ofr nodenames)

And to display ingresses with hostname and path

```sh
kubectl get ingress -o custom-columns=NAME:.metadata.name,HOST:.spec.rules[0].host,PATH:.spec.rules[0].http.paths[0].path
```

# Quarantine pods

<https://www.reddit.com/r/kubernetes/comments/gt3uvg/how_to_quarantine_pods/>

# Merging kubectl confg, bash completion, api, and kubectl explain

<https://coreos.com/blog/kubectl-tips-and-tricks>
