$PBExportHeader$w_emp_dept.srw
forward
global type w_emp_dept from window
end type
type dw_2 from datawindow within w_emp_dept
end type
type cb_2 from commandbutton within w_emp_dept
end type
type cb_1 from commandbutton within w_emp_dept
end type
type dw_1 from datawindow within w_emp_dept
end type
end forward

global type w_emp_dept from window
integer width = 3899
integer height = 1572
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_2 dw_2
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_emp_dept w_emp_dept

on w_emp_dept.create
this.dw_2=create dw_2
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.dw_2,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_emp_dept.destroy
destroy(this.dw_2)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type dw_2 from datawindow within w_emp_dept
integer x = 1765
integer y = 76
integer width = 1810
integer height = 1012
integer taborder = 20
string title = "none"
string dataobject = "dw_composite"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_emp_dept
integer x = 1029
integer y = 1148
integer width = 507
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

event clicked;int ret

ret = dw_1.update(true,false);

if ret=1 then
	dw_1.modify('department_dept_id.update = No')
	dw_1.modify('department_dept_name.update = No')
	dw_1.modify('department_dept_id.key = No')
	
	dw_1.Modify(  "DataWindow.Table.UpdateTable = ~"employee~"")
	dw_1.Modify("employee_emp_id.Update = Yes") 
	dw_1.Modify("employee_emp_fname.Update = Yes") 
	dw_1.Modify("employee_emp_lname.Update = Yes") 
	dw_1.Modify("employee_emp_id.Key = Yes")
	ret = dw_1.Update() 
IF ret = 1 THEN 
     COMMIT USING SQLCA; 
ELSE 
ROLLBACK USING SQLCA; 
MessageBox("Status", & 
+ "Update of employee table failed. "  + "Rolling back all changes.") 
END IF

end if
end event

type cb_1 from commandbutton within w_emp_dept
integer x = 416
integer y = 1156
integer width = 507
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "dw"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()

dw_2.settransobject(sqlca);
dw_2.retrieve()
end event

type dw_1 from datawindow within w_emp_dept
integer x = 133
integer y = 68
integer width = 1554
integer height = 1004
integer taborder = 10
string title = "none"
string dataobject = "dw_emp_dept"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

