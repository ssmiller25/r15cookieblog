---
layout: page
title: "k8s Cheatsheet"
meta: "false"
tags: ["ops", "k8s", "kubernetes"]
---
## Force a Redeployment

If you want to recycle pods in a deployment 

```sh
kubectl rollout restart deploy/<mydeployment>
```

## Get ALL resources

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

## Job from Cronjob

```sh
kubectl create job --from=cronjob/<cronjob> <newjobname>
```

## Custom columns

Super useful for a LOT of quick information.  For example, to display pods and their current nodes:

```sh
kubectl get pods -o custom-columns=NAME:.metadata.name,NODE:.spec.nodeName
```

(PS, the above info is also provided in `kubectl get pods -o wide`, but above still useful if you are ONLY looking for nodenames)

And to display ingresses with hostname and path

```sh
kubectl get ingress -o custom-columns=NAME:.metadata.name,HOST:.spec.rules[0].host,PATH:.spec.rules[0].http.paths[0].path
```

## Testing Ingress

Sometimes it's necessary to test an Ingress leveraging routing rules based on hostname.  Several methods to test this exist, depending on the specific situation:

- Adjust the host header

  ```sh
  curl --header "Host: example.com" http://127.0.0.1/
  ```

- Temporarily adjust curl's name resolution (useful for setting teh SNI field correctly for SSL)

  ```sh
  curl --resolve example.com:443:127.0.0.1 https://example.com/
  ```

- Testing with a completely difference host/port mapping

  ```sh
  curl --connect-to example.com:443:host-47.example.com:443 https://example.com/
  ```

**Source:**  <https://daniel.haxx.se/blog/2018/04/05/curl-another-host/>

# Network Troubleshooting

- Inject netshoot as a sidecar in a deployment (under `.spec.template.spec.containers`)

```yaml
     -  name: netshoot
        command:
        - /bin/sh
        - -c
        - sleep 10000
        image: nicolaka/netshoot
```

- Capturing traffic from sidecar

```sh
kubectl exec -it -c netshoot <podname>
# Capture traffic until user hits Ctrl+C
tcpdump -w nodeport.pcap port 80
# Dump out enough info to read HTTP headers
tcpdump -vvvs 1024 -r nodeport.pcap
```

## Debugging

- [https://learnk8s.io/troubleshooting-deployments](https://learnk8s.io/troubleshooting-deployments?s=03)

## Miscellaneous

- [Quarantine Pods for Debugging](https://www.reddit.com/r/kubernetes/comments/gt3uvg/how_to_quarantine_pods/)
- [Mastering KubeConfig](https://ahmet.im/blog/mastering-kubeconfig/)
- [Prometheus Scraping External Configs](https://github.com/cablespaghetti/k3s-monitoring/blob/master/blackbox-exporter-values.yaml)

## General K8S/K8S Engineering Articles

I don't necessarily endorse these views, but also agree that elegant engineering should be prized over complexity.

- [Etcd, or why modern software makes me sad](https://www.roguelazer.com/2020/07/etcd-or-why-modern-software-makes-me-sad/)
- [Protobuf are wrong](https://reasonablypolymorphic.com/blog/protos-are-wrong/index.html)


## What?!?!

- [Kubectl Create Pizza](https://ops.tips/notes/kubernetes-pizza/) and [Source Code](https://github.com/cirocosta/pizza-controller)
