---
layout: post
title: How To Copy From Remote File To Local Server Using PHP
categories:
- php
tags:
- copy
- files
- php
- remote
status: publish
type: post
published: true
meta: {}
---
PHP copy function is capable of accepting URL as the source & destination parameters. We can download any file available on the remote host through HTTP connection and copy it to local storage or another remote host.

Destination file will be overwritten if it already exist and if the destination is URL and it's not support the write operation it will fail as well.

```
$source = 'http://example.com/robots.txt';
$destination = 'robots.txt';

if (copy($source, $destination)) {
    echo "Successfully copy $file to local server.";
} else {
    echo "Failed to copy $file !";
}
```
