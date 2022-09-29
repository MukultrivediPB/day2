$PBExportHeader$w_emp.srw
forward
global type w_emp from window
end type
type uo_1 from vuo_emp within w_emp
end type
end forward

global type w_emp from window
integer width = 3712
integer height = 1688
boolean titlebar = true
string title = "Employe Details"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
uo_1 uo_1
end type
global w_emp w_emp

on w_emp.create
this.uo_1=create uo_1
this.Control[]={this.uo_1}
end on

on w_emp.destroy
destroy(this.uo_1)
end on

event open;uo_1.dw_1.dataobject = 'dw_emp'
end event

type uo_1 from vuo_emp within w_emp
integer x = 32
integer y = 12
integer width = 3570
integer taborder = 20
end type

on uo_1.destroy
call vuo_emp::destroy
end on

