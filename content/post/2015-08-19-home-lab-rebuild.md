---
date: "2015-08-19T00:00:00Z"
description: ""
tags: []
title: Home Lab Rebuild
---

Recently a hard drive went out on my main home VM Server.  It was in a RAID, so
there was no data loss.  But as I had to shut everything down to replace 
hardware (no hot swap...), it makes me think about also maintaining the 
software stack for the lab.

Currently I have two physical systems that are libvirt/KVM hosts for my 
virtual machines, including the main firewall and fileserver.  I've had my eye
on a few newer technologies, so the lab layout requires maximum flexibility.
With that in mind, here is the brief plan for the rebuild:

* Continue to be based on Ubuntu 14.04 and a Libvirt/KVM setup.  This provide
the most flexibility for layering on other technologies, as configuring 
unique network setups might be difficult with other systems.  For instance,
having the ability to use a tethered smartphone for the whole network in the 
event the main Internet connection goes down.
* Explore other VM management systems by taking advantage of [KVM nested 
virtualization.](http://docs.openstack.org/developer/devstack/guides/devstack-with-nested-kvm.html).  This would include OpenStack, oVirt, and perhaps
VMWare. 
* Explore [OpenVSwitch](http://openvswitch.org/) for software defined 
networking (SDN).  Currently I have a managed switch and tag network traffic
at the host layer.  It would be nice to explore systems that give me the same
ability to separate traffic, but only require dumb (and cheap) unmanaged 
switches.
* Explore [Ceph](http://ceph.com/) for distributed storage (vSAN).  Instead of 
using a traditional software RAID  or external NAS/SAN for redundancy, utilize 
Ceph to distribute entire VMs across machines for redundancy.
* Automate the entire setup with [Salt](http://saltstack.com/).  I've had 
experience with Puppet and Ansible, but would like to more deeply explore
Salt.  I like the idea of everything being Yaml, and a consistent Jinja2
templating interface for all files.

Obviously a lot of work, but this will be spread out over time.  At this point
I'm still making sure the base environment is configured correctly, and will
then begin taking each of these items one at a time.  Exciting times ahead...
