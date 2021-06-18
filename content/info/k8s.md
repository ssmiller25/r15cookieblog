---
layout: page
title: "Kubernetes"
meta: "false"
tags: ["ops", "k8s", "kubernetes"]
---
Kubernetes - the API for the modern data-center!  At least why I find it so exciting.

## General

- [Kubernetes](https://kubernetes.io/): Main Kubernetes page.  Docs are fairly
good and in depth.
- [Kubernetes Production Check List](https://learnk8s.io/production-best-practices/): Good list of best practices when running kubernetes in production
- [Bitnami Kubernetes Production Runtime](https://kubeprod.io/): A great starting point for a production cluster
- [47 Things To Become a Kubernetes Expert](https://ymmt2005.hatenablog.com/entry/k8s-things) - Really good detailed items for k8s foundational work
- [100 Days of Kubernetes](https://100daysofkubernetes.io/) - [Source](https://github.com/100daysofkubernetes/100DaysOfKubernetes)

## Components

- CRI: Container Runtimes
- CNI: Network Plugins
  - [CNI Comparison](https://itnext.io/benchmark-results-of-kubernetes-network-plugins-cni-over-10gbit-s-network-updated-april-2019-4a9886efe9c4)
services that are potentially needed with running kuberntes in production.  I don't run the full
production runtime, but I have used a majority of these services successfully.
- CSI: Storage Plugins
  - [Kubernetes Storage Comparisions](https://medium.com/volterra-io/kubernetes-storage-performance-comparison-v2-2020-updated-1c0b69f0dcf4)


## Deployment

- [Kustomize](https://kustomize.io/)
- [Kapitan](https://kapitan.dev/): Templating system for Kubernetes and Terraform.  Potential replacment for Helm/Kustomize/etc.
- FluxCD
- HelmCD

## Development/Testing

- [Container Structure Test](https://github.com/GoogleContainerTools/container-structure-test): Simple testing framework for Docker containers
- [Dive](https://github.com/wagoodman/dive): Analyze Docker image layers
- [Hadolint](https://github.com/hadolint/hadolint): Linter for Docker Files
- [Kubernetes YAML Validation Tools](https://learnk8s.io/validating-kubernetes-yaml)
- [KUTTL](https://github.com/kudobuilder/kuttl): Kubernetes Test TooL.  A declaritive testing framework.

## Security

- [Clair](https://github.com/coreos/clair): Container security analysis
- [Kyverno](https://kyverno.io/): Native k8s Policy Management
- [Rate Limited with Nginx-Ingress Controller](https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting)
