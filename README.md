# windows_autologon

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with windows_autologon](#setup)
    * [What windows_autologon affects](#what-windows_autologon-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with windows_autologon](#beginning-with-windows_autologon)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview
Enable automatic logon to the Windows platform
## Module Description
This module modifies the necessary registry settings to enable automatic logon.

### What windows_autologon affects

* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon
* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUsername
* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword
* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultDomainName
* HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\ForceAutoLogon


## Usage

### Parameters

*ensure*]
  Ensure value, defaults to 'enabled'.  Set to 'absent' or 'disabled' to
  disable automatic logon.

[*user*]
  Username to enable automatic logon for required when `ensure => 'enabled'`.

[*password*]
  Password to use for automatic logon, required if there's a password set
  for the username.

[*force*]
  Sets the `ForceAutoLogon` key if set, defaults to false.


## Reference


## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You may also add any additional sections you feel are
necessary or important to include here. Please use the `## ` header.
