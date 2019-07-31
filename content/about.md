---
title: "About"
description: "About Myself"
meta: "false"
menu: main
---

This is the personal website of Steve Miller.  The domain name is from a phrase I said while drifting asleep: "We need
to put a cookie on the R15 resistor"  Below you will find a brief summary of my experience.  If you wish to contact me please
[fill out the form here](https://docs.google.com/forms/d/1SQcAaXNPm2zxWP145P-Gpu9xpY3NUn_bNT8SYqi8iTE/viewform?usp=send_form) and I will get back with you as soon as possible.

# Personal Projects

### Weather Station

Build a Raspberry-Pi driven weather station for home.  Other than being a really nifty project, also hoping to modify
a rain gauge to track estimated snowfall, and wake me up in time to plow our 500 ft. driveway if that becomes necessary.

### RFID Dog Feeder

Modify a dog feeder to dispense food based on a known schedule and RFID tags put on the collar of each dog.  Still in
the early planning stages, it will hopefully help keep our dogs well fed, but also provide lots of data for analysis!

### [Moo Machine](https://sites.google.com/a/stevenmiller.info/www/home/projects/moomachinehome)

An Altair 8800 style machine designed to implement the ["COW" programming language](https://bigzaphod.github.io/COW/).  It's a really simplistic language, but is technically Turing complete.  The machine itself is powered by a Arduino Mega (more for the IO pins then the actual processor)  




# Professional Experience

### Blue Medora - DevOps Engineer (Oct 2016 - Present)

Responsible for providing enterprise level infrastructure and resources to the 
developers of Blue Medora's monitoring plugins

  * Built out an on-prem OS deployment system leveraging Foreman to deploy systems on a vCenter/ESXi cluster.  Included integrations to DNS, Active Directory, and Chef.  This system enabled rapid deployment of environments based on developer and project demands.
  * Built and supported the demo environments for use by sales and partners.  Later migrated to Amazon AWS in order to improve uptime and availability to our worldwide sales teams.
  * Offered direct assistance to the Sales team for several larger deals.  This included enhancing documentation as well as providing custom-compiled utilities in order to diagnose and support more complex configurations, such as Kerberos against Active Directory within a Java application.
  * Developed a custom utility, [vROpsCLI](https://github.com/BlueMedoraPublic/vropscli), that leverages a REST API interface to enable larger customers an easier method to manage their environments.
  * Worked on the SaaS application platform, including management of a Kubernetes cluster in Amazon AWS, and a build pipeline leveraging TravisCI.  
  * Played a crucial role in achieving SOC2 compliance.  This included fully documenting the deployment pipeline, and ensuring all documented policies tied back to technical controls to ensure compliance.
  * Directly supported developers and QA in the following technologies:
    * Amazon AWS, Azure, Google Cloud
    * Cisco MDS, F5 BigIP, Palo Alto Firewall
    * Couchbase,  Hadoop
    * Microsoft Technologies (AD, SCOM, SCVMM, HyperV, SQL)
    * Nagios 


### Gordon Food Service - Security Engineer (May 2016 - Oct 2016)

Responsible for monitoring and adjusting security controls within Gordon Food
Service.  Perform risk assessments against various software solutions.
Perform security assessments against potential breach situations as necessary.

  * Performed a migration and upgrade of the primary file integrity monitoring
  system.
  * Assisted with upgrading the security information and event management
  system (SIEM), including the diagnosis of potential OS level bugs.
  * Analyzed unusual traffic from a third party device, and provided
  documentation and evidence that was used for vendor remediation.
  * Hardened a bastion box by implementing common security controls and
  two-factor authentication.
  * Used a Vagrant based workflow to assist with upgrades and configuration testing.
  * Developed a CLI tool to generate tickets based on events observed from the security incident response system.

### Gordon Food Service - System Administrator (March 2008 - May 2016)

Responsible for the management of 170+ remote Linux servers, 20+
Linux/HPUX/AIX/Windows central servers, 700+ Windows workstations, and 700+ point of sale systems.

  * Technical lead for the rollout of new credit card authorization system. Engineered a redundant system that met disaster recovery targets. The system successfully passed an external PCI evaluation as well as an internal threat model review.
  * Implemented a CFEngine configuration management system for PCI based system to assist in management and compliance.  Migrated that configuration management system to Puppet in order to leverage shared resources across the company.
  * Developed a remote PXE network-based imaging system for Linux servers, Windows workstations, and 4690 POS systems. The new system removed the need for external media and allowed remote scheduling of imaging and recovery activities.  The imaging system was capable of automating the setup of HP's BMC technology, iLO. 
  *Performed forensic work on a Linux based appliance, as well as a Windows-based DVR. Provided written documentation used for later remediation and vendor negotiation processes.
  * Migrated system administration scripts and configurations to subversion in order to improve development, as well as to support SOX and PCI compliance audits.
  * Implemented a VMWare vSphere 5.5 cluster for the Marketplace division. Migrated a major application from HPUX to Linux running on top of vSphere.


### Ferris State University (Feb. 2005 - March 2008)

Responsible for the maintenance of Solaris, Linux, and HPUX servers at the institution, as well
as a variety of Windows 2000/2003 servers and scripts. Assisted with tuning and maintenance of
Java based server applications.

  * Technical team lead for the implementation of a new primary e-Learning application, Blackboard Vista Enterprise, utilizing a BEA Weblogic clustered application tier.
  * Installed and configured a active/passive DNS failover system for the primary web server.
  * Implemented a new Clariion CX3-40 array, migrating production data from a Clariion CX500.
  * Developed a scalability testing system for interactive web-based applications.
  * Secondary support for the VMWare ESX environment.  Migrated the student email server to the VM environment, reducing cost and increasing availability.
  * Provided customized Perl scripts within the Appworx environment, to add GPG and SFTP functionality to that suite.

### Baker College (Sept. 2002 - March 2008)

Taught a variety of Computer Science, Computer Information Systems, and Networking Courses.

  * Received the Lighthouse Award for the creative use of blended instruction to run two classes simultaneously.
  * Used a variety of hands-on techniques to increase knowledge and retention.  Enhanced Java instruction using Java-based software robots to demonstrate object-oriented principles.
  * Classes taught:
    * **Unix Admin:** Intro to Unix/Linux, Unix/Linux System Administration, Web Server Administration
    * **Development:** Interactive Web Development, Perl Programming, Java Programming
    * **Architecture:** Computer Architecture, Advanced Computer Architecture
    * **Security:** Security+, Introduction to Cryptography

### Marion Public Schools (Aug. 2003 - Feb. 2005)

Responsible for the technology program, including all PC and Network maintenance, budget and grant writing, policy development and collaboration with other districts.

  * Used PHP and MySQL to develop a dynamic schedule for under-performing students, saving 20 person-hours a week of manual scheduling effort.
  * Installed and maintained an Exchange server used for administrative email and calendar services.  Used a Linux based SMTP frontend which provided security and email services for teachers, saving Exchange licensing costs across the district.


# Volunteer/Organizations

### Cornerstone Church (May 2014 - May 2016)

  * Developed the back-end code to load data from SaaS data solution, through REST API, using C#.  Also developed REST
endpoints to query data that was used in custom front-end code.
  * Assisted in maintenance of content on website.
 

### Adray Hockey Association (July 2001 - July 2018)

  * Rewrote web app, migrating from Coldfusion/Microsoft Access to PHP/MySQL.
  * Implemented an MVC system to make PHP code more manageable and support more centralized security methods.
  * Perform ongoing code and data administration.

# Skills

  * **Operating Systems:** Linux (Redhat, Suse, Ubuntu, Debian, OEL), Windows Server 2008-2016, HP-UX, AIX, Solaris, Toshiba (IBM) 4690
  * Virtualization/Containerization: Vmware vSphere/ESXi, Docker, LXC, KVM
  * **Programming Languages:** Shell Scripting, Python, Perl, PHP, Java, SQL
  * **Applications:** Apache, Nagios, CFEngine, Ansible, Chef, Subversion, Git, Tomcat, BEA WebLogic, OpenLDAP, MySQL, Postgresql, Vagrant
  * **Cluster:**  HP ServiceGuard, Veritas Cluster/File System, Kubernetes
  * **Network:** F5 Local Traffic Manager, OpenSSL, iptables, PXELinux, dhpcd, tftp, Squid Web Caching, Cacti, Wireshark/tcpdump, Nagios, Cisco IOS, Palo Alto Firewall
  * **Storage/Backup:**  EMC Clariion, Netapp, Pure, Veritas Netbackup
  * **Cloud:** Amazon AWS, Microsoft Azure, Google Cloud, Alibaba Cloud

# Education

### BS In Computer Information Systems

  * 3.76 Cumulative GPA
  * Participated in the Honors Program
