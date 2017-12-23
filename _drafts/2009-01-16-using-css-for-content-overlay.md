---
layout: post
title: Using CSS For Content Overlay
categories:
- css
tags:
- css
- overlay
- tips
- trick
- web
status: pending
type: post
published: false
meta: {}
---
 ![CSS Edit Logo](http://standalonex.com/wp-content/uploads/2009/01/csseditlogo1.png "CSS Edit Logo")
## CSS Design Situation

If you try to design a popup using any javascript tool, you will find that appear popup will push the existing div/element. The browser will automatically position your existing div thus crating anoying to your layout on some design.

## Using CSS As Solution

Html code sample.

Information to display on hover.

The CSS code sample.

.infobox { position:relative; border:1px solid #000; background-color:#CCC; width:73px; padding:5px; } .infobox img { position:relative; z-index:2; } .infobox .more { display:none; } .infobox:hover .more { display:block; position:absolute; z-index:1; left:-1px; top:-1px; width:73px; padding:78px 5px 5px; border:1px solid #900; background-color:#FFEFEF; }

