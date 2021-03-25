---
layout: page
title: "System Administration"
meta: "false"
tags: ["devops","ops"]
---

Now that my day job involves more specific DevOps practices, I've grown my Sysadmin phylosophy to be more all-encompassing.  
Beyond just automation of system configuration, modern practices requires more encompassing practices such as tight
integration with developers, version control, test driven development, and continuous integration and delivery.

From [ScaledAgileFramework](https://www.scaledagileframework.com/devops)

![CALMR Approach to DevOps](/assets/info/sysadmin/DevOps_F01_WP.png)

- *Collaboration and organization*: A primary focus of Devops is around culture.  Instead of an "us versus them" mentality
between production and development teams, high integration of those roles is necessary.
- *Automate everything mindset*: In today fast-paced world, automation is key.  This includes everything from infrasturcture
deployment, automated testing frameworks, and CI/CD tooling so releases require no manual work.
- *Lean flow accelerates delivery*: In line with an Agile mindset, reduce the "work in progress" tasks, reduce the batch
sizes themselves, and make sure work queues are low.  Instead of a few large releases, aim for continuous delivery of a lot
of small batches.
- *Measurement of Everything*: Correct analytics is necessary to quickly trace down any issues that might occur in a 
continuous delivery framework.  As quoted from the [ScaledAgileFramework](https://www.scaledagileframework.com/devops)  site 
"..."the facts are always friendly" rather than intuition"
- *Recovery Enabled Low Risk Releases*: In order to implement a continuous delivery mindset, there must be the ability to 
quickly and easily roll back releases that experience unexpected issues.  This includes having the tooling in place to 
perform such operations and actually performing practice runs of pulling back or fixing forward.

# DevOps Culture

- [How They SRE](https://github.com/upgundecha/howtheysre)

## Post-Mortem

- [Amazon Kinesis Aug 25 2020](https://aws.amazon.com/message/11201/)
- [Matrix Apr 2019](https://matrix.org/blog/2019/05/08/post-mortem-and-remediations-for-apr-11-security-incident)
- [Google Cloud June 2019](https://status.cloud.google.com/incident/cloud-networking/19009)
- [Danluu's Post Mortem Repo](https://github.com/danluu/post-mortems)
- [Kubernetes Fail Stories](https://github.com/hjacobs/kubernetes-failure-stories)
- [Monzo Payment Outage](https://community.monzo.com/t/resolved-current-account-payments-may-fail-major-outage-27-10-2017/26296/95)
- [First Kubernetes Outage - Helm Related](https://engineering.saltside.se/our-first-kubernetes-outage-c6b9249cfd3a)

# Tools

## System Build Tools

- TheForeman: Used currently in some of my work, but a little larger/more cumberson that I would like.
- DigitalRebar: A new project that I'd like to investigate more heavily.


## Kubernetes/Container

- [Kubernetes](https://kubernetes.io/): Main Kubernetes page.  Docs are fairly
good and in depth.
  - [Kubernetes Production Check List](https://learnk8s.io/production-best-practices/): Good list of best practices when running kubernetes in production
  - [47 Things To Become a Kubernetes Expert](https://ymmt2005.hatenablog.com/entry/k8s-things) - Really good detailed items for k8s foundational work
  - [Kubernetes YAML Validation Tools](https://learnk8s.io/validating-kubernetes-yaml)
  - [Bitnami Kubernetes Production Runtime](https://kubeprod.io/): A great starting point for a lot of 
  - [Kapitan](https://kapitan.dev/): Templating system for Kubernetes and Terraform.  Potential replacment for Helm/Kustomize/etc.
  - [Kyverno](https://kyverno.io/): Native k8s Policy Management
  - CRI: Container Runtimes
  - CNI: Network Plugins
    - [CNI Comparison](https://itnext.io/benchmark-results-of-kubernetes-network-plugins-cni-over-10gbit-s-network-updated-april-2019-4a9886efe9c4)
services that are potentially needed with running kuberntes in production.  I don't run the full
production runtime, but I have used a majority of these services successfully.
  - CSI: Storage Plugins
    - [Kubernetes Storage Comparisions](https://medium.com/volterra-io/kubernetes-storage-performance-comparison-v2-2020-updated-1c0b69f0dcf4)
- [Docker](https://www.docker.com/): Extremely light weight container system.
  - [Hadolint](https://github.com/hadolint/hadolint): Linter for Docker Files
  - [Container Structure Test](https://github.com/GoogleContainerTools/container-structure-test): Simple testing framework for Docker containers
  - [Clair](https://github.com/coreos/clair): Container security analysis
  - [Dive](https://github.com/wagoodman/dive): Analyze Docker image layers

## Infrastructure As Code

- [Infracost](https://www.infracost.io/): Terraform Infrastructure Cost estimation, which can be baked into a CD pipeline for better review of what infrastructure costs will be.
- Cloud Instance Cost 
  - [AWS: Vantage Instance Cost](https://instances.vantage.sh/): Used to be EC2Instances.info, but Vantage is now hosting. [Source is still on Github](https://github.com/vantage-sh/ec2instances.info)
  - [Azure: Azureprice.net](https://azureprice.net/)
  Great info.  Unfortunately source is not available.

## Configuration Management

- [Git](https://git-scm.com/):  All configurations should be in a version management system, and git is probably the best available.  For any open source code [Github](https://github.com/) is pretty much the defacto host for a lot of projects.
- CFEngine:  The oldest, and also the most complex to setup.
- Puppet:  Designed to be easier than CFEngine.  True for the most part, but requires a bit of work to bootstrap, at least for the pure open source version.
- Salt:  Need to look at this one.  Requires a client install (unlike Ansible), but with 0MQ could be far more scalable.
- Ansible:  I really like the lightweight distribution and no client side libraries required.  However, I do worry about scalability because of the use of SSH as a transport protocol.  Although this could be mitigated by a pull architecture, although report collection because a little more difficult.
  - [Ansible](https://github.com/ansible/ansible): Ansible core project
  - [AnsiJet](https://github.com/hiddentao/ansijet): Ansible playbook automation server.  Provides a REST API and playbook results storage in MongoDB.
- Vagrant: Designed to quickly deploy test virtual machines in a specific configuration.  Can pull in configuration management from Ansible, Salt, Puppet, etc.
- [Goss](https://github.com/aelsabbahy/goss): Simple server testing framework (light-weight version of inSpec/ServerSpec)
- [Jenkins](https://jenkins-ci.org/): Generally used for CI on code, could be integrated with the above to perform
full integration testing on a stack


## Monitoring 

- Nagios
- Sensu
- [Collectd](http://collectl.sourceforge.net/): Monitoring OS system stats.
- [Elk Stack for Log Monitoring](https://www.elastic.co/webinars/elk-stack-devops-environment)
- Performance related articles at [http://www.brendangregg.com/index.html](/var/www/html/data/pages/info/sysadmin.txt)
- Internet Monitoring (globally)
  - [Pingdom's State of the Internet](https://livemap.pingdom.com/)
  - [Down Detector](https://downdetector.com/)
  - [Oracle Internet Intelligence](https://map.internetintel.oracle.com/)
  - [The Outage Mailing List](https://puck.nether.net/pipermail/outages/) - Network admins chatting about global issues

## Advance Debugging

- strace - Almost always available.  Potentially A LOT of performance impact
- [Sysdig](https://github.com/draios/sysdig): Combo of strace and tcpdump - and with less performance impact
- [Sysdig Inspect](https://github.com/draios/sysdig-inspect): Potential GUI for sysdig output
- [eBPF.io](https://ebpf.io/): Resources for eBPF
- [KubeCTL Trace](https://github.com/iovisor/kubectl-trace): Easily run eBFP from
kubectl




## Backups 
(need to research...probably Bacula or Amanda)

## Audit 

- [ServerSpec](http://serverspec.org): Perhaps start for TDD for entire stack.

## DNS

- [IpIFY](https://www.ipify.org/): Light-weight API to get your public IP address.  Basic IP info is free to use.  Can register to get GeoIP Information.
- [ip-api.com](https://ip-api.com/).  Provids IP, geo-location and ISP information at `http://ip-api.com/json`  Free for non-commercial purposes.
- [NoIP](https://nip.io/) and [XIP](http://xip.io/): Automatice DNS based on IP address


## Scripting

- [Minimally Safe Bash Shell Script Template](https://betterdev.blog/minimal-safe-bash-script-template/)

# Misc

- [NSA Proof Your Email System](http://sealedabstract.com/code/nsa-proof-your-e-mail-in-2-hours/)
- [Awesome Sysadmin](https://github.com/kahun/awesome-sysadmin)
- [JQPlay](https://jqplay.org/): Quick way to debug jq filters.  [Also available as a Docker image](https://github.com/munntjlx/jqplay)

# Reading

- [Art of Unix Programming](http://www.faqs.org/docs/artu/)
- [The Command Line in 2004](http://garote.bdmonkeys.net/commandline/index.html)
- [9 Open Source DevOps Tools We Love](http://devops.com/2015/08/07/9-open-source-devops-tools-love/)
