$PBExportHeader$w_two_db_connection.srw
forward
global type w_two_db_connection from window
end type
type cb_1 from commandbutton within w_two_db_connection
end type
type dw_2 from datawindow within w_two_db_connection
end type
type dw_1 from datawindow within w_two_db_connection
end type
end forward

global type w_two_db_connection from window
integer width = 3954
integer height = 1716
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
dw_2 dw_2
dw_1 dw_1
end type
global w_two_db_connection w_two_db_connection

on w_two_db_connection.create
this.cb_1=create cb_1
this.dw_2=create dw_2
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_2,&
this.dw_1}
end on

on w_two_db_connection.destroy
destroy(this.cb_1)
destroy(this.dw_2)
destroy(this.dw_1)
end on

event open;dw_1.dataobject = 'dw_emp_pbdemo'
dw_1.settransobject( sqlca);
dw_1.retrieve( )

dw_2.dataobject = 'dw_emp_pbsqlserver'
dw_2.settransobject(u_sqlca);
dw_2.retrieve()
end event

type cb_1 from commandbutton within w_two_db_connection
integer x = 1938
integer y = 1420
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;dw_2.Accepttext()
dw_2.update()
end event

type dw_2 from datawindow within w_two_db_connection
integer x = 1879
integer y = 56
integer width = 1888
integer height = 1312
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_two_db_connection
integer x = 119
integer y = 56
integer width = 1659
integer height = 1288
integer taborder = 10
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;dw_1.RowsCopy(row,   row, Primary!, dw_2, 1, Primary!)
end event

