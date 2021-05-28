---
title: "Proxy Server"
draft: "false"
tags: [
    "ops"
]
date: "2020-05-03"
meta: "false"
---

## DNS Blacklists ##

Not *quite* a proxy server, but similar functions with a little less configuration required for end clients:

- [PiHole](https://pi-hole.net/): Extremely popular drop-in to block Ads and Spyware. 
  - [PiHole Blocklists](https://github.com/topics/pihole-blocklists): Github projects with various pre-compiled blocklists
- [BlockWorkr](https://github.com/zebpalmer/blockworkr): Unified blocklist service. 
- [DNSWarden Blocklist](https://github.com/dnswarden/blocklist): DNS blocklist - no longer maintains, but could be good starting point.

## Proxy Server ##

- [E2Guardian](http://e2guardian.org/cms/index.php):   Successor of Dansgaurdian, which I had good success filtering most "inappropriate" content for K12
  
## Captive Portal ##

In K12 environments, user accounts and authentications are generally useful to provide a method to control who has internet access.  Captive portals could represent a nice way to provide this type of 

- [OpenWRT Captive Portal Docs](https://openwrt.org/docs/guide-user/services/captive-portal/start)
- <http://www.andybev.com/index.php/Using_iptables_and_PHP_to_create_a_captive_portal>: Simple method for captive portal, using iptables and php



