---
date: "2018-09-06"
description: ""
tags: []
title: "Blog Migration Complete"
---

My blog migration is finally complete!  The technology stack I'm using is
an exciting progression of the theme of the last few technology stacks I've 
used.  

I've always attempted to stick with formats that would be good long-term 
archives of my data.  The stack should be open, with the ability to easily
move hosting providers or even core parts of the stack.  The newest platform 
stack that I'm using:

* The core of the site is kept as markdown, but I'm now using the [Hugo](https://gohugo.io/) static
site generator.  Hugo is written in Go, so far less dependencies and far 
quicker then Jekyll, that I used in the past.
* Moved the main Git hosting to gitlab.  The main reason being that gitlab 
supports free private repos.  This repo is public, but for other projects,
I may wish to use a private repo, and would prefer to keep my cost down.
* Hosting is through [Netlify](https://www.netlify.com/).  They provide free
hosting, and an integrated CI pipeline that will build the site automatically
on each pull request, and SSL provided through Let's Encrypt.  They include
a ton of free and/or cheap options centered around the concept of the [JAM
Stack](https://jamstack.org/).  Although I think this might be more of a 
"Netlify" term, I appreciate the move back to mostly stack sites defined by
markdown, JavaScript for user interface interaction, and clean APIs for 
interfacing with servers.
* Mail still handled by Google since I'm grandfathered into the "Free" tier of
Google Apps.
* DNS hosted by [Digital Ocean](https://www.digitalocean.com/), which is provided 
is completely for free!  I still use them for VPS, and probably for any custom
Microservices that might not fit within a Lambda function/Azure Function/etc.


The migration was also a time to remind myself on what I've done in the 
past.  Just to record it 

* 2009: Google site on https://www.stevenmiller.info.  It still exists, mainly to keep links alive for my 2010 Maker Faire Project [the Moo Machine](http://www.stevenmiller.info/home/projects/moomachinehome)
* 2011: Dokuwiki site at https://www.avrgeek.com  I still own the domain, but just need to get redirection working again.
* 2014: Dokuwiki site, but moved to https://www.r15cookie.com and hosting by Digitial Ocean.
* 2015: Jekyll Site at https://www.r15cookie.com, with some migration from Dokuwiki

