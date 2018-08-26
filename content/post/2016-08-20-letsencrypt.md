---
date: "2016-08-20T00:00:00Z"
description: ""
tags: []
title: Moving To "Let's Encrypt" TLS Certificate
---

As a fan of the EFF, and security in general, I was pretty excited to hear about
the [Let's Encrypt](https://letsencrypt.org/) project.   Let's Encrypt is a project sponsored by EFF, University of Michigan, Mozilla,
Cisco and Akamai to provide free, signed TLS certificates.  While I've used
StartSSL in the past for free certificates, I've found their process a bit
cumbersome (although in all fairness, they have done a ton of redesign this year).  Despite the redesign, I went forward with using Let's Encrypt to renew my TLS certificate.

I used the [EFF Certbot](https://certbot.eff.org/) as my client, which works fairly well,
even on an older CentOS system.  It couldn't quite parse the Apache
configuration correctly, but pointing to the certificate manually was not
a difficult configuration change.  In case anyone finds the configuration handy,
here are the appropriate lines from my httpd.conf below.

Hopefully this begins an exciting new chapter in secure Internet communication
and makes encrypted web communication the default, as it should be.


{{< highlight shell >}}

  <VirtualHost x.x.x.x:443>
    SSLEngine on
    # Moving to let's encrypt
    SSLCertificateFile    /etc/letsencrypt/live/<domain>/cert.pem
    SSLCertificateKeyFile /etc/letsencrypt/live/<domain>/privkey.pem
    SSLCertificateChainFile /etc/letsencrypt/live/<domain>/fullchain.pem
    ...
  </VirtualHost>

{{< / highlight >}}
