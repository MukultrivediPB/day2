$PBExportHeader$w_othercontrols.srw
forward
global type w_othercontrols from window
end type
type cb_2 from commandbutton within w_othercontrols
end type
type dw_2 from datawindow within w_othercontrols
end type
type dw_1 from datawindow within w_othercontrols
end type
type cb_1 from commandbutton within w_othercontrols
end type
type hpb_1 from hprogressbar within w_othercontrols
end type
end forward

global type w_othercontrols from window
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
dw_2 dw_2
dw_1 dw_1
cb_1 cb_1
hpb_1 hpb_1
end type
global w_othercontrols w_othercontrols

on w_othercontrols.create
this.cb_2=create cb_2
this.dw_2=create dw_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.hpb_1=create hpb_1
this.Control[]={this.cb_2,&
this.dw_2,&
this.dw_1,&
this.cb_1,&
this.hpb_1}
end on

on w_othercontrols.destroy
destroy(this.cb_2)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.cb_1)
destroy(this.hpb_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_2 from commandbutton within w_othercontrols
integer x = 1490
integer y = 76
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Copy"
end type

event clicked;int i

for i =1 to dw_1.rowcount()  

dw_1.RowsCopy(i,  i, Primary!, dw_2, 1, Primary!)

hpb_1.position = hpb_1.position + 1
sleep(1)

next
end event

type dw_2 from datawindow within w_othercontrols
integer x = 1920
integer y = 36
integer width = 1289
integer height = 1032
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_othercontrols
integer x = 151
integer y = 44
integer width = 1294
integer height = 1032
integer taborder = 10
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_othercontrols
integer x = 1874
integer y = 1112
integer width = 247
integer height = 140
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Run"
end type

event clicked;int i

for i =1 to 10
	hpb_1.position = hpb_1.position + 10
	sleep(2)
next
end event

type hpb_1 from hprogressbar within w_othercontrols
integer x = 78
integer y = 1116
integer width = 1755
integer height = 124
unsignedinteger maxposition = 100
integer setstep = 1
end type

