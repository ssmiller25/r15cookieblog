---
layout: page
title: "Git Cheatsheet"
meta: "false"
tags: ["dev", "git"]
---

To save myself searching for common it commands

## Git Ignores

[gitignore.io](https://www.toptal.com/developers/gitignore): Quick was to generate gitignore files.  [Source code](https://github.com/toptal/gitignore.io)

## Git FF only

```sh
git config --global pull.ff only
```

Good discussion: [Why use should use git pull --ff-only](https://blog.sffc.xyz/post/185195398930/why-you-should-use-git-pull-ff-only-git-is-a)

## Git Ignore keeps tracking files!

[This Stackoverflow answer](https://stackoverflow.com/a/1274447) explains it, but need to remove any previously tracked files now in `.gitignore` with the command below:
  
```sh
git rm --cached <file>
```

## Remove file permanently from git history

1. Add the file to `.gitignore` so it doens't happen again.
2. Then run the following:

    ```sh
    git filter-branch --index-filter "git rm -rf --cached --ignore-unmatch <filetoremove>" HEAD
    git push --force
    ```

Source: <https://h.daily-dev-tips.com/removing-a-env-file-from-git-history>

## Push an Empty Commit

Mostly useful to retrigger CI/CD without making a "junk" change:

```sh
git commit --allow-empty -m “Message”
```

Source: <https://devdojo.com/kodewithchirag/learn-to-push-an-empty-commit>
## Git Rebase

TL;DR

```sh
git rebase master # or origin/master
# Resolve merge conflicts
git push --force-with-lease  #Force push rebased local branch
```

- [Git Rebase: Don't be Afaird of Force Push](https://blog.verslu.is/git/git-rebase/)
- [Force-with-lease: an alternative to Force Push](http://weiqingtoh.github.io/force-with-lease/)

## Reset master to origin/master

Say...accidentally commit a change to the master branch that I did not intent too...

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

## Refuse to Merge Unrelated Histories

```sh
# Since I don't usually enable pull merged
git fetch origin
git merge origin master --allow-unrelated-histories
```

From <https://www.educative.io/answers/the-fatal-refusing-to-merge-unrelated-histories-git-error>

## Submodule init and update

### Initialize submodules with new repo

  ```sh
  git submodule init && git submodule update
  ```

### Initialize submodules with new repo (during clone)

  ```sh
  git clone --recurse-submodules git://myawesomeproject...
  ```

### Update submodules

  ```sh
  cd <submodule dir>
  git checkout master
  git pull
  ```

More submodule details at [https://git-scm.com/book/en/v2/Git-Tools-Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

### Remove submodule

```sh
git submodule deinit -f path/to/submodule
rm -rf .git/modules/path/to/submodule
git rm -f path/to/submodule
```

Source: [StackOverflow](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule/21211232#21211232)

## Corrupted git objects

If you see an error like the following:

```text
fatal: loose object cdd75ee0cbac88baa81b31d22b2dbe9ae5108526 (stored in .git/objects/cd/d75ee0cbac88baa81b31d22b2dbe9ae5108526) is corrupt
```

Two options (both assume you have a repo clones remotely)

1. If you don't have anything you need to commit, just reclone the repo

   ```sh
   git remote -v   # Record current remote
   cd ..
   rm -rf <remoteclone>
   git clone <remoteref>
   ```

2. If you have changes you wish to commit.  Note...this will cause you to lose your local commit history, but the files changes themselves will remain intact.

   ```sh
   tofixgit=$(pwd)
   remote=$(git remote -v | grep origin | awk ' { print $2; } ' | head -1) # Get current remote
   cd ..
   cp -R $tofixgit ${tofixgit}-bak
   git clone ${remote} ${tofixgit}-clean
   rm -rf $tofixgit/.git
   cp -r ${tofixgit}-clean/.git ${tofixgit}
   rm -rf ${tofixgit}-clean
   ```

   Once done, should be able to recommit any changes.

## Advance Fixes

- [https://ohshitgit.com/](https://ohshitgit.com/)
- [10 Git tips we can't live without](https://opensource.com/article/22/4/git-tips)
