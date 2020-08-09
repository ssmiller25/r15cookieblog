---
layout: page
title: "Desktop"
layout: "single"
meta: "false"
tags: [
    "ops"
]
---
# General Workstations (Cloud)

- [Asana](https://www.asana.com): The main task tracker we use at home
  - [Asana CLI](https://github.com/thash/asana): Asana CLI in Go.  
  - [Asana Project Mover](https://asana.kothar.net/):  Move projects between workspaces
- [GifCAP](https://gifcap.dev/): Completely client based animated GIF capture tool!  [Source code](https://github.com/joaomoreno/gifcap)

# Linux Workstations

- [Ultra-Geek Workstation Guide](https://begriffs.com/posts/2017-05-17-linux-workstation-guide.html): Really good overview of hardware/software for Workstations 
- [Nix Configs](https://github.com/coreyoconnor/nix_configs): An example of a nicely modularized nix configuration

# Windows Workstations

- [Nitenite](https://ninite.com/): Simple installation wizard for new installs

# Remote Support 

- [MeshCentral](https://www.meshcommander.com/meshcentral2)

# Remote Support for Linux Workstations

**Untested!**

A method to provide remote control to remote users, generally behind there own firewall

The user must perform a few tasks to allow remote control

- Run "gconftool-2 -s -t bool /desktop/gnome/remote_access/enabled true" to enable VNC Remote control
- Create an SSH tunnel to a common destination machine "ssh -R 5900:localhost:5900 <remote machine>"

Remote machine

- Connect to common machine "ssh -L 5900:localhost:5900 <remote machine>"
- With a vnc viewer "vncviewer localhost:0"


