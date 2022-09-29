$PBExportHeader$w_location.srw
forward
global type w_location from window
end type
type cb_1 from commandbutton within w_location
end type
type dw_1 from datawindow within w_location
end type
end forward

global type w_location from window
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
dw_1 dw_1
end type
global w_location w_location

on w_location.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_location.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_1 from commandbutton within w_location
integer x = 549
integer y = 1152
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "open"
end type

event clicked;str s
s.empid = '111'
openwithparm(w_sp,s)
end event

type dw_1 from datawindow within w_location
integer x = 82
integer y = 40
integer width = 2610
integer height = 716
integer taborder = 10
string title = "none"
string dataobject = "dw_location"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event editchanged;DataWindowChild child1
	Dw_1.getchild("state",child1)
	Child1.settransobject(sqlca);
	Child1.setfilter('country = ' + data)
	child1.filter()

end event

event itemchanged;DataWindowChild child1
   if dwo.name = 'country' then
	Child1.setfilter('')
	child1.filter()
	Dw_1.getchild("state",child1)
	Child1.settransobject(sqlca);
	child1.retrieve();
	Child1.setfilter("country = '" + data + "'")
	child1.filter()
end if

   if dwo.name = 'state' then
	Child1.setfilter('')
	child1.filter()
	Dw_1.getchild("city",child1)
	Child1.settransobject(sqlca);
	child1.retrieve();
	Child1.setfilter("state = '" + data + "'")
	child1.filter()
end if

end event

