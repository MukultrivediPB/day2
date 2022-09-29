$PBExportHeader$w_calender.srw
forward
global type w_calender from window
end type
type cb_3 from commandbutton within w_calender
end type
type cb_2 from commandbutton within w_calender
end type
type cb_1 from commandbutton within w_calender
end type
type dp_1 from datepicker within w_calender
end type
type mc_1 from monthcalendar within w_calender
end type
type mle_1 from multilineedit within w_calender
end type
end forward

global type w_calender from window
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
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dp_1 dp_1
mc_1 mc_1
mle_1 mle_1
end type
global w_calender w_calender

on w_calender.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dp_1=create dp_1
this.mc_1=create mc_1
this.mle_1=create mle_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dp_1,&
this.mc_1,&
this.mle_1}
end on

on w_calender.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dp_1)
destroy(this.mc_1)
destroy(this.mle_1)
end on

type cb_3 from commandbutton within w_calender
integer x = 2158
integer y = 848
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "get date"
end type

event clicked;integer li_return
Date seldate

li_return = mc_1.GetSelectedDate(seldate)

messagebox('',string(seldate))
end event

type cb_2 from commandbutton within w_calender
integer x = 1129
integer y = 648
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Set Date"
end type

event clicked;date d
time t
d=date("2007/12/27")
t=time("12:00:00")
dp_1.SetValue(d, t)
end event

type cb_1 from commandbutton within w_calender
integer x = 242
integer y = 624
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get Date"
end type

event clicked;date d
time t
datetime dt
integer li_ret1, li_ret2

li_ret1 = dp_1.GetValue(d, t)
li_ret2 = dp_1.GetValue(dt)

mle_1.text += string(d) + " ~r~n"
mle_1.text += string(t) + " ~r~n"
mle_1.text += string(dt) + " ~r~n"
end event

type dp_1 from datepicker within w_calender
integer x = 165
integer y = 40
integer width = 686
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-09-23"), Time("18:46:31.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type mc_1 from monthcalendar within w_calender
integer x = 2094
integer y = 32
integer width = 1006
integer height = 760
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long titletextcolor = 134217742
long trailingtextcolor = 134217745
long monthbackcolor = 1073741824
long titlebackcolor = 134217741
integer maxselectcount = 31
integer scrollrate = 1
boolean todaysection = true
boolean todaycircle = true
boolean border = true
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_calender
integer x = 210
integer y = 212
integer width = 480
integer height = 400
integer taborder = 30
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

