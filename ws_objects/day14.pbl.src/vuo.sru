$PBExportHeader$vuo.sru
forward
global type vuo from userobject
end type
type dw_1 from datawindow within vuo
end type
end forward

global type vuo from userobject
integer width = 2734
integer height = 1020
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
end type
global vuo vuo

on vuo.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on vuo.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within vuo
integer x = 69
integer y = 36
integer width = 2574
integer height = 908
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

