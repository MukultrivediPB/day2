$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_2 from commandbutton within w_main
end type
type dw_1 from datawindow within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
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
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

type cb_2 from commandbutton within w_main
integer x = 635
integer y = 1156
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

datawindowchild child
int ret
 ret = dw_1.getchild("dept_id",child)
 
child.settransobject(sqlca);
child.retrieve('Mukul')
end event

type dw_1 from datawindow within w_main
integer x = 87
integer y = 20
integer width = 3113
integer height = 1072
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;DataWindowChild child1
Dw_1.getchild("dept_id",child1)
	Child1.settransobject(sqlca)
	 child1.accepttext()
	 Child1.retrieve(data)
	 
	 

end event

type cb_1 from commandbutton within w_main
integer x = 119
integer y = 1156
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

