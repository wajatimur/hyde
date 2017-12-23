---
layout: post
title: Download Files From Rapidshare Premium Zone Using Wget
categories:
- linux
tags:
- linux
- rapidshare
- wget
status: pending
type: post
published: false
meta: {}
---
If you prefer the terminal way or in case you don't have X running you can use wget to download files from rapidshare. Rapidshare uses cookie for authentication. Therefore you must download and save the cookie which will allow you to login and download the files you want. The following step has to be done only one time. It will save the cookie in your current directory. Of course you can change it as you wish. Open a terminal and type:

> wget \ --save-cookies ~/.cookies/rapidshare \ --post-data "login=USERNAME&password=PASSWORD" \ --no-check-certificate \ -O - \ https://ssl.rapidshare.com/cgi-bin/premiumzone.cgi \ \> /dev/null

Download files using :

> wget -c --load-cookies ~/.cookies/rapidshare url

Script to simplifies download :

> #!/bin/bash for url in `echo $1` do wget -c --load-cookies ~/.cookies/rapidshare $url done

