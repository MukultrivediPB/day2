$PBExportHeader$vuo_emp.sru
forward
global type vuo_emp from userobject
end type
type dw_1 from datawindow within vuo_emp
end type
end forward

global type vuo_emp from userobject
integer width = 3273
integer height = 1196
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
end type
global vuo_emp vuo_emp

on vuo_emp.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on vuo_emp.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within vuo_emp
integer x = 105
integer y = 84
integer width = 3090
integer height = 1052
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;
if dw_1.isselected(row) then
	dw_1.selectrow(row,false)
else
	dw_1.selectrow(row,true)
end if


end event

