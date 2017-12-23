---
layout: post
title: Simplify boot2docker Configuration on OSX
categories:
- devop
tags:
- boot2docker
- configuration
- docker
- docker-enter
- osx
- shortcut
status: publish
type: post
published: true
meta: {}
---
After installing Boot2Docker using installer tools, run below post installation command.

```
docker run --rm -v ~/:/target nematix/boot2docker-tool && source ~/.profile
```

It will automatically configure docker and boot2docker to run along with the extra features.

You can use docker-enter straight from your terminal without using ssh into boot2docker host.

```
docker-enter web
```

Additional info can be access from here [Github](https://github.com/nematix/boot2docker-tool)

