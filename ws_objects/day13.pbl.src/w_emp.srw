$PBExportHeader$w_emp.srw
forward
global type w_emp from window
end type
type cb_2 from commandbutton within w_emp
end type
type cb_1 from commandbutton within w_emp
end type
type dw_1 from datawindow within w_emp
end type
end forward

global type w_emp from window
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
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_emp w_emp

on w_emp.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_emp.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_2 from commandbutton within w_emp
integer x = 1042
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
string text = "Refresh"
end type

type cb_1 from commandbutton within w_emp
integer x = 425
integer y = 1164
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

event clicked;int i
FOR i = 1 to dw_1.rowcount()
      if String(dw_1.getitemnumber(i,1)) = '' OR ISNULL(dw_1.getitemnumber(i,1))then
			messagebox('confirmation','EMP ID should not be blank')
		end if
NEXT

dw_1.update()
end event

type dw_1 from datawindow within w_emp
integer x = 101
integer y = 48
integer width = 3214
integer height = 1052
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;//messagebox('',string(dwo.name))

int ret

if dwo.name = 'b_ins' then
	ret = this.insertrow(0);
	this.scrolltorow(ret)
end if

if dwo.name = 'b_del' then
	this.deleterow(row);
end if


end event

