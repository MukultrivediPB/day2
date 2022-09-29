$PBExportHeader$w_external.srw
forward
global type w_external from window
end type
type cb_1 from commandbutton within w_external
end type
type dw_1 from datawindow within w_external
end type
end forward

global type w_external from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_1 dw_1
end type
global w_external w_external

on w_external.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_external.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_external
integer x = 261
integer y = 1132
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.importfile('C:\Mukul\Day2\import.txt',2)
end event

type dw_1 from datawindow within w_external
integer x = 128
integer y = 40
integer width = 2683
integer height = 864
integer taborder = 10
string title = "none"
string dataobject = "dw_external"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

