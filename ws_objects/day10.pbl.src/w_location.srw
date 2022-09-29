$PBExportHeader$w_location.srw
forward
global type w_location from window
end type
type cb_2 from commandbutton within w_location
end type
type cb_1 from commandbutton within w_location
end type
type dw_1 from datawindow within w_location
end type
end forward

global type w_location from window
integer width = 3351
integer height = 1384
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
windowtype windowtype = response!
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_location w_location

on w_location.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_location.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;nvo_standard nvo
nvo = create nvo_standard

nvo.i =11

int j
j = nvo.add(1,2)

//messagebox('',j)
str_emp str

str = message.PowerObjectParm

integer nLoop  // Loop counter
long hWnd  // Handle to control
boolean b

// Get the handle to a PowerBuilder window.
hWnd = Handle(this)
Pie(hWnd,1,1,2,2,3,3,4,4)
b = IsZoomed(hWnd)
// Make the title bar flash 300 times.

end event

event close;CloseWithReturn(this,'mukul')
end event

type cb_2 from commandbutton within w_location
integer x = 1307
integer y = 1144
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "close"
end type

event clicked;CloseWithReturn(parent,'mukul')
end event

type cb_1 from commandbutton within w_location
integer x = 238
integer y = 1132
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

event clicked;dw_1.dataobject = 'dw_location'
dw_1.settransobject(sqlca);
dw_1.retrieve()

datawindowchild country,state,city
int ret

ret = dw_1.getchild('countrytable_countryname', country);
country.settransobject(sqlca);
country.retrieve()

ret = dw_1.getchild('statetable_statename', state);
state.settransobject(sqlca);
state.retrieve()

ret = dw_1.getchild('citytable_cityname', city);
city.settransobject(sqlca);
city.retrieve()
end event

type dw_1 from datawindow within w_location
integer x = 119
integer y = 36
integer width = 2953
integer height = 948
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;//messagebox('dwo',string(dwo.name))
datawindowchild country,state,city
int ret



if string(dwo.name) = 'countrytable_countryname' then
	ret = dw_1.getchild('statetable_statename', state)
	state.setfilter('CountryId = ' + data)
	state.filter()
end if

if string(dwo.name) = 'statetable_statename' then
	ret = dw_1.getchild('citytable_cityname', city)
	city.setfilter('Stateid = ' + data)
	city.filter()
end if
end event

