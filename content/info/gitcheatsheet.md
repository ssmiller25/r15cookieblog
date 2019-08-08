---
layout: page
title: "Git Cheatsheet"
meta: "false"
tags: ["development", "git"]
---


To save myself searching for common it commands


# Reset master to origin/master

Say...accidently commit a change to the master branch that I did not intent too...

```
git checkout -B master origin/master
```

# Submodule init and update

Useful git aliases from https://git-scm.com/book/en/v2/Git-Tools-Submodules

And raw commands
* Initialize submodules with new repo
```
git submodule init && git submodule update
```
or all in one command on clone...
```
git clone --recurse-submodules git://myawesomeproject...
```

* Update Submodules 
'''sh
git submodule update --remote --merge
'''

* Push submodules
```sh
git push push --recurse-submodules=on-demand
```
