---
layout: post
title: Code Migration to Delphi 2009
categories:
- delphi
tags:
- '2009'
- code
- delphi
- migration
- source
status: publish
type: post
published: true
meta: {}
---
Delphi 2009 \<\> Delphi 2007 (any old version) is `STRING type:` In Delphi2009 (12)

```
type STRING = UnicodeString
```

UnicodeString is not the same WideString

In Delphi 2007 (6,7,8,9,10,11) STRING is the same AnsiString WideString support for Unicode.

**Some others conversion.**

Replace VclJpg with VclImg Replace WideString with string Replace WideChar with Char Replace WChar with Char Replace AnsiStrComp with StrComp

Do that with any Ansi function. Find some words as "Ansi" to remove it if you need.

