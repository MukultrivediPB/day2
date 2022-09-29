$PBExportHeader$w_external.srw
forward
global type w_external from window
end type
type cb_3 from commandbutton within w_external
end type
type cb_2 from commandbutton within w_external
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
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_external w_external

on w_external.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_external.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_3 from commandbutton within w_external
integer x = 2309
integer y = 428
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save to File"
end type

event clicked;dw_1.saveas('C:\Mukul\Day2\Import.txt',TEXT!,TRUE)
end event

type cb_2 from commandbutton within w_external
integer x = 2226
integer y = 244
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
end type

event clicked;int newrow
newrow = dw_1.insertrow(0);
dw_1.scrolltorow(newrow)
end event

type cb_1 from commandbutton within w_external
integer x = 2194
integer y = 84
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

event clicked;dw_1.importfile("C:\Mukul\Day2\Import.txt",2)
end event

type dw_1 from datawindow within w_external
integer x = 155
integer y = 60
integer width = 1934
integer height = 1040
integer taborder = 10
string title = "none"
string dataobject = "dw_external"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

