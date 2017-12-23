---
title: How to Locate a Record Based on Supplied Key in Delphi
date: 2009-02-03 00:00:00 Z
categories:
- delphi
tags:
- code
- delphi
- find
- locate
- mysql
- query
- table
layout: post
status: pending
type: post
meta: {}
---

```
fieldList := 'userid;firstname;surname;';valueList := VarArrayOf([Edit1.Text,Edit2.Text,Edit3.Text]);
Query1.Locate(fieldList,valueList,[loCaseInsensitive,loPartialKey]);
```

Locate will find recorde according to supplied parameter and focused on founded record. It differ from find which will filter the record, the variable _valueList_ can be declared as variant.

