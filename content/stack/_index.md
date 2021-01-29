---
catagories:
  - Stack
tags:
  - personalstack
layout: "single"
meta: "false"
title: "Personal Stack"
---

## Stacks

- Workstation
  - Primary Personal Laptop: Macbook Pro 2015 Edition running [PopOS](https://pop.system76.com/).  I generally don't like vendor-tied distributions, but I trust System76 as a company.  And I enjoy the tied setup that PopOS provides.  And while I could roll my own in some fashion, I also value my time when someone has done it sell.
  - Secondary Laptop: Asus Chromebook.  By both allowing Android apps and having a Linux layer that can be enabled, which works with both X apps and docker, it's a pretty serviceable workstation.  Especially bring a laptop into situations where the laptop could potentially be stolen - far less expensive to replace, and automatically encrypted. 
  - Work Laptop:  Windows 10
  - All of these comfigured with a combo of [wksetup](https://github.com/ssmiller25/wksetup) for initial setup and [immutabledesktop](https://github.com/ssmiller25/immutabledesktop) for ongoing configuration
- Private Infrastructure
  - Current: [ProxMox](https://www.proxmox.com/en/): My existing infrastructure, mainly consisting of LXC containers, and a few KVM VMs where necessary (advance Linux networking, Windows, etc)
  - New: [blast](https://github.com/ssmiller25/blast): A new Kubernetes based architecture based on [k3os](https://github.com/rancher/k3os) for OS and [longhorn](https://github.com/longhorn/longhorn) for storage.  Although [Harvester](https://github.com/rancher/harvester) looks very interesting and would pre-configured Kubevirt
  - blast-private - My private app implementation.  Despite it's name, will probably NOT be private
- Public Infrastructure
  - [www.r15cookie.com](https://www.gitlab.com/ssmiller25/r15cookieblog) - [Netlify](https://www.netlify.com/) at the moment.  Fully containerize and can be moved to another provider if necessary
  - Email to r15cookie.com - Google Gsuite - Grandfathered into the Gsuite free tier when it existed.
  - app.r15cookie.com - Digital Ocean "sketchpad" VM.  Will eventually be decommissioned for some native k8s env with the ability to spin up resources on demand.
  - [blast-public](https://github.com/ssmiller25/blast-public/) - Public k8s cluster implementation.  Work in progress.
- Shared source
  - [blast-apps](https://github.com/ssmiller25/blast-apps).  Kustomize-based Kubernetes manifests for all my central applications.  This repo is versioned to allow for pinned app deployment in a GitOps manner.  Most of these are apps that I cannot easily call from a gitops workflow directly (i.e., they don't provided a versions kustomize "base" for which I can call)
