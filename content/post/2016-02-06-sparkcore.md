---
date: "2016-02-06T00:00:00Z"
description: ""
tags: []
title: SparkCore Fun...
---

I recently purchased a [Spark Core](https://www.particle.io/) development kit at Micro Center last week.  The Spark Core is a cloud development board.  Normally I try to avoid any cloud platform that may lock me into a vendor, 
but as Particle (the company) fully releases source code for the schematics, firmware on the device itself, and a node.js implementation of the server side, it seems like a very safe platform for development.  

The Spark is an older version of their newer development boards, the "Photon".  Normally the Spark phone app can be 
used to initialize the board, but the app did not work for me.  Fortunately, there are methods to setup the device manually.  The steps I needed to take to get the Spark working were:

  * Make sure to have an account on [the Particle Dashboard](https://dashboard.particle.io).
  * [Install Particle CLI Tool](https://github.com/spark/particle-cli).
  * [Update Firmware for Spark Core](https://github.com/spark/particle-cli#core).
  * Once done, make sure device is in listening mode. (Hold the setup button for three seconds)
  * Obtain serial by running "particle serial identify".  Record the "device id".
  * Run "particle serial setup wifi".  Answer the appropriate connections for your wifi network.
  * Check the Particle Dashboard.  If device doesn't appear in the dashboard:
    * Go to the [Online Code IDE](https://build.particle.io).
    * Click one of the example apps to load it.  "Blink an LED" works well.
    * Click the thunderbolt in the upper right hand corner.
    * Click "Add New Device".
    * Enter in the Device ID from above.
    * Check the dashboard again, and verify the connection.
  * Once everything is connected, you may with to reload "Tinker".   Go back to the [Online Code IDE](https://build.particle.io), click on Tinker under Example Apps, then click the Thunderbolt to send.

Overall I cannot wait to use this for a project.  For now I'll be sticking with Particle's service, but at some
point I may also test out rolling out my own server and client environment.



