$PBExportHeader$w_creat_de.srw
forward
global type w_creat_de from window
end type
type dw_1 from datawindow within w_creat_de
end type
type cb_1 from commandbutton within w_creat_de
end type
end forward

global type w_creat_de from window
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
dw_1 dw_1
cb_1 cb_1
end type
global w_creat_de w_creat_de

on w_creat_de.create
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.dw_1,&
this.cb_1}
end on

on w_creat_de.destroy
destroy(this.dw_1)
destroy(this.cb_1)
end on

type dw_1 from datawindow within w_creat_de
integer x = 155
integer y = 76
integer width = 2807
integer height = 848
integer taborder = 10
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_creat_de
integer x = 192
integer y = 1136
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Create DW"
end type

event clicked;string ls_select
string ls_where
string ls_dwsyntax
string ls_err

ls_select = &
  "SELECT employee.emp_id,employee.manager_id,  employee.emp_fname, employee.emp_lname, employee.dept_id, employee.phone FROM employee   "
ls_dwsyntax = SQLCA.SyntaxFromSQL ( ls_select, "Style(Type=Form)", ls_err )
dw_1.Create ( ls_dwsyntax, ls_err )
IF ls_err <> '' THEN
   MessageBox ( "error - Syntax", ls_err )
ELSE
   dw_1.SetTransObject ( SQLCA )
   dw_1.Retrieve()
END IF
end event

