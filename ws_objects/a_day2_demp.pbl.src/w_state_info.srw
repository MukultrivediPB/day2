$PBExportHeader$w_state_info.srw
forward
global type w_state_info from window
end type
type cb_10 from commandbutton within w_state_info
end type
type cb_9 from commandbutton within w_state_info
end type
type cb_8 from commandbutton within w_state_info
end type
type cb_5 from commandbutton within w_state_info
end type
type cb_7 from commandbutton within w_state_info
end type
type cb_6 from commandbutton within w_state_info
end type
type cb_4 from commandbutton within w_state_info
end type
type cb_3 from commandbutton within w_state_info
end type
type cb_2 from commandbutton within w_state_info
end type
type cb_1 from commandbutton within w_state_info
end type
type dw_1 from datawindow within w_state_info
end type
end forward

global type w_state_info from window
integer width = 3054
integer height = 1636
boolean titlebar = true
string title = "w_state_info"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_10 cb_10
cb_9 cb_9
cb_8 cb_8
cb_5 cb_5
cb_7 cb_7
cb_6 cb_6
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_state_info w_state_info

on w_state_info.create
this.cb_10=create cb_10
this.cb_9=create cb_9
this.cb_8=create cb_8
this.cb_5=create cb_5
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_10,&
this.cb_9,&
this.cb_8,&
this.cb_5,&
this.cb_7,&
this.cb_6,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_state_info.destroy
destroy(this.cb_10)
destroy(this.cb_9)
destroy(this.cb_8)
destroy(this.cb_5)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_10 from commandbutton within w_state_info
integer x = 2528
integer y = 1220
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Calculator"
end type

event clicked;run('calculator')
end event

type cb_9 from commandbutton within w_state_info
integer x = 1705
integer y = 1372
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Row Status"
end type

event clicked;dwItemStatus l_status
l_status = dw_1.GetItemStatus( &
      dw_1.GetRow(), "state_name", Primary!)
		
messagebox('Row Status',string(l_status))
end event

type cb_8 from commandbutton within w_state_info
integer x = 608
integer y = 1336
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Filter Buffer"
end type

event clicked;String OldSName, NewSName
int n

messagebox('dw_1.FilteredCount( )',dw_1.FilteredCount( ))
FOR n = 1 TO dw_1.FilteredCount( )   
	
	OldSName = dw_1.GetItemString(n, "state_name", Filter!, true)
	newSName = dw_1.GetItemString(n, "state_name", Filter!, false)
	//if OldSName = '' or  newSName = '' then
		MessageBox('State_Name','FIlter: ' + OldSName + 'Filter Buffer' + newSName)
	//end if
NEXT
end event

type cb_5 from commandbutton within w_state_info
integer x = 1989
integer y = 1188
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Delete"
end type

event clicked;dw_1.deleterow(dw_1.getselectedrow(0))
end event

type cb_7 from commandbutton within w_state_info
integer x = 1527
integer y = 1184
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Filter"
end type

event clicked;dw_1.setfilter("state_name ='Alberta'");
dw_1.filter();
end event

type cb_6 from commandbutton within w_state_info
integer x = 1051
integer y = 1340
integer width = 430
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Delete Buffer"
end type

event clicked;String OldSName, NewSName
int n
messagebox('dw_1.DeletedCount( )',dw_1.DeletedCount( ))

FOR n = 1 TO dw_1.deletedCount( )   
	
	OldSName = dw_1.GetItemString(n, "state_name", Delete!, true)
	newSName = dw_1.GetItemString(n, "state_name", Delete!, false)
	//if OldSName <> '' or  newSName <> '' then
		MessageBox('State_Name','Delete: ' + OldSName + 'Delete Buffer' + newSName)
	//end if
NEXT
end event

type cb_4 from commandbutton within w_state_info
integer x = 105
integer y = 1344
integer width = 430
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Original Buffer"
end type

event clicked;String OldSName, NewSName
int n

messagebox('dw_1.Modifiedcount( )',dw_1.Modifiedcount( ))

FOR n = 1 TO dw_1.Modifiedcount( )   
	
	OldSName = dw_1.GetItemString(n, "state_name", Primary!, true)
	newSName = dw_1.GetItemString(n, "state_name", Primary!, false)
	//if OldSName <> newSName then
		MessageBox('State_Name','Primary: ' + OldSName + 'Original Buffer' + newSName)
	//end if
NEXT
end event

type cb_3 from commandbutton within w_state_info
integer x = 1065
integer y = 1172
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

event clicked;dw_1.update();

commit using sqlca;
end event

type cb_2 from commandbutton within w_state_info
integer x = 626
integer y = 1172
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert"
end type

event clicked;long ll_newrow
ll_newrow = dw_1.InsertRow(0)
dw_1.ScrollToRow(ll_newrow)
end event

type cb_1 from commandbutton within w_state_info
integer x = 169
integer y = 1172
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type dw_1 from datawindow within w_state_info
integer x = 160
integer y = 44
integer width = 2661
integer height = 1036
integer taborder = 10
string title = "none"
string dataobject = "dw_state"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event sqlpreview;Messagebox('SQLPreview',sqlsyntax)
end event

