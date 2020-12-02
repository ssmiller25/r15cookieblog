---
catagories:
  - Project
tags:
  - project
  - weatherstation
  - weather
  - overview
date: "2019-12-31"
layout: "single"
meta: "false"
title: "Weather Station Overview"
---

The goal is to build an Internet connection weather station.  Besides the standard tempurature, pressure, and humidity 
it should also collect snowfall information (the trickiest part of the project)

## Equipment

As of 12-31-2019, the equipment list of items being used:

  * An [Onion Omega2+](https://onion.io/store/omega2p/)  The board is fairly powerful from an embedded standpoint, and 
has built-in Wifi connectivity.  It's very well that just an [Onion Omega2](https://onion.io/store/omega2/) would probably have plenty of space
  * An [Onion Arduino Dock](https://onion.io/store/arduino-dock-r2/):  The other parts of the Weatherstation kit are Arduino base, so using this dock makes sense.  Can operate on 3.3V, which I'm planning to leverage.
  * A [Sparkfun Weathershield](https://www.sparkfun.com/products/13956): Slightly pricy, but has the appropriate hookups 
for rain and wind sensors.
    * Above is the modern verion of the shield, but I own the discontinued version based on the HTU21D.  Instructions
will probably need some modification to use with the newer shield, but hopefully I can make it generic enough for both.
  * [Sparkfun Weather Sensors](https://www.sparkfun.com/products/8942): Pre-build weather sensors for the Weathershield.
Also a bit pricy, but I already have (a birthday present from my wife...and I **really** need to use it!)

## Software

Very much could be in flux, but I'm looking at the following:

  * [Weathershield Arduino Library/Sample Code](https://github.com/sparkfun/Weather_Shield): Includes code for both the 
newer and older versions of the Sparkfun Weathershield board.  Specifically I'll plan to use a variation of 
the [HTU12D Weather Station Code](https://github.com/sparkfun/Weather_Shield/blob/master/Firmware/Retired%20HTU21D%20code/Weather_Shield_Weather_Station/Weather_Shield_Weather_Station.ino) 
as it uses the same output as the [V12 Weather Station Code](https://github.com/sparkfun/Weather_Shield/blob/master/Firmware/Weather_Shield_Weather_Station_V12/Weather_Shield_Weather_Station_V12.ino)
  * [WeeWX](https://github.com/weewx/weewx): An open source project to collect info from various over the counter weather 
stations, and optionally upload to Wunderground and other aggregators.  May require a patch to read info from the serial 
connection between the Omega2+ and the Arduino shield.
  * [WeeWX Prometheus](https://github.com/tomdotorg/weewx-prometheus) - Would like some local dashboarding, leveraging a grafana/prometheus stack.  This code is a bit older, but might use it for inspiration 
* [Arduino-PWS](https://github.com/rkaczorek/arduino-pws): Potential inspiration to hook up WeeWX to the Arudino/Weathershild.  Ideally would run on the Onion Omega2 directly.
