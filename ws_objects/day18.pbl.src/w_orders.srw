$PBExportHeader$w_orders.srw
forward
global type w_orders from window
end type
type cb_3 from commandbutton within w_orders
end type
type cb_2 from commandbutton within w_orders
end type
type cb_1 from commandbutton within w_orders
end type
type dw_1 from datawindow within w_orders
end type
end forward

global type w_orders from window
integer width = 3899
integer height = 1784
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
global w_orders w_orders

on w_orders.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_orders.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca)

dw_1.retrieve()

g_user = 'Salar'
end event

type cb_3 from commandbutton within w_orders
integer x = 649
integer y = 1524
integer width = 457
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
end type

event clicked;int li_row

li_row = dw_1.insertrow(0);

dw_1.scrolltorow(li_row)

dw_1.setitem(li_row,'insertuser',g_user);
dw_1.setitem(li_row,'insertdate',today());

dw_1.setitem(li_row,'modifyuser','');
dw_1.setitem(li_row,'modifieddate',today());

dw_1.setitem(li_row,'modifiedcount',0);


end event

type cb_2 from commandbutton within w_orders
integer x = 1285
integer y = 1532
integer width = 398
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;Int li_row, li_modifiedcount

dw_1.accepttext()

For li_row =1 to dw_1.modifiedcount()
	
	dw_1.setitem(li_row,'modifyuser',g_user);
	dw_1.setitem(li_row,'modifieddate',today());
	
	li_modifiedcount = dw_1.getitemnumber(li_row,'modifiedcount')
	dw_1.setitem(li_row,'modifiedcount',li_modifiedcount + 1);
	
NEXT

dw_1.update()
end event

type cb_1 from commandbutton within w_orders
integer x = 169
integer y = 1524
integer width = 398
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca)

dw_1.retrieve()
end event

type dw_1 from datawindow within w_orders
integer x = 123
integer y = 84
integer width = 3611
integer height = 1384
integer taborder = 10
string title = "none"
string dataobject = "dw_orders"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

