---
date: "2020-05-31"
description: ""
tags: ["dev"]
title: "Android For GitOps Writing Workflow"
---

My sister got me a Logitech K480 Bluetooth keyboard for Christmas!  What makes me truly excited about this gift is the 
mental exercise of using my Android phone as a content creation device.  It's a bit of a stretch, but with this kind 
of powerful technology in our pockets, we should be able to leverage these devices more productively.

My writing workflow is focused around markdown stored in git (backed by [Gitlab](https://www.gitlab.com) 
or [Github](https://www.github.com)), rendered using [Hugo](https://gohugo.io/), and leveraging 
[Netlify's](https://www.netlify.com/) platform for integration and deployment.  I worked to adopt that workflow from an 
Android perspective:

* Google Docs:  Initial content is created in a Google doc to take advantage of the interface, as well as spell and 
grammar check, auto-save to the cloud, collaboration, etc.
* Export the Google Doc to Markdown 
  * On a pure phone, copy/paste from Drive to a new textfile.
  * On a desktop, try using [this plugin](https://gsuite.google.com/marketplace/app/docs_to_markdown/700168918607).  The source for the plugin is also [available here](https://github.com/evbacher/gdocs2md) 
* For the actual GitOps Android workflow a combo of Pocket Git, Droid Edit, and ConnectBot.
  * Use ConnectBot to generate a new key pair.   You'll need to copy the private and public key, and use Droid Edit to 
save those into files.   Create a directory called "ssh" Droid Edit can create a `stevephone` and `stevephone.pub` file
  * Send public key to yourself in email, or google drive document (remember, it's public!)
  * On Github and/or Gitlab, add new key keys
  * Use PocketGit to clone down the repo.  Stay with the defaults to store the repos under /Git
* For editing, use PocketRepo to create and/or open existing files with DroidEdit
* Use PocketRepo for branch creation, commits, pushes, and other repo utilities.
* Use the web interface for Github and Gitlab to manage PR creation and merges.  At least with Gitlab, the web interface 
seemed fairly usable.

This process assumes you have a build pipeline and site already setup.  Although it seems potentially possible to start from
nothing to a fully functional pipeline using just your phone, but certainly would be a bit more difficult then just using
a laptop.  My next goals will be:

* Automatic integration with grammar checks ([Language Tools](http://wiki.languagetool.org/http-server), maybe Grammerly) 
and perhaps prose linters such as proselint, writegood, or vale [(from this Reddit post)](https://www.reddit.com/r/linux/comments/a22ooo/grammerly_for_vim/eauqj9t?utm_source=share&utm_medium=web2x)
* A better export process between docs and git.  It might involve a bit of modification to the [already existing plugin](https://github.com/evbacher/gdocs2md)
* Adopt this for development, at least a language like Python that can be run from the Phone directly.
