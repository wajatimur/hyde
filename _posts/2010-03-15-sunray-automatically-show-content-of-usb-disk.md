---
title: Sunray - Automatically show content of USB disk
date: 2010-03-15 00:00:00 Z
published: false
categories:
- linux
tags:
- automatically
- sunray
- usb disk
layout: post
status: pending
type: post
meta: {}
---

utdiskadm/utstoraged/utmountd/etc automatically handle the creation ofdevice files during insertion and mounting of USB mass storage devices, but the mount point is in /tmp/SUNWut/mnt/$USER, which isn't obvious for the average user.I wrote a wrapper around /opt/SUNWut/lib/utdomount to create an icon to on a users GNOME desktop after USB insertion and delete the Icon after USB removal. Additionally, a symbolic link is created/removed in the users home directory to make accessing the USB storage from applications easier.

cp /opt/SUNWut/lib/utdomount /opt/SUNWut/lib/utdomount.original

=== begin /opt/SUNWut/lib/utdomount ===

`#!/bin/bash
#
# /opt/SUNWut/lib/utdomount.sh
#
# Shell wrapper around /opt/SUNWut/lib/utdomount
# Detect GNOME and put Icon on users desktop pointing to the USB mountpoint.
#
# Version: 0.1 -- Initial writing
#
# Change Log
#
# 2005/08/23, Peter Downs, 
#
# This script may be used under the terms of the GNU General
# Public License v2 (http://www.gnu.org/licenses/gpl.html)`

DEBUG=1

if ["$DEBUG" == "1"]; then echo "### Environment ###" \> /tmp/domount.log set | sort \>\> /tmp/domount.log

echo "" \>\> /tmp/domount.log echo "" \>\> /tmp/domount.log echo "" \>\> /tmp/domount.log echo "### Command Line ###" \>\> /tmp/domount.log echo $\* \>\> /tmp/domount.log fi

cmdopt=$\*

while [$# -gt 0]; do arg=$1 case $arg in -b) shift dev=$1 ;; -i) shift id=$1 ;; -m) shift action=mount ;; -u) shift action=unmount ;; \*) shift ;; esac done

if ["$DEBUG" == "1"]; then echo "Processed command line arguments" \>\>/tmp/domount.log echo dev=$dev \>\>/tmp/domount.log echo id=$id \>\> /tmp/domount.log echo action=$action \>\> /tmp/domount.log

fi

if ["$id" != ""]; then uid=`getent passwd $id | cut -d: -f1` fi

if ["$DEBUG" == "1"]; then echo uid=$uid \>\> /tmp/domount.log fi

if ["$DEBUG" == "1"]; then echo "Passing control to utdomount.original" \>\>/tmp/domount.log fi

/opt/SUNWut/lib/utdomount.original $cmdopt \>\> /tmp/domount.log

if ["$DEBUG" == "1"]; then echo "Done with utdomount.original" \>\>/tmp/domount.log fi

name=`basename $dev | sed -e 's/s2//'` desc="Removable USB Device 1" icon=`eval echo ~$uid`/Desktop/usb.desktop

echo name=$name \>\>/tmp/domount.log echo icon=$icon \>\>/tmp/domount.log case $action in mount) # Create icon echo "Begin Create icon" \>\>/tmp/domount.log mpath=/tmp/SUNWut/mnt/$uid/$name cat \> $icon \<\> /tmp/domount.log echo err=$err \>\> /tmp/domount.log fi

exit $?

==== end /opt/SUNWut/lib/utdomount

chown root:sys /opt/SUNWut/lib/utdomount chmod 4755 /opt/SUNWut/lib/utdomount

