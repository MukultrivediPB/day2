$PBExportHeader$w_rich.srw
forward
global type w_rich from window
end type
type cb_7 from commandbutton within w_rich
end type
type cb_6 from commandbutton within w_rich
end type
type cb_5 from commandbutton within w_rich
end type
type cb_4 from commandbutton within w_rich
end type
type cb_3 from commandbutton within w_rich
end type
type cb_1 from commandbutton within w_rich
end type
type rte_1 from richtextedit within w_rich
end type
end forward

global type w_rich from window
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
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_1 cb_1
rte_1 rte_1
end type
global w_rich w_rich

type variables
long ll_color
end variables

on w_rich.create
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_1=create cb_1
this.rte_1=create rte_1
this.Control[]={this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_1,&
this.rte_1}
end on

on w_rich.destroy
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_1)
destroy(this.rte_1)
end on

type cb_7 from commandbutton within w_rich
integer x = 1847
integer y = 240
integer width = 457
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "save"
end type

event clicked;integer li_rtn
li_rtn = rte_1.SaveDocument("c:\test.rtf", &
FileTypeRichText!)
end event

type cb_6 from commandbutton within w_rich
integer x = 1399
integer y = 240
integer width = 457
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Picture"
end type

event clicked;rte_1.InsertPicture("C:\Mukul\Button.PNG", 4)
end event

type cb_5 from commandbutton within w_rich
integer x = 1248
integer y = 236
integer width = 155
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "U"
end type

type cb_4 from commandbutton within w_rich
integer x = 1097
integer y = 236
integer width = 155
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "I"
end type

type cb_3 from commandbutton within w_rich
integer x = 946
integer y = 236
integer width = 155
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "B"
end type

event clicked;rte_1.SetTextStyle(true,false,false,false,false,false)
end event

type cb_1 from commandbutton within w_rich
integer x = 133
integer y = 232
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Color Picker"
end type

event clicked;
ll_color = rte_1.GetTextColor()

long red, green, blue
long custom[ ]
integer li_color
red = 255
custom[1]=rgb(red, 200, blue)
custom[2]=8344736
ll_color = ChooseColor( red, custom [ ] )

rte_1.SetTextColor(red)
end event

type rte_1 from richtextedit within w_rich
integer x = 128
integer y = 344
integer width = 2889
integer height = 824
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

