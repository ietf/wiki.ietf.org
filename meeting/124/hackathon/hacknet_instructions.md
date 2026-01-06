---
title: HackNet Instructions
description: 
published: true
date: 2026-01-06T15:15:33.840Z
tags: 
editor: markdown
dateCreated: 2025-10-20T15:01:09.142Z
---

# HackNet Instructions
The NOC team has been working on an experiment that allows you to join the IETF network while attending the meeting remotely. This experimental "global Layer-2 VPN" was first introduced prior to IETF 109 using Raspberry Pi's. It was well received for the limited use; however, we quickly determined that it was not sustainable to maintain the Raspberry Pi's, did not have a means of automating "User registration", and had other issues, too.

Version 2 is a complete rebuild of the network. This allows credentials and device configuration to be auto provisioned, and it provides future support to add multiple client types. The legacy Pi network currently is still active but will not have future development or support. 

The other advantage of this new version is the hardware cost is much lower. Currently, !MikroTik is the only hardware that is supported. MikroTik has a list of [Distributors](https://mikrotik.com/buy) through which to purchase devices. You can also find many of the devices on Amazon. 

The NOC recommends one of the following units.

- [/ hAP Mini](https://mikrotik.com/product/RB931-2nD)

- [/ hAP lite](https://mikrotik.com/product/RB941-2nD)

- [/ hAP ac Lite](https://mikrotik.com/product/RB952Ui-5ac2nD)

- [/ cAP ac](https://mikrotik.com/product/RBcAP2nD)

- [/hAP ac²](https://mikrotik.com/product/hap_ac2)

-----
WARNING: The ietf virtual network experiment is provided to support your projects and development. Use it for good, but also use it at your own risk. The virtual network is not available to the general public, but it is NOT INHERENTLY SECURE. The ietf NOC cannot and do not guarantee the privacy of your data and communication while using this experimental network. 
-----

Initial Setup:

 
**Setting your MikroTik Router ("Tik") for the IETF Hackathon Network will take 15 to 45 minutes.**


In order to use the virtual network you will need to acquire:

• MikroTik Device

• Laptop 

• Data Tracker Account 

• Configuration file from https://hacknet.meeting.ietf.org

-----


With all of the needed items:

1 -- Unpack Tik and plug ethernet into Port 1 on Tik and an open port on your home network.

2 -- Attach ethernet to Port 2 on Tik and to your laptop

3 -- Open a web browser to http://192.168.88.1 to use the GUI, OR ssh to the same address for the command line interface. The following steps are for the CLI. If you prefer to use the GUI, the paths and menu entries should be fairly clear.

`ssh admin@192.168.88.1`


Out-of-the-box credentials: username = admin, password = [blank]. On first login, accept the default config as prompted.

4 -- Set a new admin password.  Note: The NOC team might need this password if needed for support.

`/user set 0 password=xxxxxx`

5 -- Verify an active Internet connection exists on the Tik:


`/ping 1.1.1.1`


6 -- Verify current firmware/update firmware if available:


`/system package`
`enable ipv6`
`update check-for-updates`

If no update is available skip to step 8:

`update install`

The device will do the update immediately - including a reboot. Network loss and disconnection from the device is normal. It should be back in a few minutes...

7 -- Log in again; verify new version

`/system resource print`

8 -- **IMPORTANT!** - Note IPv4 address from your home network for later use

`/ip dhcp-client print`


Your Tik is now running current firmware, has a password set, and you are ready to transfer the IETF-Hackathon specific configuration to your device.

9 -- Check whether your Tik has a flash filesystem and/or a temporary filesystem:

`/file print`

If you see "flash/" in there somewhere it has a separate flash filesystem. Take note!

Now download the configuration file named bootstrap.rsc that has been automatically created for you from hacknet.meeting.ietf.org and save that to you local machine.

***The next steps are done from a new CLI session, not the one you are actively signed into the Tik with***

Transfer that bootstrap.rsc file to the Tik via scp.

10 -- Open a new CLI session. 

11 -- Change to the directory in which you saved the bootstrap.rsc file. For example, if you are using a Mac and saved the file in Downloads, then:

`cd ~/Downloads`

12 -- Transfer the bootstrap file to the Tik

`scp bootstrap.rsc admin@192.168.88.1:flash/`

Or just (in case of no flash FS)

`scp bootstrap.rsc admin@192.168.88.1:`


13 -- Back in the CLI for the Tik, verify that the file is in place.

`/file print`

If you are using the GUI instead of the CLI, you cannot upload to flash and must upload to root.

14 -- Configure the Router:

`/system reset-configuration keep-users=yes no-defaults=yes skip-backup=yes run-after-reset=flash/bootstrap.rsc`


If you did not place it under flash/ modify the run-after-reset parameter accordingly!

`/system reset-configuration keep-users=yes no-defaults=yes skip-backup=yes run-after-reset=bootstrap.rsc`

Again the device will update immediately. Network loss and disconnection from the device is normal. When the device reboots and all was successful, it will be connected. 

15 -- Confirm functionality -- if everything went to plan, you should be able to log in from your home network (vs being directly connected to the Tik) via the IPv4 address from step 8. 

Have a look at what interfaces are there and which ones are "up":

`/interface print`

The device will now have created a connection to the IETF HackNet, and if your device supports wireless you will see ietf as a local SSID. 

Connect the same as if you were at a meeting User:'''ietf''', Pass:'''ietf'''.
-----



If you are successfully connected, you will receive a 100.199.x.x address. 

If you have not successfully connected, you will want to Factory Reset the Tik https://wiki.mikrotik.com/wiki/Manual:Reset and repeat the steps above. 

For further support email support@ietf.org