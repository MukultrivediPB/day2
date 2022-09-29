$PBExportHeader$w_describe_modify.srw
forward
global type w_describe_modify from window
end type
type cb_3 from commandbutton within w_describe_modify
end type
type cb_2 from commandbutton within w_describe_modify
end type
type dw_1 from datawindow within w_describe_modify
end type
type cb_1 from commandbutton within w_describe_modify
end type
end forward

global type w_describe_modify from window
integer width = 3525
integer height = 1388
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
dw_1 dw_1
cb_1 cb_1
end type
global w_describe_modify w_describe_modify

on w_describe_modify.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_describe_modify.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_3 from commandbutton within w_describe_modify
integer x = 2789
integer y = 336
integer width = 603
integer height = 244
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
end type

event clicked;open(w_multi_table_upd)
end event

type cb_2 from commandbutton within w_describe_modify
integer x = 736
integer y = 1152
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modify"
end type

event clicked;string str 
str = "emp_id.Color='16777215 ~tIf(emp_id=~~'101~~',255,16777215)'"

dw_1.modify(str)


dw_1.Modify("emp_id_t.Text='EMPLOYEE ID'")

end event

type dw_1 from datawindow within w_describe_modify
integer x = 174
integer y = 88
integer width = 2560
integer height = 964
integer taborder = 10
string title = "none"
string dataobject = "d_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_describe_modify
integer x = 133
integer y = 1144
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Describe"
end type

event clicked;messagebox('',dw_1.Describe("emp_id_t.color"))

messagebox('',dw_1.Describe("datawindow.color"))

end event

