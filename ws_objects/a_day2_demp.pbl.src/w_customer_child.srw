$PBExportHeader$w_customer_child.srw
forward
global type w_customer_child from w_customer
end type
type cb_3 from commandbutton within w_customer_child
end type
type cb_4 from commandbutton within w_customer_child
end type
end forward

global type w_customer_child from w_customer
cb_3 cb_3
cb_4 cb_4
end type
global w_customer_child w_customer_child

forward prototypes
public subroutine myfunc ()
end prototypes

public subroutine myfunc ();messagebox('','')
end subroutine

on w_customer_child.create
int iCurrent
call super::create
this.cb_3=create cb_3
this.cb_4=create cb_4
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_3
this.Control[iCurrent+2]=this.cb_4
end on

on w_customer_child.destroy
call super::destroy
destroy(this.cb_3)
destroy(this.cb_4)
end on

event ue_myevent;messagebox('ue_myevent_child','i am called')
end event

event open;call super::open;/*
nvo nvo1,nvo2,nvo3

nvo1 = create nvo;
//messagebox('nvo1.i',nvo1.i)
nvo2 = create nvo;
//messagebox('nvo2.i',nvo2.i)
nvo3 = create nvo;
//messagebox('nvo3.i',nvo3.i)*/

end event

type cb_2 from w_customer`cb_2 within w_customer_child
integer x = 805
integer y = 1844
end type

type dw_1 from w_customer`dw_1 within w_customer_child
integer x = 178
integer y = 0
integer width = 2153
integer height = 1784
end type

event dw_1::clicked;call super::clicked;
if dw_1.isselected(row) then
	dw_1.selectrow(row,false)
else
	dw_1.selectrow(row,true)
end if
end event

event dw_1::retrievestart;call super::retrievestart;messagebox('','retrieve Start')
return 0
end event

event dw_1::retrieverow;call super::retrieverow;
if g_user = 'Mukul1' and row =10 then
	
	Messagebox('','only admin can access all records');
	
	return 1;
	
end if
end event

event dw_1::itemchanged;call super::itemchanged;messagebox('itemfocus',data);
end event

event dw_1::itemfocuschanged;call super::itemfocuschanged;messagebox('itemfocus',row);
end event

event dw_1::itemerror;call super::itemerror;messagebox('itemerror',data);
end event

type cb_1 from w_customer`cb_1 within w_customer_child
integer x = 256
integer y = 1836
end type

type cb_3 from commandbutton within w_customer_child
integer x = 1371
integer y = 1840
integer width = 402
integer height = 112
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Deleterow"
end type

event clicked;dw_1.deleterow(dw_1.GetSelectedRow (0))
end event

type cb_4 from commandbutton within w_customer_child
integer x = 1975
integer y = 1844
integer width = 402
integer height = 112
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Insert Row"
end type

event clicked;dw_1.insertrow(0)
end event

