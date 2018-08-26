---
date: "2015-11-11T00:00:00Z"
description: ""
tags: []
title: CloudReady in Virtualbox
---

The ChromeOS has been a great experience so far.  One problem, however, is that you generally need to purchase a 
Chromebook to use it, or go through compiling the ChromeOS from source.  A few days ago I came across 
[Neverware's CloudReady](http://www.neverware.com/free/), which provides an freely available (to individuals) 
ChromeOS experience on generic hardware.  

Cloudready, however, does not support 
dual boot, so it will wipe away anything on the machine.  Following some hints from [this page](https://neverware.zendesk.com/hc/communities/public/questions/205595978-Has-anyone-prepared-a-Virtual-Appliance-of-this-yet-) I was able to 
get the CloudReady to install on a Virtualbox VM, without the need to create a USB bootable drive.

  * Download the latest CloudReady Image.  Unzip the file to get the ".bin" file
  * Convert the bin file into a VirtualBox VDI

{{< highlight shell >}}
VBoxManage convertfromraw cloudready-free-43.1.37.bin cloudready-free-43.1.37.vdi
{{</ highlight >}}

  * Create a new VM in Virtualbox:
    * Click the "Expert Mode" button
    * Select type as "Linux" and version as "Other Linux (64-bit)"
    * Memory size 2GB of larger
    * Point the Hard disk to the VDI created above.
  * Edit the properties of the VM
    * Under System, Motherboard, Enable EFI
    * Under System, Motherboard, Set Pointing Device to PS/2 Mouse
    * Under System, Processor, select Enable PAE/NX
  * Boot the Machine, and you should be ready to go!
