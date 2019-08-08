---
layout: page
title: "Git Cheatsheet"
meta: "false"
tags: ["development", "git"]
---


To save myself searching for common it commands


# Reset master to origin/master

Say...accidently commit a change to the master branch that I did not intent too...

```sh
git checkout -B master origin/master
```

# Submodule init and update


* Initialize submodules with new repo

```sh
git submodule init && git submodule update
```

* Initialize submodules with new repo (during clone)

```sh
git clone --recurse-submodules git://myawesomeproject...
```

* Update Submodules 
```sh
git submodule update --remote --merge
```

* Push submodules
```sh
git push push --recurse-submodules=on-demand
```

More submodule details at https://git-scm.com/book/en/v2/Git-Tools-Submodules
