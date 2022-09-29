$PBExportHeader$w_composite.srw
forward
global type w_composite from window
end type
type cb_1 from commandbutton within w_composite
end type
type st_2 from statictext within w_composite
end type
type st_1 from statictext within w_composite
end type
type sle_2 from singlelineedit within w_composite
end type
type sle_1 from singlelineedit within w_composite
end type
type dw_1 from datawindow within w_composite
end type
end forward

global type w_composite from window
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
st_2 st_2
st_1 st_1
sle_2 sle_2
sle_1 sle_1
dw_1 dw_1
end type
global w_composite w_composite

on w_composite.create
this.cb_1=create cb_1
this.st_2=create st_2
this.st_1=create st_1
this.sle_2=create sle_2
this.sle_1=create sle_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.st_2,&
this.st_1,&
this.sle_2,&
this.sle_1,&
this.dw_1}
end on

on w_composite.destroy
destroy(this.cb_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_composite
integer x = 2528
integer y = 116
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Search"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve(sle_1.text,sle_2.text)
end event

type st_2 from statictext within w_composite
integer x = 251
integer y = 128
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Emp Name"
boolean focusrectangle = false
end type

type st_1 from statictext within w_composite
integer x = 1147
integer y = 112
integer width = 489
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Department Name"
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_composite
integer x = 1705
integer y = 92
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_composite
integer x = 690
integer y = 96
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_composite
integer x = 160
integer y = 256
integer width = 2990
integer height = 944
integer taborder = 10
string title = "none"
string dataobject = "dw_comp_dep_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

