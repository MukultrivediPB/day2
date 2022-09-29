$PBExportHeader$w_form.srw
forward
global type w_form from window
end type
type cb_1 from commandbutton within w_form
end type
type dw_1 from datawindow within w_form
end type
end forward

global type w_form from window
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
global w_form w_form

on w_form.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_form.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;str_emp_form str
str = message.PowerObjectParm

dw_1.insertrow(0)
dw_1.setitem(1,1,str.empid)
dw_1.setitem(1,2,str.emp_fname)
dw_1.setitem(1,3,str.emp_lname)
dw_1.setitem(1,4,str.city)
dw_1.setitem(1,5,str.state)
dw_1.setitem(1,6,str.phone)
dw_1.setitem(1,7,str.dept_id)
dw_1.setitem(1,8,str.dept_name)
end event

type cb_1 from commandbutton within w_form
integer x = 2213
integer y = 1104
integer width = 503
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Review && Close"
end type

event clicked;Halt Close
end event

type dw_1 from datawindow within w_form
integer x = 114
integer y = 88
integer width = 2048
integer height = 1172
integer taborder = 10
string title = "none"
string dataobject = "dw_form"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

