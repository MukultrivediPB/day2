$PBExportHeader$vuo.sru
forward
global type vuo from userobject
end type
type cb_1 from commandbutton within vuo
end type
end forward

global type vuo from userobject
integer width = 603
integer height = 348
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
end type
global vuo vuo

on vuo.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on vuo.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within vuo
integer x = 78
integer y = 136
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

