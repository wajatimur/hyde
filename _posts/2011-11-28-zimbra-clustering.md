---
title: Zimbra HA Clustering
date: 2011-11-28 00:00:00 Z
published: false
layout: post
status: pending
type: post
meta: {}
---

node granite \ attributes standby="off" node slate \ attributes standby="off" primitive ClusterIP ocf:heartbeat:IPaddr2 \ params ip="10.10.1.103" cidr\_netmask="32" \ op monitor interval="30s" primitive Zimbra ocf:linbit:drbd \ params drbd\_resource="zimbradisk" \ op start interval="0" timeout="240" \ op stop interval="0" timeout="100" \ op monitor interval="10s" primitive fs\_zimbra ocf:heartbeat:Filesystem \ params device="/dev/drbd1" directory="/opt/zimbra" fstype="ext3" \ op start interval="0" timeout="100" \ op stop interval="0" timeout="100" \ meta target-role="Started" primitive zimbrad lsb:zimbra \ op start interval="0" timeout="720s" \ op stop interval="0" timeout="720s" \ meta target-role="Started" is-managed="true" ms Zimbraclone Zimbra \ meta master-max="1" master-node-max="1" clone-max="2" clone-node-max="1" notify="true" colocation fs\_on\_drbd inf: fs\_zimbra Zimbraclone:Master colocation zimbrad-with-fs\_zimbra inf: zimbrad fs\_zimbra colocation zimbrad-with-ip inf: zimbrad ClusterIP order fs\_zimbra-after-Zimbra inf: Zimbraclone:promote fs\_zimbra:start order zimbra-after-ip inf: ClusterIP zimbrad order zimbrad-after-fs\_zimbra inf: fs\_zimbra zimbrad property $id="cib-bootstrap-options" \ dc-version="1.0.10-da7075976b5ff0bee71074385f8fd02f296ec8a3" \ cluster-infrastructure="openais" \ expected-quorum-votes="2" \ stonith-enabled="false" \ no-quorum-policy="ignore" \ last-lrm-refresh="1305934568" rsc\_defaults $id="rsc-options" \ resource-stickiness="100"

