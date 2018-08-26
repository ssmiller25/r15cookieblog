---
layout: page
title: "System Administration"
---
{% include JB/setup %}


My day job is a system administrator, so I think about the profession and discipline a lot.  Topics are centered around a build, deploy, 
manage, and audit framework detailed by [CFEngine](https://cfengine.com/what-is-cfengine).  Note that I don't necessarily endorse 
CFEngine, but I do like their theoretical groundwork.

From [CFEngine](https://cfengine.com/what-is-cfengine)

![Sysadmin Lifecycle Diagram]({{ site.url }}/assets/info/sysadmin/graph1.png )


  * Define the Desired State of your infrastructure with a special knowledge-oriented language; or, use tools that help you design a Desired State from off-the-shelf resources.
  * Simulate configuration changes before committing to them, then study the impact of changes using the knowledge-based inference engine.
  * Confirm the decided Desired State for an automatic self-healing implementation. CFEngine then continuously corrects configuration drift, keeping systems in compliance with their Desired State.
  * Collect reports on the differences between Actual and Desired States and changes or failures encountered while implementing the Desired State using a highly compressed data stream.

# Build 

The first step is to manage the build process for the system.  I encompass this as the steps to develop an infrastructure to deploy servers and applications.

# Deploy 

Physical: 

  * PXE Boot Into Hardware Setup Utilities (BIOS, Array, other hardware components)
  * PXE Boot Into Automated OS Installation (Kickstart for Redhat/CentOS, Preseed for Ubuntu/Debian)

Virtual:  

  * PXE Boot or Templating System

I prefer to hand-roll a PXE configuration instead of using Cobbler or Foreman.  The installation system should simply setup a minimum number of packages, and then pass off installation to a configuration management system.

# Manage 

  * [Git](https://git-scm.com/):  All configurations should be in a version management system, and git is probably the best available.  For any open source code [Github](https://github.com/) is pretty much the defacto host for a lot of projects.
  * CFEngine:  The oldest, and also the most complex to setup.
  * Puppet:  Designed to be easier than CFEngine.  True for the most part, but requires a bit of work to bootstrap, at least for the pure open source version.
  * Salt:  Need to look at this one.  Requires a client install (unlike Ansible), but with 0MQ could be far more scalable.
  * Ansible:  I really like the lightweight distribution and no client side libraries required.  However, I do worry about scalability because of the use of SSH as a transport protocol.  Although this could be mitigated by a pull architecture, although report collection because a little more difficult.
    * [Ansible](https://github.com/ansible/ansible): Ansible core project
    * [AnsiJet](https://github.com/hiddentao/ansijet): Ansible playbook automation server.  Provides a REST API and playbook results storage in MongoDB.
  * Vagrant: Designed to quickly deploy test virtual machines in a specific configuration.  Can pull in configuration management from Ansible, Salt, Puppet, etc.
  * [Docker](https://www.docker.com/): Extremely light weight container system.
  * [Jenkins](https://jenkins-ci.org/): Generally used for CI on code, could be integrated with the above to perform
full integration testing on a stack
  * [SSHMuxd](https://github.com/joushou/sshmuxd): Allow the build-out of an SSH jump host.  Could be extremely valuable to allow developers and admins access
to cloud based IaaS instances without provisioning credentials to all individuals


### Monitoring 

  * Nagios
  * Sensu
  * [Collectd](http://collectl.sourceforge.net/): Monitoring OS system stats.
  * [Elk Stack for Log Monitoring](https://www.elastic.co/webinars/elk-stack-devops-environment)
  * Performance related articles at [http://www.brendangregg.com/index.html](/var/www/html/data/pages/info/sysadmin.txt)

### Backups 
(need to research...probably Bacula or Amanda)

# Audit 

  * [ServerSpec](http://serverspec.org): Perhaps start for TDD for entire stack.


# Misc 

  * [NSA Proof Your Email System](http://sealedabstract.com/code/nsa-proof-your-e-mail-in-2-hours/)
  * [Awesome Sysadmin](https://github.com/kahun/awesome-sysadmin)

# Reading 

  * [Art of Unix Programming](http://www.faqs.org/docs/artu/)
  * [The Command Line in 2004](http://garote.bdmonkeys.net/commandline/index.html)
  * [9 Open Source DevOps Tools We Love](http://devops.com/2015/08/07/9-open-source-devops-tools-love/)

