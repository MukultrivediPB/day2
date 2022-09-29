$PBExportHeader$w_tab.srw
forward
global type w_tab from window
end type
type pb_1 from picturebutton within w_tab
end type
type cb_2 from commandbutton within w_tab
end type
type cb_1 from commandbutton within w_tab
end type
type tab_1 from tab within w_tab
end type
type tabpage_1 from userobject within tab_1
end type
type uo_1 from vuo_emp within tabpage_1
end type
type tabpage_1 from userobject within tab_1
uo_1 uo_1
end type
type tabpage_2 from userobject within tab_1
end type
type dw_1 from datawindow within tabpage_2
end type
type tabpage_2 from userobject within tab_1
dw_1 dw_1
end type
type tabpage_3 from userobject within tab_1
end type
type dw_2 from datawindow within tabpage_3
end type
type tabpage_3 from userobject within tab_1
dw_2 dw_2
end type
type tab_1 from tab within w_tab
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
end type
end forward

global type w_tab from window
integer width = 4174
integer height = 2072
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
cb_2 cb_2
cb_1 cb_1
tab_1 tab_1
end type
global w_tab w_tab

on w_tab.create
this.pb_1=create pb_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.tab_1=create tab_1
this.Control[]={this.pb_1,&
this.cb_2,&
this.cb_1,&
this.tab_1}
end on

on w_tab.destroy
destroy(this.pb_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.tab_1)
end on

event open;this.tab_1.tabpage_1.uo_1.dw_1.settransobject(sqlca);
this.tab_1.tabpage_1.uo_1.dw_1.retrieve();


this.tab_1.tabpage_2.dw_1.settransobject(sqlca);
this.tab_1.tabpage_2.dw_1.retrieve();

this.tab_1.tabpage_3.dw_2.settransobject(sqlca);
this.tab_1.tabpage_3.dw_2.retrieve();


end event

type pb_1 from picturebutton within w_tab
integer x = 786
integer y = 1704
integer width = 457
integer height = 224
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
boolean originalsize = true
alignment htextalign = left!
long backcolor = 134217857
end type

type cb_2 from commandbutton within w_tab
integer x = 3310
integer y = 16
integer width = 709
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Change Window Color"
end type

event clicked;long red, green, blue
long custom[ ]
integer li_color
red = 255
custom[1]=rgb(red, 200, blue)
custom[2]=8344736
li_color = ChooseColor( red, custom [ ] )

parent.backcolor = custom [1]
end event

type cb_1 from commandbutton within w_tab
integer x = 2962
integer y = 1692
integer width = 402
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

event clicked;//get selected rows information
String ls_empid, ls_fname,ls_lname,ls_city,ls_state,ls_phone,ls_gender, ls_dept_name
date ld_dob
long ll_row, ll_dept_id, n
boolean lb_selected

lb_selected = False

FOR n = 1 TO parent.tab_1.tabpage_1.uo_1.dw_1.rowcount() 
	if parent.tab_1.tabpage_1.uo_1.dw_1.isselected(n) then
		lb_selected = True
	end if
	
NEXT

If lb_selected = false then
	MessageBox('Warning','Select Row before update')	
	return 
end if

str_emp_form str



ll_row = parent.tab_1.tabpage_1.uo_1.dw_1.getselectedrow(0)
str.empid = parent.tab_1.tabpage_1.uo_1.dw_1.getitemnumber(ll_row,'emp_id')
str.emp_fname = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'emp_fname')
str.emp_lname = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'emp_lname')
str.city = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'city')
str.state = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'state')
str.phone = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'phone')
str.gender = parent.tab_1.tabpage_1.uo_1.dw_1.getitemstring(ll_row,'gender')


str.dob = parent.tab_1.tabpage_1.uo_1.dw_1.getitemdate(ll_row,'birth_date')

ll_row = parent.tab_1.tabpage_2.dw_1.getselectedrow(0)

str.dept_id = parent.tab_1.tabpage_2.dw_1.getitemnumber(ll_row,'dept_id')

str.dept_name = parent.tab_1.tabpage_2.dw_1.getitemstring(ll_row,'dept_name')

openwithparm(w_form,str)



parent.tab_1.tabpage_1.uo_1.dw_1.update();

if sqlca.sqlcode <> 0 then
	messagebox('Error','Failed to update')
	Rollback using sqlca;
end if


parent.tab_1.tabpage_2.dw_1.update();

if sqlca.sqlcode <> 0 then
	messagebox('Error','Failed to update')
	Rollback using sqlca;
else
	Commit using sqlca;
end if








end event

type tab_1 from tab within w_tab
integer x = 69
integer y = 152
integer width = 3675
integer height = 1504
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
integer selectedtab = 1
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.tabpage_3=create tabpage_3
this.Control[]={this.tabpage_1,&
this.tabpage_2,&
this.tabpage_3}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
destroy(this.tabpage_3)
end on

type tabpage_1 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3639
integer height = 1376
long backcolor = 67108864
string text = "Employee Info"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
uo_1 uo_1
end type

on tabpage_1.create
this.uo_1=create uo_1
this.Control[]={this.uo_1}
end on

on tabpage_1.destroy
destroy(this.uo_1)
end on

type uo_1 from vuo_emp within tabpage_1
integer x = 27
integer y = 8
integer width = 3534
integer height = 1324
integer taborder = 20
boolean bringtotop = true
end type

on uo_1.destroy
call vuo_emp::destroy
end on

type tabpage_2 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3639
integer height = 1376
long backcolor = 67108864
string text = "Department"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
end type

on tabpage_2.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on tabpage_2.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within tabpage_2
integer x = 96
integer y = 48
integer width = 3470
integer height = 1312
integer taborder = 20
string title = "none"
string dataobject = "dw_dept"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if dw_1.isselected(row) then
	dw_1.selectrow(row,false)
else
	dw_1.selectrow(row,true)
end if


end event

type tabpage_3 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3639
integer height = 1376
long backcolor = 67108864
string text = "TreeView[Employee]"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_2 dw_2
end type

on tabpage_3.create
this.dw_2=create dw_2
this.Control[]={this.dw_2}
end on

on tabpage_3.destroy
destroy(this.dw_2)
end on

type dw_2 from datawindow within tabpage_3
integer x = 110
integer y = 72
integer width = 3433
integer height = 1236
integer taborder = 30
string title = "none"
string dataobject = "dw_tree_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

