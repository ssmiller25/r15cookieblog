---
date: "2021-03-20"
description: ""
tags: ["ops", "wkstation"]
title: "ChromeOS Linux (Chrostini) Error 58"
---

With a recent update to 89.0.4389.82 of ChromeOS, there was also an update to the underlying container that hosts Linux.  Normally if this happens it's a relatively short process.  However, a few days ago this took far longer, and ended up with a "Error starting penguin container: 58" message.  Not helpfule at all!  Fortunately with some searching, I found the solution on [Masaki Muranaka's blog](https://qiita.com/monamour555/items/2d8d58687c2c69941da4).  The article is in Japanese, but fortunately Google translate was able to work well enough for me to get the steps necessary to fix the issue.  Based on that article, the steps I took to fix are below.

Full error I encountered:

```text
[======= /] Starting the Linux container Error starting penguin container: 58
Launching vmshell failed: Error starting crostini for terminal: 58
```

1. Start the crosh shell with `Ctrl + Alt + T`
2. Enter the terminal (and yes there no **l** as the end of terminal. [Some explanation from the Chromium docs](https://chromium.googlesource.com/chromiumos/docs/+/master/containers_and_vms.md#overview))
  
    ```sh
    crosh> vmc start termina
    ```

3. List the current containers.  If you've experienced the issue, you should see the two containers.

    ```sh
    (termina) chronos @ localhost ~ $ lxc list
    +------------------------+---------+------+------+------------------------+
    |  NAME                  |  STATE  | IPV4 | IPV6 |    TYPE    | SNAPSHOTS |
    +------------------------+---------+------+------+------------------------+
    | penguin                | STOPPED |      |      | PERSISTENT |     0     |
    +------------------------+---------+------+------+------------------------+
    | penguin-crostini-remap | STOPPED |      |      | PERSISTENT |     0     |
    +------------------------+---------+------+------+------------------------+
    ```

4. Manually start the penguin container

    ```sh
    (termina) chronos @ localhost ~ $ lxc start penguin
    ```

5. This may take a **long time**.  Do not interrupt the process
6. Once complete, you will simply return to the command prompt.  If you list containers again, you will only see `pengiun`

    ```sh
    (termina) chronos@localhost ~ $ lxc list
    +---------+---------+-----------------------+---------------------------------------------+------------+-----------+
    |  NAME   |  STATE  |         IPV4          |                    IPV6                     |    TYPE    | SNAPSHOTS |
    +---------+---------+-----------------------+---------------------------------------------+------------+-----------+
    | penguin | RUNNING | 172.17.0.1 (docker0)  | 2607:fb90:26:898e:216:3eff:fe74:168e (eth0) | PERSISTENT | 0         |
    |         |         | 100.115.92.196 (eth0) |                                             |            |           |
    +---------+---------+-----------------------+---------------------------------------------+------------+-----------+
    ```

Although slightly frustrating, this was a great exploration of the internals of the ChromeOS Linux implementation.  The Chromium project [has a great technical manual](https://chromium.googlesource.com/chromiumos/docs/+/master/containers_and_vms.md) that dives a bit more into the ChromeOS Linux integration how to leverage the infrastructure to spawn your own containers and VMs.  Could be super-useful if you had a powerful enough Chromebook.  Mine being just an Asus C434T with 4GB of RAM would be a bit constrained doing anything of that nature - so I'll stick with the default Crostini experience.
