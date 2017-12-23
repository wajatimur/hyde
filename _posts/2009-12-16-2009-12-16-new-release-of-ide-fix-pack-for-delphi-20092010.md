---
layout: post
title: New Release Of IDE Fix Pack For Delphi 2009/2010
categories:
- delphi
tags:
- addins
- delphi 2009
- delphi 2010
- fixpack
- ide
status: publish
type: post
published: true
meta:
  structured_content: '{"oembed":{},"overlay":true}'
---
The IDE Fix Pack 2009/2010 installs is a DLL-Expert that fixes the following Delphi/C++Builder 2009/2010 bugs at runtime. All changes are done in memory. No file on disk is modified. None of your projects are modified or benefit from the IDE Fix Pack. RAD Studio 2010 fixes:

- Undo destroys editor buffer
- F1 key doesn’t work if invoked from the ObjectInspector
- Vista compatible icons (256×256) aren’t supported
- Stepping through the code can be slow

RAD Studio 2009 fixes:

- Stepping through the code can be slow
- Vista compatible icons (256×256) aren’t supported
- Undo destroys editor buffer
- 64 bit Debugger assertion
- QC #71575: Delphi 2009 literal string assigment
- QC #47242: Possible AV when shutting down the IDE
- QC #47807: Error insight fails to find TObject class
- Possible deadlock when Error Insight calls ProcessMessages
- QC #37462: IDE may select the wrong file when performing a ctrl + left-click on a filename in the editor
- QC #22880: Cannot resolve unit name
- QC #58045: Component captions and component icons disappear from form designer
- QC #69456: IDE dead lock when updating the editors
- QC #55910: TDBText.Color always reverts to Parent.Color
- QC #59963: Closing non-modal forms after a task switch can deactivate the application
- QC #56252: TPageControl flickers a lot with active theming
- QC #68730: TLabel is not painted on a themed, double-buffered TTabSheet in Vista
- ToolsAPI IOTAProjectOptions.GetOptionNames destroys options.
- QC #74646: Buffer overflow in TCustomClientDataSet.DataConvert with ftWideString
