$PBExportHeader$vo_template.sru
forward
global type vo_template from userobject
end type
type cb_4 from commandbutton within vo_template
end type
type cb_3 from commandbutton within vo_template
end type
type cb_2 from commandbutton within vo_template
end type
type cb_1 from commandbutton within vo_template
end type
type dw_1 from datawindow within vo_template
end type
type st_1 from statictext within vo_template
end type
end forward

global type vo_template from userobject
integer width = 3191
integer height = 1620
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
st_1 st_1
end type
global vo_template vo_template

on vo_template.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.st_1=create st_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1,&
this.st_1}
end on

on vo_template.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.st_1)
end on

type cb_4 from commandbutton within vo_template
integer x = 2363
integer y = 1396
integer width = 631
integer height = 160
integer taborder = 30
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
end type

event clicked;halt close;
end event

type cb_3 from commandbutton within vo_template
integer x = 1609
integer y = 1404
integer width = 631
integer height = 160
integer taborder = 20
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.update();
if sqlca.sqlcode = 0 then
	commit using sqlca;
	
end if
end event

type cb_2 from commandbutton within vo_template
integer x = 864
integer y = 1400
integer width = 631
integer height = 160
integer taborder = 20
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
end type

event clicked;int ret

ret = dw_1.insertrow(0);
dw_1.scrolltorow(ret)
end event

type cb_1 from commandbutton within vo_template
integer x = 133
integer y = 1408
integer width = 631
integer height = 160
integer taborder = 20
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dw_1 from datawindow within vo_template
integer x = 119
integer y = 208
integer width = 2898
integer height = 1148
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within vo_template
integer x = 837
integer y = 56
integer width = 1239
integer height = 124
integer textsize = -14
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Order Management System"
boolean focusrectangle = false
end type

