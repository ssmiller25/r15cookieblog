---
date: "2020-01-01"
description: ""
tags: []
title: "Android For GitOps Writing Workflow"
---

Happy New Year!

My sister got me a Logitech K480 Bluetooth keyboard for Christmas!  What makes me truly excited about this gift is the 
mental exercise of using my Android phone as a content creation device.  It's a bit of a stretch, but with the powerful 
technology in our pockets, we should be able to leverage these devices more productively.

My writing workflow is focused around markdown stored in git (backed by [Gitlab](https://www.gitlab.com) 
or [Github](https://www.github.com)), rendered using [Hugo](https://gohugo.io/), and leveraging 
[Netlify's](https://www.netlify.com/) platform for integration and deployment.  I worked to adopt that workflow from an 
Android perspective:

  * Google Docs:  Initial content is created in a Google doc to take advantage of the interface, as well as spell and 
grammar check, auto-save to the cloud, etc, etc.    The problem is a clean export to markdown, which I've not found a good system 
for convertion, besides just copy/paste into a text editor
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
  * Focus on a better export from Google Docs for Markdown, as that takes a bit of cleanup work.  Although adding decent 
checks to the build pipeline may remove that need entirely.
  * Adopt this for development, at least a language like Python that can be run from the Phone directly.
