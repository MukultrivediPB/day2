$PBExportHeader$dw_dw_styles.srw
forward
global type dw_dw_styles from window
end type
type cb_1 from commandbutton within dw_dw_styles
end type
type dw_1 from datawindow within dw_dw_styles
end type
type ddlb_1 from dropdownlistbox within dw_dw_styles
end type
end forward

global type dw_dw_styles from window
integer width = 3977
integer height = 2036
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
ddlb_1 ddlb_1
end type
global dw_dw_styles dw_dw_styles

on dw_dw_styles.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.ddlb_1=create ddlb_1
this.Control[]={this.cb_1,&
this.dw_1,&
this.ddlb_1}
end on

on dw_dw_styles.destroy
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.ddlb_1)
end on

type cb_1 from commandbutton within dw_dw_styles
integer x = 9
integer y = 896
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Dymanic DW"
end type

event clicked;string ls_select
string ls_where
string ls_dwsyntax
string ls_err

ls_select = &
  "SELECT employee.emp_id,employee.manager_id,  employee.emp_fname, employee.emp_lname, employee.dept_id, employee.phone FROM employee   "
ls_dwsyntax = SQLCA.SyntaxFromSQL ( ls_select, "Style(Type=grid)", ls_err )
dw_1.Create ( ls_dwsyntax, ls_err )
IF ls_err <> '' THEN
   MessageBox ( "error - Syntax", ls_err )
ELSE
   dw_1.SetTransObject ( SQLCA )
   dw_1.Retrieve()
END IF

end event

type dw_1 from datawindow within dw_dw_styles
integer x = 978
integer y = 64
integer width = 2834
integer height = 1816
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type ddlb_1 from dropdownlistbox within dw_dw_styles
integer x = 64
integer y = 32
integer width = 850
integer height = 664
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Tabular Presentation","Grid Presentation","FreeForm Presentation","Labels Presentation","Group Presentation","Composite Presentation"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;
if index = 1 then
	dw_1.dataobject= 'dw_tabular'

end if	
 if index = 2 then
	dw_1.dataobject= 'dw_grid'
end if
if index = 3 then
	dw_1.dataobject= 'dw_freeform'

end if
 if index = 4 then
	dw_1.dataobject= 'dw_label'

end if
 if index = 5 then
	dw_1.dataobject= 'dw_group'

end if
 if index = 6 then
	dw_1.dataobject= 'dw_composite'
end if

	dw_1.settransobject(sqlca);
	dw_1.retrieve()
end event

