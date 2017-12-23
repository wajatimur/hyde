---
layout: post
title: Usefull Centos Command Line for Die Hard System Administrator
categories:
- linux
tags:
- admin
- centos
- linux
- power
- system
status: publish
type: post
published: true
meta: {}
---
Find disk usage by partition in a human readable format.

```
df -h
```

Find the top 100 space eating monster file/dir under a directory.

```
du -a [dir] | sort -n | tail -100
```

Find out what files a logged in user has opened (ignoring libs, devices, sockets, pipes)

```
lsof | grep [username] | egrep -v '(lib|/dev|pipe)'
```

Find which process is connected to what port and which remote host.

```
netstat -pat
```

Find the NIC speed.

```
mii-tool
```

Move all files with specific pattern to a sub-directory which might already have files with same pattern ..

```
find . -maxdepth 1 -name "*2008*.txt" -exec mv {} 2008 \;
```
