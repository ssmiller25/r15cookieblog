---
layout: page
title: "Post Mortem - NameCheap Feb 2023"
meta: "false"
tags: ["ops", "devops", "postmortem"]
---
On Sunday, Feb 12th, I received a suspcious message about a DHL delivery from `hello@namecheap.com`.  Pretty odd, but I ignored.  Later I [received notification from NameCheap that there had been a compromise](https://www.namecheap.com/status-updates/archives/74848).  As of 18:18UTC on 2/13 it's still being investigated.  Below are the emails headers of my message, which appears to be an authenticated message from Sendgrid.  I would venture to guess that an API key was leaked.  Certainly highlights the need to protect third-party access to such systems.  Headers for the email message below (my email has been obscured)

```text
Delivered-To: xxx@r15cookie.com
Received: by 2002:a05:7110:4b1b:b0:1b8:bae0:4642 with SMTP id cc27csp2834102geb;
        Sun, 12 Feb 2023 13:15:23 -0800 (PST)
X-Google-Smtp-Source: AK7set9J96YFz4xNOGQPwftkJgPMAImirNj6KA7OTD1xRtVr3i7Yp5t4yyLouWA1EbKWqHACRN64
X-Received: by 2002:a25:8288:0:b0:928:3e3c:97f8 with SMTP id r8-20020a258288000000b009283e3c97f8mr858221ybk.36.1676236523061;
        Sun, 12 Feb 2023 13:15:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1676236523; cv=none;
        d=google.com; s=arc-20160816;
        b=JU+5kGvEuZrOOX6txCTGfHUUw/4/LS4kMPHeVE03XTq7cmayxWAFBCQRnd+A0yUN2Q
         ZWbmymcaGuD8znNR3PVcpcwkxmbinVgYZltRwR1hEDUsK3ouF6kWPFI7zWOxO5d32z/Q
         fp1JJ3Tlt/sw+F4A/rB/6dxxGkDP4LKUS7C6pfPZQ7jNaUbdYRmpIUXRfqwQV5cpvTIx
         s+EObsUc+DBkwFVUSp8P2bZn2UGmlRSlTYCF2VWHQQTX/1Xt6uvOtG9wnY24HsOU7fwk
         F4iNbN0PgzUbIyKekWQT92egd+kljxggKfKoc7rQo2IpNwPDQzuekL8ZVO0Jywz2qfq1
         sdOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:reply-to:message-id:subject:mime-version:list-unsubscribe:from
         :feedback-id:date:dkim-signature;
        bh=HW5ct3gt6/IlNWwuRb12vKQ+qSQvcZjXkm5/RuPdf9w=;
        b=JIqWQAyuzKEm/dNQ/MJfmUtUBtTD7ljmkzfEX6kyOAedzEj7hF3qHGS5e4CK6cB8OL
         8/sH21rtkPzPdtaLZoThF9jqMxIPYEiCfu2aYAdlY1QBGPCZK83jdUmD+kOvloUTuqGy
         zEvmJ2+9zPAgBptaAks3/uOzOTL4F+pYjAaJUbxEk5C1I1NDaJIamCO/4d4Cj2Fg5CH9
         rRnBA2AoaeGrsp3sULspqsrpE6eQ6qCbI0H5FSj/aFj3UlwUZDf2tZAvVacoctv5KNIO
         dy3hlS4cbo9ig9FbPr1axBeKbPg7/OoDOsE8hbFvmDwcrFwX80TKFeJWbeg+CM+iR3Bz
         XS4w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@namecheap.com header.s=s1 header.b=lxEaAYEW;
       spf=pass (google.com: domain of bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com designates 167.89.64.94 as permitted sender) smtp.mailfrom="bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=namecheap.com
Return-Path: <bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com>
Received: from xtrwqhrz.outbound-mail.sendgrid.net (xtrwqhrz.outbound-mail.sendgrid.net. [167.89.64.94])
        by mx.google.com with ESMTPS id f1-20020a5b01c1000000b008b2bc51ff7dsi8839872ybp.206.2023.02.12.13.15.22
        for <xxx@r15cookie.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 13:15:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com designates 167.89.64.94 as permitted sender) client-ip=167.89.64.94;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@namecheap.com header.s=s1 header.b=lxEaAYEW;
       spf=pass (google.com: domain of bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com designates 167.89.64.94 as permitted sender) smtp.mailfrom="bounces+4793763-2aee-steve=r15cookie.com@mailserviceemailout1.namecheap.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=namecheap.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=namecheap.com; h=content-type:from:list-unsubscribe:mime-version:subject:reply-to:to: cc:content-type:from:subject:to; s=s1; bh=HW5ct3gt6/IlNWwuRb12vKQ+qSQvcZjXkm5/RuPdf9w=; b=lxEaAYEWxojg8dzY1iPvd81RUxKIo4xWaGhxyhfyweK844vif2pPUUkyNNxSC+861n/R lDh2PEr5gdp8VeL7jM7KBgBRHWinzDBl7JO1M+N+L9KoTrQO4qen4jICFnaKbvcZaGfwgH gwdCtuoe7HBmJYRBQjyRafm6ryV7CNNL6EgvPtX3uJdQT9gwTqabieDhf3OvpvvhwzXXPg Vqj4cXdUOPqAFBsjhzXAljEqZEMmsJJq2pFb1L0KzYT6CNubF+jbPLjnETW/tEGROsyFU+ bx/yuCSbnYdfDRMhMXGQOGhR1CTcS6egfizmtWuOsTz3b/zQCpWS496UfqUBb9jQ==
Received: by filterdrecv-6bb7ffd876-sfh5q with SMTP id filterdrecv-6bb7ffd876-sfh5q-1-63E956EA-23
        2023-02-12 21:15:22.21021392 +0000 UTC m=+180999.468119843
Received: from NDc5Mzc2Mw (unknown) by geopod-ismtpd-6-1 (SG) with HTTP id 4RV2_TkXTVqUsIuX-VgOcg for <xxx@r15cookie.com>; Sun, 12 Feb 2023 21:15:22.166 +0000 (UTC)
Content-Type: multipart/alternative; boundary=678e61c5e6e5f66097dd359a659171f6e9834e1ec47506924f191fd3fda5
Date: Sun, 12 Feb 2023 21:15:22 +0000 (UTC)
Feedback-ID: 8288185:6168550:9774:iterable
From: contact <hello@namecheap.com>
List-Unsubscribe: <https://links.namecheap.com/e/encryptedUnsubscribe?_r=9a766a4fa5294d089b01463bac20344b&_s=54c2768474a04240ac0087a4e2e0e12f&_t=oX_iTZSgDVi-YDpSw4-vG3Jc-Wi8qS62zNEV07HL5-Ivg_KLzWMYW8EkBzjeM034IJCShQNzIS3RZ0Sx349EPVALId_bWJNYAiUNrHKsXow%3D>,<mailto:unsubscribe+6168550+8288185@unsubscribe.iterable.com>
Mime-Version: 1.0
Subject: 📦 : Your parcel was not able to be delivered
X-Campaign-ID: 6168550
X-Message-ID: 54c2768474a04240ac0087a4e2e0e12f
Message-ID: <4RV2_TkXTVqUsIuX-VgOcg@geopod-ismtpd-6-1>
Reply-To: support@namecheap.com
X-SG-EID: Sf/6gCYo6POogvTNeXQAU3s3up1JepzjpOGCYw/Vd1KFsB6rjRVQLh8ynmdDA0kjlZr782BoytR88NtS3rbfhTdicph6SR8CFawmzjVoHSumNV0JPXm8hvPeicnD/471Z50QWtu2kT3eKBKWjzbgTKyxu9BxCK5e9FXfhA5jgeYVn28nu1MrGPdvN2rsO9KxlGb4kSci7ftNh95f5HfbInoZOf/Msdq8h5Z76El03cR/bHIRhL8bmdJtMqbhHpTi
X-SG-ID: N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi/IARr5ApfQLGQYXi0KvHQ0zliaWeU7R1y6F9VKjNgb5XkO+gAgTBd7ob0+O8tkWy3XeoAiElAxc6ajQKLAJNLCCjTrysc4kte6oAao6WG/nLSsj0lPRNqwclaEPEMkRjtPCe/I68lhqH1TuIU9Pvap3qoGf2J8K9r8fuARDl5+ifA==
To: Steven Miller <xxx@r15cookie.com>
X-Entity-ID: nYXv3xAQEE15JmfKP56ELQ==
```