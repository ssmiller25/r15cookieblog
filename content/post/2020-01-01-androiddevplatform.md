---
date: "2020-01-01"
description: ""
tags: []
title: "Android For GitOps Writing Workflow"
---

My sister got me a Logitech K480 Bluetooth keyboard for Christmas!  What makes my truly excited about this gift is the mental exercise of using my Android phone as a content creation device.  It's a bit of a stretch, but with the powerful technology in our pockets, we should be able to leverage these devices more productively!

My writing workflow is focused around Markdown stored in Git, rended leveraging Hugo, and leveraging Netlify's platform for integration and deployment.  Here is the workflow from an Android perspective.

  * Google Docs:  Initial content is created in a Google doc to take advantage of the interface, as well spell and grammar check, auto-save to the cloud, etc, etc.    The problem is a clean export to markdown, which I've not found a good system for convertion, besides just copy/paste into a text editor
 * For the actual GitOps Android workflow a combo of Pocket Git, Droid Edit, and ConnectBot.
   * Use ConnectBot to generate a new key pair.   You'll need to copy the private and public key, and use Droid Edit to save those into files.   Create a directory called "ssh" Droid Edit can create an stevephone and stevephone.pub file
   * Send public key to yourself in email, or google drive document (remember, it's public!)
   * On Github and/or Gitlab, add new key keys
   * Use PocketGit to clone down the repo.  Stay eith the defaults to store the repos under /Git
 * For editing, use PocketRepo to open files with DroidEdit
 * Use Pocketrepo for branch creation, commits, pushes, and other repo utlities.
 * Use the web interface for Github and Gitlab to manage PR creation and merges.  At least with Gitlab, the web interface seemed fairly usable.

This works ok, but really assumes you have a build pipeline already setup,
and wouldn't be useful for larger edits without either an interpreter/compiler on Android, or at least a remote system to debug while editing.  I'm not sure you could 100% create this workflow from just a mobile device, but it's nice to have a bit of an editing platform now available without a laptop (necessarily)
