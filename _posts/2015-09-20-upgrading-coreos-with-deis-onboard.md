---
title: Upgrading CoreOS With Deis Onboard
date: 2015-09-20 00:00:00 Z
categories:
- devop
tags:
- devop
- coreos
- deis
- container
- cluster
- cloud
- server provisioning
layout: post
status: publish
type: post
meta: {}
---

Deis have disable the auto update facility in CoreOS by default due to specific technical reason.

To update to the latest release of CoreOS we must trigger the update manually using following command.

```
sudo systemctl unmask update-engine.service
sudo systemctl start update-engine.service
sudo update_engine_client -update
```

For those who is not familiar with CoreOS, you will notice the argument `unmask` of `systemctl` first command line. This service have been marked as `masked` to make it impossible to start nor enabled by the system itself. It is part of CoreOS `systemd` feature where it introduce granular level of service management.

A completed CoreOS update required a reboot as it will change the passive update partition to become active upon boot process. The `update-engine` service need to be stop and mask back to prevent the automatic update process in the future.

```
sudo systemctl stop update-engine.service
sudo systemctl mask update-engine.service
```

We can verify successful update with following command.

```
cat /etc/lsb-release
```
