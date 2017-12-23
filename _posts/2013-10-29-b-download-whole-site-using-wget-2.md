---
title: 'Download Whole Site Using WGET #2'
date: 2013-10-29 00:00:00 Z
tags:
- wget
- download
- crawler
- linux
- command line
layout: post
status: publish
type: post
meta: {}
---

This is improved version on cloning or downloading the whole website to your local storage. You can refer [here](https://standalonex.com/blog/2013/10/27/download-whole-site-using-wget) for previous version of this article.

```
wget http://example.com --domains example.com --recursive --page-requisites --no-clobber --html-extension --convert-links
```
