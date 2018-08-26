---
layout: page
title: "Security"
---
{% include JB/setup %}


# SSL/TLS Information

* [Let's Encrypt](https://letsencrypt.org/):  Freely available certificates for websites.
Requires a client as the certficates are only valid for 90 days, but many clients
exist.  I currently use [EFF Certbot](https://certbot.eff.org/)
* [Start SSL](http://www.startssl.com/?app=0):  Also offers free certificates,
but also several paid options.  Used to be a bit cumbersome to use, but may be improved after recent updates.

# SSL Private CA

  * Build a CA
    * See [JamieLinux.com](https://jamielinux.com/docs/openssl-certificate-authority/create-the-root-pair.html) for a good walkthrough.
  * Build a new certificate
    {% highlight bash %}
    openssl req -out mydomain.csr -new -sha256 -newkey rsa:2048 -nodes -keyout mydoamin.key
    {% endhighlight %}
  * Parameters
    * Country: US
    * State: Michigan
    * Locality Name: Full City Name
    * Organization Name: Company
    * Organizational Unit: Department
    * Common name: fqdn.mydomain.com
    * Email: blank
    * Defaults for rest
  * Sign Certificate
    {% highlight bash %}
    openssl ca -config openssl.cnf -in mydomain.csr -out mydomain.crt
    {% endhighlight %}

=======

# External Links

Useful article at [Open Source Replacement for Security Software](http://www.datamation.com/security/65-open-source-replacements-for-security-software-1.html)  Packages I found interesting (mostly untested by myself unless otherwise stated)

  * Configuration Standards
    * [Center for Internet Security](http://www.cisecurity.org/): Provides configuration guides for common OS and server software.
    * [Linux Foundation Workstation Guidelines](https://github.com/lfit/itpol/blob/master/linux-workstation-security.md): Excellent overview for securely configuring a Linux workstation
  * Security Scanners
    * [GovReady Github](https://github.com/GovReady): An entire Government sponsored site that integrates open source tools into government standards.  Policies for CentOS and Ubuntu exist, as well as a lot of other resources.
    * [OpenSCAP](http://www.open-scap.org/page/Main_Page): Open source tool to read and evaluate system security based on SCAP standards
    * [Lynis](http://wiki.ipfire.org/en/addons/lynis/start):  Another security scanner for Linux/Unix systems, focusing around common standards and best practices.  Seems far easier to install and configure than OpenSCAP.  However, I have not tested either at this point.
  * [Endian](http://www.endian.com): Appliance for security and hotspot management
  * [IPFire](http://www.ipfire.org/): Linux based firewall distro
  * [MailScanner](http://www.mailscanner.info/):  Seems easier then attempting to roll Spamassassin, ClamAV, greylisting, etc.
  * [Odessa](http://odessa.sourceforge.net/): Alternative to Autopsy/Sleuth Kit for Open Source forensics work.
  * [PFSense](https://www.pfsense.org/):  Pretty solid when I last used the project a few years ago.  Based on FreeBSD, so limited to whatever FreeBSD supports hardware wise.
  * [Snort](https://www.snort.org/): Open source intrusion detection system.

# Reading

  * [Lessons From Reviewing Postmortems](http://danluu.com/postmortem-lessons/)
