---
layout: post
title: Recursively chmod directories of files only
categories:
- linux
tags:
- chmod
- files only
- folder only
- permission
- linux
- command line
- file
- folder
- ubuntu
- redhat
- centos
status: publish
type: post
published: true
meta: {}
---
```
find . -type d -exec chmod 755 {} \;
```

This will recursively search your directory tree (starting at dir ‘dot’) and chmod 755 all directories only.

Similarly, the following will `chmod` all files only (and ignore the directories).

```
find . -type f -exec chmod 644 {} \;
```
