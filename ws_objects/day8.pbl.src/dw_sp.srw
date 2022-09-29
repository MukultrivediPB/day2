$PBExportHeader$dw_sp.srw
forward
global type dw_sp from window
end type
type dw_2 from datawindow within dw_sp
end type
type cb_1 from commandbutton within dw_sp
end type
type dw_1 from datawindow within dw_sp
end type
end forward

global type dw_sp from window
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
dw_2 dw_2
cb_1 cb_1
dw_1 dw_1
end type
global dw_sp dw_sp

on dw_sp.create
this.dw_2=create dw_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.dw_2,&
this.cb_1,&
this.dw_1}
end on

on dw_sp.destroy
destroy(this.dw_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dw_2 from datawindow within dw_sp
integer x = 1147
integer y = 40
integer width = 1554
integer height = 1000
integer taborder = 20
string title = "none"
string dataobject = "dw_comp_dept"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within dw_sp
integer x = 169
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "dw_"
end type

event clicked;dw_1.importfile("C:\Mukul\import.txt")
dw_1.saveas("C:\Mukul\import1.txt",Text!,true)

dw_2.settransobject(sqlca);
dw_2.retrieve('Mukul')
end event

type dw_1 from datawindow within dw_sp
integer x = 114
integer y = 40
integer width = 969
integer height = 1020
integer taborder = 10
string title = "none"
string dataobject = "dw_external"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

