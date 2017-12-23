---
title: Cloning MySQL Including Data
date: 2014-07-21 00:00:00 Z
categories:
- rdbms
tags:
- mysql
- maintenance
- clone
layout: post
status: publish
type: post
meta: {}
---

Sometime we might required to create a clone of existing MySQL table for maintenance purpose or testing an experimental query. We only need 2 query to do this.

```
CREATE TABLE user_clone LIKE user;
INSERT user_clone SELECT * FROM user;
```

The first line will create a clone of source table including its index and the second line will copy all data from existing one.

