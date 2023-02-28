---
layout: page
title: "Configure"
meta: "false"
tags: ["ops", "devops"]
---

The configuration step in the DevOps toolchain will be covered.  Also including any core infrastructure links in this page.


## [Kubernetes/Container](/info/k8s)

Kubernetes(k8s) is the best modern approach for deploying and maintaining code.


## Infrastructure As Code

- [CrossPlane](https://crossplane.io/): Infrastructure provider as k8s resources
  - [Is Crossplane the Infrastructure LLVM?](https://danielmangum.com/posts/crossplane-infrastructure-llvm/)
- [tf-free](https://github.com/gruberdev/tf-free): Provision free-tier resources across a variety of cloud providers.
- [Infracost](https://www.infracost.io/): Terraform Infrastructure Cost estimation, which can be baked into a CD pipeline for better review of what infrastructure costs will be.
- [Terraservice](https://www.contino.io/insights/a-model-for-scaling-terraform-workflows-in-a-large-complex-organization): A model for services in Terraform
- [Terracognita](https://github.com/cycloidio/terracognita): Generate IaC from existing code.
- [Terraformer](https://github.com/GoogleCloudPlatform/terraformer): Produce terraform from existing resources.
- Cloud Instance Cost 
  - [AWS: Vantage Instance Cost](https://instances.vantage.sh/): Used to be EC2Instances.info, but Vantage is now hosting. [Source is still on Github](https://github.com/vantage-sh/ec2instances.info)
  - [Azure: Azureprice.net](https://azureprice.net/)
  Great info.  Unfortunately source is not available.

## Amazon Web Services (AWS)

- [AWS NAT Gateway Alternative](https://github.com/AndrewGuenther/fck-nat)
- [AWS NAT Gateway Alternative #2 - AlterNAT](https://github.com/1debit/alternat)

## System Build Tool


- [Packer](https://www.packer.io/): Designed to quickly deploy test virtual machines in a specific configuration.  Can pull in external configuration management such as Ansible if desired.
- [TheForeman](https://www.theforeman.org/): I've used in the past. A little larger and more cumbersome then I would like.
- [DigitalRebar](https://github.com/digitalrebar): A new project that I'd like to investigate more heavily.
- [ClusterAPI](https://cluster-api.sigs.k8s.io/): Kubernetes focused provisioning.


## Configuration Management

Configuration Management: Generally an anti-pattern.  Much prefer leveraging Packer to build immutable images, and Terraform or Crossplane to deploy

- Ansible:
  - [Ansible](https://github.com/ansible/ansible): Ansible core project
  - [AnsiJet](https://github.com/hiddentao/ansijet): Ansible playbook automation server.  Provides a REST API and playbook results storage in MongoDB.
- [Jenkins](https://jenkins-ci.org/): Generally used for CI on code, could be integrated with the above to perform
full integration testing on a stack

## DNS

- [IpIFY](https://www.ipify.org/): Light-weight API to get your public IP address.  Basic IP info is free to use.  Can register to get GeoIP Information.
- [ip-api.com](https://ip-api.com/).  Provids IP, geo-location and ISP information at `http://ip-api.com/json`  Free for non-commercial purposes.
- [NoIP](https://nip.io/) and [XIP](http://xip.io/): Automatic DNS based on IP address

