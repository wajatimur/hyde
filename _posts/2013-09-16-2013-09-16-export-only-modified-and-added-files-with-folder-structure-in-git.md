---
layout: post
title: Export only modified and added files with folder structure in Git
categories: []
tags:
- diff
- export
- git
- patch
- filter
- files
- folder
status: pending
type: post
published: false
meta: {}
---
On certain circumstances we might want to get the modified file base on last commit. This is very useful if we have setup some automation to be trigger base on hook that capable of fetching modified only files and send to output stream.

```
git diff-tree -r --no-commit-id --name-only --diff-filter=ACMRT $commit_id
```
