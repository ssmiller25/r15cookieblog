+++
title = "Ansible Configuration"
draft = false
tags = [
    "doku-import",
]
date = "2013-10-24"
meta = "false"
+++

* Use Ansible http://http://ansible.github.com/
    * [[http://infrastructure.fedoraproject.org/cgit/ansible.git/|Fedora Ansible GIT Repository]]: Good example of GIT usage.  Roles are not heavily used, as that is a 1.2 feature.
    * Fedora Reasoning for Ansible:  https://fedoraproject.org/wiki/User:Skvidal/Ansible
    * http://www.stavros.io/posts/example-provisioning-and-deployment-ansible/
    * Method of having multiple distro variable: http://blog.trifork.com/2013/04/02/ansible-example-playbook-to-setup-jenkins-slave/
* Ansible Configuration
    * Basic Security Lockdown (minimum services, sudo configuration, etc)
    * Useful scripts (automatic update, or maybe a nice "motd" generator with number of packages to update, system load, etc.)
    * Customization for site (local users, sudo config, sshd config, webmin configuration)
  * Ansible Roles
    * ansiblemaster (bootstrap an environment)
    * ansiblepull
    * deployment (pxe/tftp/dhcp for PXE config)
    * pkgcache (apt-cacher)
    * pkgcache-feeder (for yum primarily...makes sure RPMs never removed)
    * authmaster (https://help.ubuntu.com/12.04/serverguide/openldap-server.html)
    * authslave
    * nsserver
    * monitorsrv
    * websrv
    * emailsrv (Perhaps base on http://flurdy.com/docs/postfix/)
    * firewallsrv
    * desktop
    * zentyal-base
    * zentyal-office
    * zentyal-communication
    * zentyal-gateway
    * zentyal-infrastructure
    * zentyal-remoteservices
