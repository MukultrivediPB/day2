$PBExportHeader$vuo.sru
forward
global type vuo from userobject
end type
type dw_1 from datawindow within vuo
end type
type cb_1 from commandbutton within vuo
end type
end forward

global type vuo from userobject
integer width = 2030
integer height = 808
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
cb_1 cb_1
end type
global vuo vuo

on vuo.create
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.dw_1,&
this.cb_1}
end on

on vuo.destroy
destroy(this.dw_1)
destroy(this.cb_1)
end on

type dw_1 from datawindow within vuo
integer x = 233
integer y = 48
integer width = 1705
integer height = 484
integer taborder = 10
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within vuo
integer x = 151
integer y = 588
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

