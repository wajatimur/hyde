---
layout: post
title: How To Get The DisplayText of a ComboBox Inside a Vertical Grid
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
status: pending
type: post
published: false
meta: {}
---
```
var
  VgItem: TcxImageComboBoxProperties;

begin
  VgItem := VertGridItem1.Properties.EditProperties;
  StringText := (VgItem).GetDisplayText(VertGridItem1.Properties.Value);
```
