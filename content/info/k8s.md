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
- [Why you should build on Kubernetes from day one](https://stackoverflow.blog/2021/07/21/why-you-should-build-on-kubernetes-from-day-one/)
- [Beginners Guide to Kubernetes](https://towardsdatascience.com/a-beginner-friendly-introduction-to-kubernetes-540b5d63b3d7)

## Components

- CRI: Container Runtimes
- CNI: Network Plugins
  - [CNI Comparison](https://itnext.io/benchmark-results-of-kubernetes-network-plugins-cni-over-10gbit-s-network-updated-april-2019-4a9886efe9c4)
services that are potentially needed with running kuberntes in production.  I don't run the full
production runtime, but I have used a majority of these services successfully.
- CSI: Storage Plugins
  - [Kubernetes Storage Comparisons](https://medium.com/volterra-io/kubernetes-storage-performance-comparison-v2-2020-updated-1c0b69f0dcf4)
- ServiceMesh
  - [Istio](https://istio.io/): The granddaddy of ServiceMesh - but not a full CNCF project...
  - [OpenServiceMesh](https://openservicemesh.io/) - CNCF Sandbox Project, leveraging Envoy to implemment the [ServiceMesh Interface](https://smi-spec.io/)
  - [Gloo](https://github.com/solo-io/gloo) API gateway that supports [several ServiceMesh technologies](https://docs.solo.io/gloo-edge/latest/guides/integrations/service_mesh/)


## Monitoring

- [5 Tricks to be a Prometheus God](https://coralogix.com/blog/promql-tutorial-5-tricks-to-become-a-prometheus-god/)

## Deployment

- [Kustomize](https://kustomize.io/)
- [FluxCD](https://fluxcd.io/)
- [ArgoCD](https://argoproj.github.io/cd/)
  - [Using Kustomize to Post-Render Helm Charts in ArgoCD](https://dev.to/camptocamp-ops/use-kustomize-to-post-render-helm-charts-in-argocd-2ml6)
- [Deploy Docker Register in K8S](https://medium.com/swlh/deploy-your-private-docker-registry-as-a-pod-in-kubernetes-f6a489bf0180)
- [Kubernetes Anti-Patterns](https://codefresh.io/kubernetes-tutorial/kubernetes-antipatterns-1/),[k8s Anti-Patterns #2](https://codefresh.io/kubernetes-tutorial/kubernetes-antipatterns-2/), and [k8s Anti-Patterns #3](https://codefresh.io/kubernetes-tutorial/kubernetes-antipatterns-3/)
## Development/Testing

- [Container Structure Test](https://github.com/GoogleContainerTools/container-structure-test): Simple testing framework for Docker containers
- [Dive](https://github.com/wagoodman/dive): Analyze Docker image layers
- [Docker Best Practices](https://github.com/hexops/dockerfile)
- [Filebrowser as a sidecar](https://www.reddit.com/r/selfhosted/comments/piziv1/file_browser_container_sidecar_for_kubernetes/): Interesting idea to allow for easy edits on files within a container
- [Hadolint](https://github.com/hadolint/hadolint): Linter for Docker Files
- [Kubernetes API with Curl](https://blog.tilt.dev/2021/03/18/kubernetes-is-so-simple.html)
- [Kubernetes YAML Validation Tools](https://learnk8s.io/validating-kubernetes-yaml)
- [KUTTL](https://github.com/kudobuilder/kuttl): Kubernetes Test TooL.  A declaritive testing framework.
- [Reduce 502 errors by caring about PID-1 in Kubernetes](https://about.gitlab.com/blog/2022/05/17/how-we-removed-all-502-errors-by-caring-about-pid-1-in-kubernetes/)

## Security

- [Clair](https://github.com/coreos/clair): Container security analysis
- [Kyverno](https://kyverno.io/): Native k8s Policy Management
- [Kubescape](https://hub.armosec.io/docs/repository-scanning)
- [Rate Limited with Nginx-Ingress Controller](https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting)
