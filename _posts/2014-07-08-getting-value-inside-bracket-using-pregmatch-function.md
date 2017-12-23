---
title: Getting Value Inside Bracket Using preg_match Function
date: 2014-07-08 00:00:00 Z
categories:
- coding
- php
tags:
- bracket
- preg_match
- regex
layout: post
status: publish
type: post
meta: {}
---

First we need to compose and declare some pattern.

```
$pattern = "/(\\(\\')(\\s*.*)(\\'\\))/";
```

Then using `preg_replace` function we can get the value inside bracket on array return. Below is the full code example.

```
$pattern = "/(\\(\\')(\\s*.*)(\\'\\))/"; 
$value = "foo('bar')";
preg_match($pattern, $value, $matches); 
$result = $matches[2];
```
