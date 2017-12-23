---
title: Laravel Config Package Override in Workbench
date: 2014-05-26 00:00:00 Z
categories:
- php
tags:
- config
- laravel
- loader
- package
- package namespace
- php
- workbench
layout: post
status: publish
type: post
meta: {}
---

This example show how to add config override of any package in others package or workbench. You have to put this code in your register method in you service provider.

```
// Get config loader
$loader = $this->app['config']->getLoader();

// Get environment name
$env = $this->app['config']->getEnvironment();

// Add package namespace with path set base on your requirement
$loader->addNamespace('basset', __DIR__.'/../config/basset');

// Load package override config file
$configs = $loader->load($env,'config','basset');

// Override value
$this->app['config']->set('basset::config',$configs);
```

[Source : Coderwall](https://coderwall.com/p/3eispa)

