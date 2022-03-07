---
layout: page
title: "Protect"
meta: "false"
tags: ["devops","ops"]
---

Protect your infrastructure - some overlap with [secure](security.md), so this will focus more on protection from non-security related incidents (buggy code, infrastructure outages, etc)


### Backups

- [Restic](https://restic.net/)
- Kubernetes
  - [k8up](https://k8up.io): Open source k8s backup, allows for custom commands via annotations or generic RWX volume backups
  - [Kasten K10](https://www.kasten.io/product/): Commercial Kubernetes backup, but up to 10 nodes for free.
  - [Velero](https://velero.io/): Backup both k8s manifests and volumes. 


### Audit

- [Kube Bench](https://github.com/aquasecurity/kube-bench) - Scan K8S clsuter against CIS best practices.