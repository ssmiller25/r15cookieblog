---
layout: page
title: "Git Cheatsheet"
meta: "false"
tags: ["dev", "git"]
---

To save myself searching for common it commands

## Git Ignores

[gitignore.io](https://www.toptal.com/developers/gitignore): Quick was to generate gitignore files.  [Source code](https://github.com/toptal/gitignore.io)

## Git Ignore keeps tracking files!

[This Stackoverflow answer](https://stackoverflow.com/a/1274447) explains it, but need to remove any previously tracked files now in `.gitignore` with the command below:
  
```sh
git rm --cached <file>
```

## Reset master to origin/master

Say...accidently commit a change to the master branch that I did not intent too...

```sh
git checkout -B master origin/master
```

## Sync local with upstream

Recording this as my previous method (`git checkout master; git pull upstream/master)` resulted in extra commits I didn't want...

Assume you already have an [upstream configured](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork)

```sh
git fetch upstream
git checkout master
git merge upstream/master
```

Source: [Github](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/syncing-a-fork)

## Submodule init and update


- Initialize submodules with new repo

  ```sh
  git submodule init && git submodule update
  ```

- Initialize submodules with new repo (during clone)

  ```sh
  git clone --recurse-submodules git://myawesomeproject...
  ```

- Update Submodules 

  ```sh
  cd <submodule dir>
  git checkout master
  git pull
  ```

More submodule details at [https://git-scm.com/book/en/v2/Git-Tools-Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Remove submodule

```sh
git submodule deinit -f path/to/submodule
rm -rf .git/modules/path/to/submodule
git rm -f path/to/submodule
```

Source: [StackOverflow](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule/21211232#21211232)

## Advance Fixes

Also a good site all around:  [https://ohshitgit.com/](https://ohshitgit.com/)
