---
title: "Blackberry Tethering on Linux"
draft: "false"
tags:
  - ops
  - doku-import
date: "2010-10-31"
meta: "false"
---

The Blackberry is no longer my phone of choice.  I put together this guide for a few friends.  The information is compiled from other sites and forum postings.  No guarantees of the effectiveness of these directions.  These directions were successful on a Blackberry Pearl 8300.

Bluetooth is used to perform the actual tethering.  USB would have been ideal, but the protocol is very proprietary.  The Bluetooth RFCOMM method is a bit more open.

  - First, use the GUI utilities under Linux to pair the phone with the Laptop
  - Drop the attached rfcomm.conf file into /etc/bluetooth/.  You will have to change the Bluetooth address to match your phone in the config file (if it's not a blackberry, the "channel" line may also be different.  There's a way to use the bluetooth utilities to query what all the channels do on a device, but I don't recall the command right off hand).
  - Restart the computer (just to make sure the rfcomm file kicks in).  If you run the "rfcomm" command, it should show your device and channel, if all is ok.
  - Drop tether_chat in /etc/ppp, and tether in /etc/ppp/peers/.
  - You will probably want to run a "killall NetworkManager".  When using the tether, NetowrkManager does not think it's online, so the browser won't work.
  - From a root prompt, run "pppd call tether" command.  It should dial-up your phone.  You will probably have to accept the bluetooth connection from the phone.  After that, the display should show your IP address.  You will have to leave the terminal window open.
  - When your done, just Ctrl+C on the pppd command window, it should hang up.

==== rfcomm.conf ====
```
#
# RFCOMM configuration file.
#

rfcomm0 {
#	# Automatically bind the device at startup
#	bind no;
	bind yes;
#
#	# Bluetooth address of the device
#	device 11:22:33:44:55:66;
	device 00:1C:CC:FC:62:A9; #
#	
# RFCOMM channel for the connection
#	channel	1;
	channel	3;
#
#	# Description of the connection
#	comment "Example Bluetooth device";
	comment "Blackberry";
}
```

==== tether_chat ====
```
''
ATZ OK
ATE0V1S7=90
OK ATS0=0
OK "ATD#777"
CONNECT
''
```

==== tether ====
```
/dev/rfcomm0 115200
connect '/usr/sbin/chat -v -f /etc/ppp/tether_chat'
crtscts
modem -detach
noccp
defaultroute
usepeerdns
noauth
ipcp-accept-remote
ipcp-accept-local
noipdefault
```

