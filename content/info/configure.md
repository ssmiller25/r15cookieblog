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
- [Terraform](https://github.com/hashicorp/terraform): A very popular IaC platform
  - [Infracost](https://www.infracost.io/): Terraform Infrastructure Cost estimation, which can be baked into a CD pipeline for better review of what infrastructure costs will be.
  - [Terraservice](https://www.contino.io/insights/a-model-for-scaling-terraform-workflows-in-a-large-complex-organization): A model for services in Terraform
  - [Moving Away From CDK](https://sst.dev/blog/moving-away-from-cdk) - SST's reasoning for moving away from AWS SDK/CloudFormation
- Cloud Instance Cost 
  - [Vantage Cloud Instance Cost](https://instances.vantage.sh/): Used to be EC2Instances.info, but Vantage is now hosting. [Source is still on Github](https://github.com/vantage-sh/ec2instances.info). Includes AWS, Azure and Google Cloud pricing.

## Amazon Web Services (AWS)

- [AWS NAT Gateway Alternative #1 - AlterNAT](https://github.com/1debit/alternat): Redundant, but self managed (although Terraform and Lambdas cover most use-cases)
- [AWS NAT Gateway Alternative #2 - fck-nat](https://github.com/AndrewGuenther/fck-nat): Simplier solution

## System Build Tool

- [Packer](https://www.packer.io/): Designed to quickly deploy test virtual machines in a specific configuration.  Can pull in external configuration management such as Ansible if desired.
- [ClusterAPI](https://cluster-api.sigs.k8s.io/): Kubernetes focused provisioning.
- [Tinkerbell](https://tinkerbell.org/): Provision and Manange Bare Metal Anywhere

## Configuration Management

Configuration Management: Generally an anti-pattern.  Much prefer leveraging Docker to build immutable images and Terraform or Crossplane to deploy. Packer usage if the "deployable images" need to be full systems.

- Ansible:
  - [Ansible](https://github.com/ansible/ansible): Ansible core project
  - [AnsiJet](https://github.com/hiddentao/ansijet): Ansible playbook automation server.  Provides a REST API and playbook results storage in MongoDB.

## DNS

- [IpIFY](https://www.ipify.org/): Light-weight API to get your public IP address.  Basic IP info is free to use.  Can register to get GeoIP Information.
- [ip-api.com](https://ip-api.com/).  Provids IP, geo-location and ISP information at `http://ip-api.com/json`  Free for non-commercial purposes.
- [NoIP](https://nip.io/) and [XIP](http://xip.io/): Automatic DNS based on IP address

## Network

- [TailCat](https://github.com/tailscale/tailcat) - Let Netcat, but over Tailscale encrypted network. 