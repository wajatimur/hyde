---
layout: post
title: Getting Value Inside Bracket Using preg_match Function
categories:
- coding
- php
tags:
- bracket
- preg_match
- regex
status: publish
type: post
published: true
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
