---
title: How To Get The DisplayText of a ComboBox Inside a Vertical Grid
date: 2009-02-03 00:00:00 Z
categories:
- delphi
tags:
- combobox
- delphi
- devexpress
- grid
- list- displaytext
- lookup
- vertical
layout: post
status: pending
type: post
meta: {}
---

```
var
  VgItem: TcxImageComboBoxProperties;

begin
  VgItem := VertGridItem1.Properties.EditProperties;
  StringText := (VgItem).GetDisplayText(VertGridItem1.Properties.Value);
```
