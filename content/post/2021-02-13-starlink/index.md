---
date: "2021-02-13"
description: ""
tags: ["ops"]
title: "Starlink Review and Tips For the Technically Inclined"
---



## Installation - A Breeze!

Initial installation was fairly easy.  There was little documentation that came with the kit.  Nevertheless, it went fairly well.  Granted, I picked an area where I could do the install with the build-in equipment (see [Line of Site](#line-of-site) later on).  I already had an ingress point into the house for my 4G LTE setup, so I utlized the same hole.  The cable itself is a shielded RJ45 connector (CAT 7 I believe - it comes with a LONG length of cable out to the dish).

I opted to leverage my own firewall/wifi network, as most of you probably will.  There's a view caveats, which I detail in [Your Own Network](#your-own-network).  The biggest one is that the Starlink app will not work without some adjustment to your network.

## Line of Site

Make **sure** to really believe the app for line of site.  Put it out where there was some modest obstructions - trees along the northern sky.  It still worked, but would have modest interruptions every hour or two.  Video calls themselves were nearly unusable.  Fortunately the Starlink phone app was helpful, and I found 
another area to put the dish.

One nice item is that the cabling appears to be just shield CAT7.  The cable between the dish and power injector I'm leaving alone.  But I'm free to run my own
cable from the injector to my own equipment.

## Your Own Network

You don't necessarily need to use the wifi point that came with Starlink.  Although managing the dish through the app requires a bit more modification of one's network.  I found [this post](https://themethow.com/forum/discussion/6-starlink-technical-tips-and-tricks#13)  With a Ubifi Router:

- Go to Routing
- Add the first static route
  - Route Type: Interface
  - Destination Network: 192.168.100.1/32
  - Interface: Whichever starlink is plugged into
  - Description: Starlink offline address
  - Save
- Add the second static route
  - Route Type: Interface
  - Destination Network: 100.127.255.1/32
  - Interface: Whichever starlink is plugged into
  - Description: Starlink online address
  - Save