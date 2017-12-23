---
layout: post
title: Docker Exec Is Your Boss
categories:
- devop
tags:
- docker
- docker-enter
- nsenter
- terminal
status: publish
type: post
published: true
meta: {}
---
Version 1.3 of Docker have introduced a long awaited feature which is `docker exec` that allowed user to interact with the process inside the container.

```
docker exec my-lamp cat /var/log/messages
```

User not only can peek inside the container but actually can enter into container without having additional setup such as `nsenter` or others. By spawning a `bash` program and stream back terminal to client.

```
docker exec -it my-lamp /bin/bash
```

The flag `-i` will keep the STDIN open thus allowing Bash program to read an input from client.

