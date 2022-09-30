$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type dw_1 from datawindow within w_test
end type
end forward

global type w_test from window
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
event ue_insert ( )
dw_1 dw_1
end type
global w_test w_test

forward prototypes
public subroutine ue_delete (integer row)
end prototypes

event ue_insert();messagebox('','')
end event

public subroutine ue_delete (integer row);
end subroutine

on w_test.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_test.destroy
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type dw_1 from datawindow within w_test
event ue_insert ( integer row )
event ue_delete ( integer row )
integer x = 242
integer y = 84
integer width = 2034
integer height = 824
integer taborder = 10
string title = "none"
string dataobject = "d_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_insert(integer row);messagebox('','1')

dw_1.insertrow(row)
end event

event ue_delete(integer row);dw_1.deleterow(row)
end event

event rbuttondown;m_menu lm_popup
lm_popup=create m_menu
lm_popup.idw_datawindow=this
lm_popup.row = row
lm_popup.popmenu( this.pointerx( )+10,this.pointery( )+10)
end event

