$PBExportHeader$w_sp.srw
forward
global type w_sp from window
end type
type cb_1 from commandbutton within w_sp
end type
type dw_1 from datawindow within w_sp
end type
end forward

global type w_sp from window
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
global w_sp w_sp

type variables
structure s
end variables
on w_sp.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_sp.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;str s

s= message.PowerObjectParm
end event

type cb_1 from commandbutton within w_sp
integer x = 110
integer y = 1160
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

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dw_1 from datawindow within w_sp
integer x = 59
integer y = 24
integer width = 3159
integer height = 1048
integer taborder = 10
string title = "none"
string dataobject = "dw_sp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

