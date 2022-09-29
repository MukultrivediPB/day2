$PBExportHeader$w_tab.srw
forward
global type w_tab from window
end type
type cb_2 from commandbutton within w_tab
end type
type tab_1 from tab within w_tab
end type
type tabpage_1 from userobject within tab_1
end type
type cb_1 from commandbutton within tabpage_1
end type
type dw_1 from datawindow within tabpage_1
end type
type tabpage_1 from userobject within tab_1
cb_1 cb_1
dw_1 dw_1
end type
type tabpage_2 from userobject within tab_1
end type
type dw_2 from datawindow within tabpage_2
end type
type tabpage_2 from userobject within tab_1
dw_2 dw_2
end type
type tabpage_3 from vuo within tab_1
end type
type tabpage_3 from vuo within tab_1
end type
type tabpage_4 from userobject within tab_1
end type
type uo_1 from vuo within tabpage_4
end type
type tabpage_4 from userobject within tab_1
uo_1 uo_1
end type
type tab_1 from tab within w_tab
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
tabpage_4 tabpage_4
end type
end forward

global type w_tab from window
integer width = 3954
integer height = 1880
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
tab_1 tab_1
end type
global w_tab w_tab

on w_tab.create
this.cb_2=create cb_2
this.tab_1=create tab_1
this.Control[]={this.cb_2,&
this.tab_1}
end on

on w_tab.destroy
destroy(this.cb_2)
destroy(this.tab_1)
end on

event open;this.tab_1.tabpage_1.dw_1.settransobject(sqlca)
//window==>tab control==> tab page==<datawindiw control

this.tab_1.tabpage_1.dw_1.retrieve()


this.tab_1.tabpage_2.dw_2.settransobject(sqlca)
//window==>tab control==> tab page==<datawindiw control

this.tab_1.tabpage_2.dw_2.retrieve()

this.tab_1.tabpage_3.dw_1.settransobject(sqlca)
//window==>tab control==> tab page==<datawindiw control

this.tab_1.tabpage_3.dw_1.retrieve()


end event

type cb_2 from commandbutton within w_tab
integer x = 3310
integer y = 1616
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update All"
end type

event clicked;tab_1.tabpage_1.dw_1.accepttext()
tab_1.tabpage_1.dw_1.update()

if sqlca.sqlcode <> 0 then
	MessageBox('Error', 'Failed to update')
	RollBack using sqlca;
end if

tab_1.tabpage_2.dw_2.accepttext()
tab_1.tabpage_2.dw_2.update()

if sqlca.sqlcode <> 0 then
	MessageBox('Error', 'Failed to update')
	RollBack using sqlca;
end if

Commit using sqlca;
end event

type tab_1 from tab within w_tab
integer x = 101
integer y = 68
integer width = 3442
integer height = 1488
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
tabpage_4 tabpage_4
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.tabpage_3=create tabpage_3
this.tabpage_4=create tabpage_4
this.Control[]={this.tabpage_1,&
this.tabpage_2,&
this.tabpage_3,&
this.tabpage_4}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
destroy(this.tabpage_3)
destroy(this.tabpage_4)
end on

event selectionchanging;/*tab_1.tabpage_1.dw_1.accepttext()
if parent.tab_1.tabpage_1.dw_1.modifiedcount() > 0 then
	messagebox('Warning','Please save data before moving to Next Tab.')
	return 1
end if*/

//Parent ==>window
end event

event selectionchanged;messagebox('','')
end event

type tabpage_1 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3406
integer height = 1360
long backcolor = 67108864
string text = "Employee Info"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
dw_1 dw_1
end type

on tabpage_1.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on tabpage_1.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within tabpage_1
integer x = 2885
integer y = 1208
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;tab_1.tabpage_1.dw_1.accepttext()
tab_1.tabpage_1.dw_1.update()
end event

type dw_1 from datawindow within tabpage_1
integer x = 55
integer y = 52
integer width = 3205
integer height = 1136
integer taborder = 20
string title = "none"
string dataobject = "dw_emp_tab"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tabpage_2 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3406
integer height = 1360
long backcolor = 67108864
string text = "Department Info"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_2 dw_2
end type

on tabpage_2.create
this.dw_2=create dw_2
this.Control[]={this.dw_2}
end on

on tabpage_2.destroy
destroy(this.dw_2)
end on

type dw_2 from datawindow within tabpage_2
integer x = 69
integer y = 72
integer width = 3090
integer height = 1144
integer taborder = 20
string title = "none"
string dataobject = "dw_dept"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tabpage_3 from vuo within tab_1
integer x = 18
integer y = 112
integer width = 3406
integer height = 1360
end type

type tabpage_4 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 3406
integer height = 1360
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
uo_1 uo_1
end type

on tabpage_4.create
this.uo_1=create uo_1
this.Control[]={this.uo_1}
end on

on tabpage_4.destroy
destroy(this.uo_1)
end on

type uo_1 from vuo within tabpage_4
integer x = 146
integer y = 48
integer taborder = 30
boolean bringtotop = true
end type

on uo_1.destroy
call vuo::destroy
end on

