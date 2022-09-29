$PBExportHeader$w_first.srw
forward
global type w_first from window
end type
type cb_11 from commandbutton within w_first
end type
type cb_10 from commandbutton within w_first
end type
type cb_9 from commandbutton within w_first
end type
type cb_8 from commandbutton within w_first
end type
type cb_7 from commandbutton within w_first
end type
type cb_6 from commandbutton within w_first
end type
type dw_2 from datawindow within w_first
end type
type cb_5 from commandbutton within w_first
end type
type cb_3 from commandbutton within w_first
end type
type cb_4 from commandbutton within w_first
end type
type cb_2 from commandbutton within w_first
end type
type dw_1 from datawindow within w_first
end type
type cb_1 from commandbutton within w_first
end type
end forward

global type w_first from window
integer width = 4434
integer height = 2084
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_getdata ( )
cb_11 cb_11
cb_10 cb_10
cb_9 cb_9
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
dw_2 dw_2
cb_5 cb_5
cb_3 cb_3
cb_4 cb_4
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
end type
global w_first w_first

type variables
protected integer i = 100;
end variables

forward prototypes
public function integer myfunction ()
end prototypes

event ue_getdata();dw_1.settransobject(SQLCA);
dw_1.retrieve();
dw_1.sharedata(dw_2)

end event

public function integer myfunction ();messagebox('myfunction','i m called')
return 1
end function

on w_first.create
this.cb_11=create cb_11
this.cb_10=create cb_10
this.cb_9=create cb_9
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.dw_2=create dw_2
this.cb_5=create cb_5
this.cb_3=create cb_3
this.cb_4=create cb_4
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_11,&
this.cb_10,&
this.cb_9,&
this.cb_8,&
this.cb_7,&
this.cb_6,&
this.dw_2,&
this.cb_5,&
this.cb_3,&
this.cb_4,&
this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on w_first.destroy
destroy(this.cb_11)
destroy(this.cb_10)
destroy(this.cb_9)
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.dw_2)
destroy(this.cb_5)
destroy(this.cb_3)
destroy(this.cb_4)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;cb_1.triggerevent(Clicked!)
boolean Maxed
Maxed = IsZoomed(Handle(this))
if Maxed then this.title = "Is maxed"
if not Maxed then this.title = "Is normal"

end event

type cb_11 from commandbutton within w_first
integer x = 2194
integer y = 904
integer width = 242
integer height = 220
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Status"
end type

event clicked;Messagebox('Status',String(dw_1.getitemstatus(dw_1.GetSelectedRow(0),0,Primary!)))
end event

type cb_10 from commandbutton within w_first
integer x = 3150
integer y = 1824
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Open Child"
end type

event clicked;open(w_first_grand_child)
end event

type cb_9 from commandbutton within w_first
integer x = 2162
integer y = 104
integer width = 288
integer height = 276
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Select All"
end type

event clicked;dw_1.selectrow(0,true)
end event

type cb_8 from commandbutton within w_first
integer x = 2171
integer y = 1324
integer width = 274
integer height = 328
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Clear"
end type

event clicked;dw_2.clear();
end event

type cb_7 from commandbutton within w_first
integer x = 2181
integer y = 608
integer width = 274
integer height = 232
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Move"
end type

event clicked;int n
FOR n = 1 TO dw_1.RowCount( )      
	if dw_1.isselected(n) then
		dw_1.rowsMove(n, n,  Primary!, dw_2,1, Primary!)
				  
	end if

NEXT
end event

type cb_6 from commandbutton within w_first
integer x = 2176
integer y = 380
integer width = 279
integer height = 212
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Copy"
end type

event clicked;int n
FOR n = 1 TO dw_1.RowCount( )      
	if dw_1.isselected(n) then
		dw_1.rowsCopy(n, n,  Primary!, dw_2,1, Primary!)
				  
	end if

NEXT
end event

type dw_2 from datawindow within w_first
integer x = 2469
integer y = 116
integer width = 1861
integer height = 1616
integer taborder = 20
string title = "none"
string dataobject = "dw_emp_copy"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_5 from commandbutton within w_first
integer x = 1870
integer y = 1816
integer width = 471
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Delete Row"
end type

event clicked;dw_1.deleterow(dw_1.GetSelectedRow (0))
end event

type cb_3 from commandbutton within w_first
integer x = 1285
integer y = 1816
integer width = 471
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert New Row"
end type

event clicked;dw_1.insertrow(0)
end event

type cb_4 from commandbutton within w_first
integer x = 2510
integer y = 1820
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
end type

event clicked;dw_1.print()
end event

type cb_2 from commandbutton within w_first
integer x = 699
integer y = 1812
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

event clicked;dw_1.settransobject(sqlca)
dw_1.update()

commit using sqlca;

messagebox('SQLReturnData',String(sqlca.SQLReturnData))

messagebox('SQLCode',String(sqlca.SQLCode))
messagebox('SQLNRows',String(sqlca.SQLNRows))
messagebox('SQLDBCode',String(sqlca.SQLDBCode))
messagebox('SQLErrText',String(sqlca.SQLErrText))

end event

type dw_1 from datawindow within w_first
integer x = 105
integer y = 108
integer width = 2034
integer height = 1620
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;IF keydown(KeyControl!) THEN
  IF IsSelected(row) THEN
     SelectRow(row,FALSE)
  ELSE
     SelectRow(row,TRUE)
  END IF
ELSE
  selectrow(0,FALSE)
  selectrow(row,TRUE)    
END IF
end event

event retrievestart;Messagebox('','RetrieveStart')
end event

event retrieverow;if row = 10  and user <>  'Mukul' then
	
	messagebox('', 'Only ' + user +' can see all data and other user can see only 10 rows') ;
	return 1
	
end if;
end event

event itemchanged;MessageBox('','ItemeChanged')
end event

event itemfocuschanged;MessageBox('','ItemeFocusChanged')
end event

event itemerror;MessageBox('','ItemeError')
end event

type cb_1 from commandbutton within w_first
integer x = 128
integer y = 1812
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Data"
end type

event clicked;//dw_1.settransobject(SQLCA);
//dw_1.retrieve();

//cb_cancel.triggerevent(Clicked!)
parent.triggerevent('ue_getdata')
Messagebox('w_first','I am Parent')
end event

