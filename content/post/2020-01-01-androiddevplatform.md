---
date: "2020-01-01"
description: ""
tags: []
title: "Android For Development"
---

My sister got me a Logitech K480 Bluetooth keyboard for Christmas!  What makes my truly excited about this gift is the mental exercise of using my Android phone as a content creation device, both for writing and coding.  It's a bit of a stretch, but with the powerful technology in our pocket, we should be able to leverage these devices more productively! Here is the work flow and apps I'm using

# Writing
  * Google Docs:  Actually works fairly well for basic content creation, including spell and grammar mer check, auto-save to the cloud, etc, etc.    The problem is a clean export to Markdown, which I've not found a good system for converts, besides just copy/paste into a text editor
  
# Coding
  
 * A little trickier.    So using a combo of Pocket Git, Droid Edit, and ConnectBot.
 * Use ConnectBot to generate a new key pair.   You'll need to copy the private and public key, and use Droid Edit to save those into files.   Create a directory called "ssh" Droid Edit can create an stevephone and stevephone.pub file
 * Send public key to yourself in email, or google drive document (remember, it's public, so don't have to keep it a secret)
 * On Github and/or Gitlab, add new key keys
 * Use PocketGit to clone down the repo.  Stay eith the defaults to store the repos under /Git
 * For editing, use PocketRepo to open files with DroidEdit
 * Use the web interface for Github and Gitlab to manage PR creation and merges.

This works ok, but really assumes you have a build pipeline already setup,
and wouldn't be useful for larger edits without either an interpreter/compiler on Android, or at least a remote system to debug while editing.
