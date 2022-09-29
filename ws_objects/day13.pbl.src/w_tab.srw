$PBExportHeader$w_tab.srw
forward
global type w_tab from window
end type
type cb_1 from commandbutton within w_tab
end type
type tab_1 from tab within w_tab
end type
type tabpage_1 from userobject within tab_1
end type
type dw_1 from datawindow within tabpage_1
end type
type tabpage_1 from userobject within tab_1
dw_1 dw_1
end type
type tabpage_2 from userobject within tab_1
end type
type dw_2 from datawindow within tabpage_2
end type
type tabpage_2 from userobject within tab_1
dw_2 dw_2
end type
type tab_1 from tab within w_tab
tabpage_1 tabpage_1
tabpage_2 tabpage_2
end type
end forward

global type w_tab from window
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
tab_1 tab_1
end type
global w_tab w_tab

on w_tab.create
this.cb_1=create cb_1
this.tab_1=create tab_1
this.Control[]={this.cb_1,&
this.tab_1}
end on

on w_tab.destroy
destroy(this.cb_1)
destroy(this.tab_1)
end on

type cb_1 from commandbutton within w_tab
integer x = 663
integer y = 1160
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;int n
string OldSName,newSName
FOR n = 1 TO tab_1.tabpage_1.dw_1.Modifiedcount( )   
	
	OldSName = tab_1.tabpage_1.dw_1.GetItemString(n, "emp_id", Primary!, true)
	newSName = tab_1.tabpage_1.dw_1.GetItemString(n, "emp_id", Primary!, false)
	//if OldSName <> newSName then
		MessageBox('State_Name','Primary: ' + OldSName + 'Original Buffer' + newSName)
	//end if
NEXT
end event

type tab_1 from tab within w_tab
integer x = 91
integer y = 48
integer width = 2999
integer height = 1020
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
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.Control[]={this.tabpage_1,&
this.tabpage_2}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
end on

event selectionchanging;messagebox('','')
end event

type tabpage_1 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2962
integer height = 892
long backcolor = 67108864
string text = "Employe"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
end type

on tabpage_1.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on tabpage_1.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within tabpage_1
integer x = 91
integer y = 76
integer width = 2761
integer height = 756
integer taborder = 20
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tabpage_2 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 2962
integer height = 892
long backcolor = 67108864
string text = "Department"
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
integer x = 78
integer y = 56
integer width = 2766
integer height = 760
integer taborder = 20
string title = "none"
string dataobject = "dw_dept"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

