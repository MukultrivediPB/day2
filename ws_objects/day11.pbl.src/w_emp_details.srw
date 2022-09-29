$PBExportHeader$w_emp_details.srw
forward
global type w_emp_details from window
end type
type cb_1 from commandbutton within w_emp_details
end type
type dw_1 from datawindow within w_emp_details
end type
end forward

global type w_emp_details from window
integer width = 3273
integer height = 1528
boolean titlebar = true
string title = "Employee Details"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_myevent ( )
cb_1 cb_1
dw_1 dw_1
end type
global w_emp_details w_emp_details

event ue_myevent();messagebox('','myevent')
end event

on w_emp_details.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_emp_details.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;str_emp l_str



l_str = message.powerobjectparm

dw_1.insertrow(0)
dw_1.setitem(1,1,l_str.emp_id)
dw_1.setitem(1,2,l_str.emp_fname)
dw_1.setitem(1,3,l_str.emp_lname)
dw_1.setitem(1,4,l_str.dept_id)
dw_1.setitem(1,5,l_str.street)
dw_1.setitem(1,6,l_str.city)
dw_1.setitem(1,7,l_str.state)
dw_1.setitem(1,8,l_str.phone)


end event

event close;
str_emp l_str_emp

l_str_emp.emp_id = dw_1.getitemNumber(1,1)
l_str_emp.emp_fname = dw_1.getitemString(1,2)
l_str_emp.emp_lname = dw_1.getitemString(1,3)
l_str_emp.dept_id = dw_1.getitemNumber(1,4)
l_str_emp.street = dw_1.getitemString(1,5)
l_str_emp.city = dw_1.getitemString(1,6)
l_str_emp.state = dw_1.getitemString(1,7)
l_str_emp.phone = dw_1.getitemString(1,8)

closewithreturn(this,l_str_emp)
end event

type cb_1 from commandbutton within w_emp_details
integer x = 2647
integer y = 136
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;Messagebox('','Befor TriggerEvent');
parent.triggerevent('ue_myevent')
Messagebox('','After TriggerEvent');
Messagebox('','Befor Post');
Parent.postevent('ue_myevent');
Messagebox('','after Post1');
Messagebox('','after Post2');
Messagebox('','after Post3');
end event

type dw_1 from datawindow within w_emp_details
integer x = 274
integer y = 64
integer width = 2194
integer height = 1184
integer taborder = 10
string title = "none"
string dataobject = "dw_emp_details"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

