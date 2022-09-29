$PBExportHeader$w_richtext.srw
forward
global type w_richtext from window
end type
type cb_6 from commandbutton within w_richtext
end type
type cb_5 from commandbutton within w_richtext
end type
type cb_4 from commandbutton within w_richtext
end type
type cb_3 from commandbutton within w_richtext
end type
type cb_2 from commandbutton within w_richtext
end type
type cb_1 from commandbutton within w_richtext
end type
type rte_1 from richtextedit within w_richtext
end type
end forward

global type w_richtext from window
integer width = 3895
integer height = 2048
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
rte_1 rte_1
end type
global w_richtext w_richtext

on w_richtext.create
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.rte_1=create rte_1
this.Control[]={this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.rte_1}
end on

on w_richtext.destroy
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.rte_1)
end on

type cb_6 from commandbutton within w_richtext
integer x = 923
integer y = 172
integer width = 457
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string text = "Add Picture"
end type

event clicked;integer li_rtn
String  docpath, docname[]

li_rtn = GetFileOpenName("Select File", &
   docpath, docname[], "DOC", &
   + "All Files (*.*), *.*", &
   ".\", 18)

li_rtn = rte_1.InsertPicture(docpath)
end event

type cb_5 from commandbutton within w_richtext
integer x = 475
integer y = 172
integer width = 457
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string text = "Pick Color"
end type

event clicked;long red, green, blue
long custom[ ]
integer li_color
red = 255
custom[1]=rgb(red, 200, blue)
custom[2]=8344736
li_color = ChooseColor( red, custom [ ] )


rte_1.SetTextColor(custom[1])
//rte_1.SetTextColor(custom[ 2])
end event

type cb_4 from commandbutton within w_richtext
integer x = 334
integer y = 172
integer width = 146
integer height = 116
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean underline = true
string text = "U"
end type

event clicked;rte_1.SetTextStyle ( false, true ,false ,false, false, false )
end event

type cb_3 from commandbutton within w_richtext
integer x = 215
integer y = 172
integer width = 146
integer height = 116
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "I"
end type

event clicked;rte_1.SetTextStyle ( false, false ,false ,false, true, false )
end event

type cb_2 from commandbutton within w_richtext
integer x = 73
integer y = 172
integer width = 146
integer height = 116
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "B"
end type

event clicked;if rte_1.gettextstyle(Bold!) then
	rte_1.SetTextStyle ( false, false ,false ,false, false, false )
else
	rte_1.SetTextStyle ( true, false ,false ,false, false, false )
end if


//rte_1.SetTextStyle ( true, false ,false ,false, false, false )
end event

type cb_1 from commandbutton within w_richtext
integer x = 3479
integer y = 172
integer width = 251
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save"
end type

event clicked;integer li_rtn
li_rtn = rte_1.SaveDocument("c:\test.rtf", &
FileTypeRichText!)
end event

type rte_1 from richtextedit within w_richtext
integer x = 69
integer y = 284
integer width = 3675
integer height = 1604
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

event key;IF keyflags = 2 THEN
   IF key = Keyb! THEN
     parent.triggerevent("cb_2.clicked")
   END IF
END IF
end event

