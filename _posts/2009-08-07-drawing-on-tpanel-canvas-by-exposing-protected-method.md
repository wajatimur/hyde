---
title: Drawing on TPanel Canvas by Exposing Protected Method
date: 2009-08-07 00:00:00 Z
categories:
- delphi
tags:
- canvas
- delphi
- drawing
- tpanel
layout: post
status: publish
type: post
meta: {}
---

1. Create a descendant class.type

```
TMyPanel = class(TPanel)
```

1. Draw a ellipse on Panel Canvas.

```
TMyPanel(Form1.Panel1).Bitmap.Canvas.Ellipse( x, y, ellipse_size,ellipse_size);
```

Note : The Canvas property is Protected in TPanel and cannot be access from outside.

Alternative advanced method.

```
type
  TSizablePanel = class(TPanel)
  private
    FDragOrigin: TPoint;
    FSizeRect: TRect;
  protected
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  end;

procedure TSizeablePanel.Paint;
begin
  inherited;
  // Draw a sizing grip on the Canvas property
  // There's a size-grip glyph in the Marlett font,
  // so try the Canvas.TextOut method in combination
  // with the Canvas.Font property.
end;

procedure TSizeablePanel.MouseDown;
begin
  if (Button = mbLeft) and (Shift = []) 
      and PtInRect(FSizeRect, Point(X, Y)) then begin
    FDragOrigin := Point(X, Y);
    // Need to capture mouse events even if the mouse
    // leaves the control. See also: ReleaseCapture.
    SetCapture(Handle);
  end else inherited;
end;
```
