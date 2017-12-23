---
layout: post
title: How to Locate a Record Based on Supplied Key in Delphi
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
status: pending
type: post
published: false
meta: {}
---
```
fieldList := 'userid;firstname;surname;';valueList := VarArrayOf([Edit1.Text,Edit2.Text,Edit3.Text]);
Query1.Locate(fieldList,valueList,[loCaseInsensitive,loPartialKey]);
```

Locate will find recorde according to supplied parameter and focused on founded record. It differ from find which will filter the record, the variable _valueList_ can be declared as variant.

