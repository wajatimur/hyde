---
layout: post
title: Perl CPAN Shell Configuration on Solaris
categories:
- solaris
tags:
- cpan
- gcc
- install
- make
- makeinstall
- module
- perl
- solaris
status: publish
type: post
published: true
meta:
  structured_content: '{"oembed":{},"overlay":true}'
---
You might be encounter problem installing per module as below.

```
cc: unrecognized option `-KPIC' cc: language ildoff not recognized cc: ReadKey.c: linker input file unused because linking not done
```

```
/usr/perl5/5.8.4/lib/sun4-solaris-64int/Config.pm
```

```
optimize='-O3' cccdlflags=' '
```

If you have below error while compiling.

```
gcc: language arch=v8 not recognized
```

Remove the following option founded in Config.pm file, usually there is 2 location.

```
-xarch=v8
```

[GCC on Solaris](http://gcc.gnu.org/ml/gcc/1999-08n/msg01022.html)

