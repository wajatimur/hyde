---
title: Download Whole Site Using WGET
date: 2013-10-27 00:00:00 Z
categories:
- linux
tags:
- cli
- cmd
- command line
- download
- linux
- site
- tool
- website
- wget
- recursive
- crawler
layout: post
status: publish
type: post
meta: {}
---

The WGet is a C base program to retrieve a web contents where it popularly used on OS platform such as Linux and others. It's part of GNU and distributed under GNU General Public License. It has a very robust feature including recursive web page download like a crawler. By using a proper program arguments we can download a whole site by using the following command.

```
wget -E -H -k -K -p http://the.site.com
```

The `-E` arguments to tell te program that it supposed to save HTML and CSS document using proper extension. Where `-H` to makesure that all file were download even it were hosted on foreign host or domain.

The flag `-k -K` will convert all the link in HTML to locally downloaded file. The `-p` will download all the requisite file including images and others to makesure the page is properly working.

[Recent Update!](/blog/b/download-whole-site-using-wget-2)

