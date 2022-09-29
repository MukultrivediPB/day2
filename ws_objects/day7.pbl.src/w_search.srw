$PBExportHeader$w_search.srw
forward
global type w_search from window
end type
type st_1 from statictext within w_search
end type
type sle_id from singlelineedit within w_search
end type
type cb_1 from commandbutton within w_search
end type
type dw_1 from datawindow within w_search
end type
end forward

global type w_search from window
integer width = 2757
integer height = 1428
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
sle_id sle_id
cb_1 cb_1
dw_1 dw_1
end type
global w_search w_search

on w_search.create
this.st_1=create st_1
this.sle_id=create sle_id
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.st_1,&
this.sle_id,&
this.cb_1,&
this.dw_1}
end on

on w_search.destroy
destroy(this.st_1)
destroy(this.sle_id)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type st_1 from statictext within w_search
integer x = 571
integer y = 136
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
string text = "Entery Emp ID"
boolean focusrectangle = false
end type

type sle_id from singlelineedit within w_search
integer x = 1029
integer y = 116
integer width = 402
integer height = 104
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_search
integer x = 1554
integer y = 120
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Details"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve(sle_id.text)
end event

type dw_1 from datawindow within w_search
integer x = 233
integer y = 292
integer width = 1979
integer height = 876
integer taborder = 10
string title = "none"
string dataobject = "dw_emp_details"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

