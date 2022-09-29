$PBExportHeader$w_multi_table_upd.srw
forward
global type w_multi_table_upd from window
end type
type cb_1 from commandbutton within w_multi_table_upd
end type
type dw_1 from datawindow within w_multi_table_upd
end type
end forward

global type w_multi_table_upd from window
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
cb_1 cb_1
dw_1 dw_1
end type
global w_multi_table_upd w_multi_table_upd

on w_multi_table_upd.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_multi_table_upd.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_1 from commandbutton within w_multi_table_upd
integer x = 178
integer y = 1156
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

event clicked;int ret
ret = dw_1.update(true, false);//updated the data for department
if ret = 1 then
	dw_1.modify('department_dept_id.update=no')
	dw_1.modify('department_dept_name.update=no')
	dw_1.modify('department_dept_id.key=no')
	
	dw_1.Modify(  "DataWindow.Table.UpdateTable = ~"employee~"")
	
	dw_1.modify('employee_emp_id.update=yes')
	dw_1.modify('employee_emp_fname.update=yes')
	dw_1.modify('employee_emp_lname.update=yes')
	dw_1.modify('employee_emp_id.key=yes')
	
	ret = dw_1.update();
	 if ret = 1 then
		commit using sqlca;
		messagebox('Confirmation', 'updated successfully');
	else
		rollback using sqlca;
		messagebox('Error', 'failed to update');
	end if
end if
	

end event

type dw_1 from datawindow within w_multi_table_upd
event ue_dddw_dropdown pbm_dwndragdrop
integer x = 160
integer y = 100
integer width = 2862
integer height = 964
integer taborder = 10
string title = "none"
string dataobject = "dw_emp_dep"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_dddw_dropdown;messagebox('',string(dwo.nama))
end event

event clicked;DataWindowChild state_child
integer rtncode
 
rtncode = dw_1.GetChild('department_dept_id', state_child)
IF rtncode = -1 THEN MessageBox( &
      "Error", "Not a DataWindowChild")
 
// Establish the connection
CONNECT USING SQLCA;
 
// Set the transaction object for the child
state_child.SetTransObject(SQLCA)
 

// Set transaction object for main DW and retrieve
dw_1.SetTransObject(SQLCA)
//dw_1.Retrieve()
end event

event editchanged;DataWindowChild child1
Dw_1.getchild("department_dept_id",child1)   // sub_branch_id name of column 
                                        // which is dropdowndatawindow
                                        // Displays name 
Child1.settransobject(sqlca)
    String fltr
	 child1.accepttext()
    Fltr = " department_dept_name " +"like"+"'%" +data+"%'" // filter on name
	 Child1.retrieve(data)

end event

