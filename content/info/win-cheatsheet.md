---
layout: page
title: "Windows Cheatsheet"
meta: "false"
tags: ["devops","ops", "windows"]
---
Every now and then we do have to use windows.  So let's try to make it as Linux like as possible

## Enabling WinRM

As Ansible leverages WinRM for managing Windows servers, it's guide below provides a lot of helpful guidance:

<https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html>

The TL;DR is to use the following snippet below to run a powershell script that will correctly enable WinRM for the system:

```powershell
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file
```

Testing WInRM

```powershell
# Test out HTTP
winrs -r:http://server:5985/wsman -u:Username -p:Password ipconfig

# Test out HTTPS (will fail if the cert is not verifiable)
winrs -r:https://server:5986/wsman -u:Username -p:Password -ssl ipconfig

# Test out HTTPS, ignoring certificate verification
$username = "Username"
$password = ConvertTo-SecureString -String "Password" -AsPlainText -Force
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $password

$session_option = New-PSSessionOption -SkipCACheck -SkipCNCheck -SkipRevocationCheck
Invoke-Command -ComputerName server -UseSSL -ScriptBlock { ipconfig } -Credential $cred -SessionOption $session_option
```