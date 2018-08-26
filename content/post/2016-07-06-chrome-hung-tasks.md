---
date: "2016-07-06T00:00:00Z"
description: ""
tags: []
title: Chromebook Mysterious Reboot
---

A few months ago I noticed a weird issue on the Chromebook where it would
reboot hard if I performed a dd operation to write a Linux distro out to USB.
I didn't think anything of it at the time.  Browsing around the crouton source
code for an unrelated project, I came across this section of code that explains
the issue.  The Chromebook OS has the hunk_task_panic timer set for 2 minutes.
The dd operation generally will go over 2 minutes for almost all distros, so
the system reboots.  So if one is doing some work that involves long IO
operations, the following command in the code below should disable the kernel
panic if a hung task is detected.

From [Crouton Installer](https://github.com/dnschneid/crouton/blob/master/installer/functions):

{{< highlight shell >}}

# Large writes to slow devices (e.g. SD card or USB stick) can cause a task to
# be stuck for longer than 120 seconds, which triggers a kernel panic (and an
# immediate reboot). Instead of disabling the timeout altogether, we just make
# sure the kernel does not panic (this is the default configuration of a vanilla
# kernel). See crbug.com/260955 for details.
disablehungtask() {
    echo 0 > /proc/sys/kernel/hung_task_panic
}

{{< / highlight >}}
