$PBExportHeader$w_customer.srw
forward
global type w_customer from window
end type
type cb_2 from commandbutton within w_customer
end type
type dw_1 from datawindow within w_customer
end type
type cb_1 from commandbutton within w_customer
end type
end forward

global type w_customer from window
integer width = 4622
integer height = 2068
boolean titlebar = true
string title = "Customer Screen"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_myevent ( )
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
end type
global w_customer w_customer

type variables
int i_i
end variables
forward prototypes
public subroutine myfunc ()
end prototypes

event ue_myevent();messagebox('ue_myevent','i am called')
end event

public subroutine myfunc ();messagebox('myfunc', 'i am called')
end subroutine

on w_customer.create
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_customer.destroy
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

type cb_2 from commandbutton within w_customer
integer x = 4069
integer y = 236
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

event clicked;dw_1.accepttext();
dw_1.update()
messagebox('Message from DB', string(sqlca.SQLNRows) + ' rows updated')
end event

type dw_1 from datawindow within w_customer
integer x = 110
integer y = 56
integer width = 3872
integer height = 1824
integer taborder = 20
string title = "none"
string dataobject = "dw_customer"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_customer
integer x = 4064
integer y = 80
integer width = 402
integer height = 112
integer taborder = 10
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
messagebox('w_customer','i am parent')
end event

