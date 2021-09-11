---
date: "2021-09-11"
description: ""
tags: ["dev"]
title: "Android GitOps 2021"
---
With the impending birth of our son, I revisited my original [Android GitOps Workflow post]({{ ref "2020-05-31-androidgitopswriting.md" }}).  We will be in the hospital for
an extended period of time.  I'll have my Chromebook, but it's conceivable that I'll wish to update my blog and personal notes from the phone.
Both my personal journal and bullet/Monk Manual journal are both in git repositories, so the ability to access them would be beneficial.  The experience is also a great way to explore what a DevOps workflow looks like from just a pure Android device In 2021, the stack needed to update text and code from a phone is a lot simpler:

- **Logitech K480 Bluetooth Keyboard** - Not a requirement, but very handy for large amounts of text input.
- **Github Android App** - A very nice app, especially for obtaining repositories URLs and tokens
- **Gitlab Web Interface** - Gitlab's web interface is very mobile friendly - and fairly easy to generate tokens for API access
- **Spck Editor** - Excellent IDE with direct support for Github and Gitlab repos.

So far my tests have been really successful.  HTTP based git access is a little difficult for me - I prefer SSH access, but also from the perspective of running on the phone, it is **a lot** easier to just deal with API tokens and generating public/private key paris.  The only major issue is that Spck Editor has no methodology for handling merge conflicts, besides [just to accept them](https://spck-code-editor.readthedocs.io/en/latest/git-features/#merge-conflicts).  Honestly for the smaller edits I'll be doing from the phone, I can deal with pushing merge conflicts up to the repo, and fixing them on a full computer.  

I may experiment in the coming weeks with doing more updates from my phone.  Most of that depends on having good CI/CD pipelines in place.  My blog is hooked into Netlify, doing most of that work for me.