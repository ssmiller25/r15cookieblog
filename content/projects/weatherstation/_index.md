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

  - An [Onion Omega2+](https://onion.io/store/omega2p/)  The board is fairly powerful from an embedded standpoint, and 
has built-in Wifi connectivity.  It's very well that just an [Onion Omega2](https://onion.io/store/omega2/) would probably have plenty of space
  - An [Onion Arduino Dock](https://onion.io/store/arduino-dock-r2/):  The other parts of the Weatherstation kit are Arduino base, so using this dock makes sense.  Can operate on 3.3V, which I'm planning to leverage.
  - A [Sparkfun Weathershield](https://www.sparkfun.com/products/13956): Slightly pricy, but has the appropriate hookups 
for rain and wind sensors.
    - Above is the modern verion of the shield, but I own the discontinued version based on the HTU21D.  Instructions
will probably need some modification to use with the newer shield, but hopefully I can make it generic enough for both.
  - [Sparkfun Weather Sensors](https://www.sparkfun.com/products/8942): Pre-build weather sensors for the Weathershield.
Also a bit pricy, but I already have (a birthday present from my wife...and I **really*- need to use it!)

## Software

Current architecture.  Trying to leverage a Microservice architecture for custom code, versus extending external projects.

- Source Data
  - [Weathershield Arduino Library/Sample Code](https://github.com/sparkfun/Weather_Shield): Includes code for both the 
newer and older versions of the Sparkfun Weathershield board.  Specifically I'll plan to use a variation of 
the [HTU12D Weather Station Code](https://github.com/sparkfun/Weather_Shield/blob/master/Firmware/Retired%20HTU21D%20code/Weather_Shield_Weather_Station/Weather_Shield_Weather_Station.ino) as it uses the same output as the [V12 Weather Station Code](https://github.com/sparkfun/Weather_Shield/blob/master/Firmware/Weather_Shield_Weather_Station_V12/Weather_Shield_Weather_Station_V12.ino)
  - Some Custom Python/Go/other that will pull data from weather station and publish on MQTT queue.
  - Custom code will also provide a prometheus endpoint with the last collected metrics
  - [Expected MQTT Message Format](https://github.com/morrowwm/weewxMQTT/wiki/Configuration)
- [Core: WeeWX](https://github.com/weewx/weewx): An open source core that supports a **lot*- of hardware and aggrator targets such as Wunderground.
  - [WeeWX MQTT](https://github.com/morrowwm/weewxMQTT): The only addon outside the core.  
- Other
  - Prometheus/Grafana: Hosted outside of Omega2.  Would like some local dashboarding as well, although will be secondary to Wunderground/other aggregator
  - Pull Prometheus metrics directly for custom code collector on Omega2
  - Potential alternative is an adapter that reads messages from MQTT and provides scrape endpoint.  
- Reference (not directly used at the moment)
  - [Arduino-PWS](https://github.com/rkaczorek/arduino-pws): Potential inspiration to hook up WeeWX to the Arudino/Weathershild.  Ideally would run on the Onion Omega2 directly.
