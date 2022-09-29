$PBExportHeader$w_barcode.srw
forward
global type w_barcode from window
end type
type lv_1 from listview within w_barcode
end type
type cb_2 from commandbutton within w_barcode
end type
type rb_1 from radiobutton within w_barcode
end type
type cbx_1 from checkbox within w_barcode
end type
type cb_1 from commandbutton within w_barcode
end type
type st_4 from statictext within w_barcode
end type
type dw_1 from datawindow within w_barcode
end type
type st_3 from statictext within w_barcode
end type
type sle_3 from singlelineedit within w_barcode
end type
type st_2 from statictext within w_barcode
end type
type sle_2 from singlelineedit within w_barcode
end type
type st_1 from statictext within w_barcode
end type
type sle_1 from singlelineedit within w_barcode
end type
end forward

global type w_barcode from window
integer width = 3529
integer height = 1912
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
lv_1 lv_1
cb_2 cb_2
rb_1 rb_1
cbx_1 cbx_1
cb_1 cb_1
st_4 st_4
dw_1 dw_1
st_3 st_3
sle_3 sle_3
st_2 st_2
sle_2 sle_2
st_1 st_1
sle_1 sle_1
end type
global w_barcode w_barcode

on w_barcode.create
this.lv_1=create lv_1
this.cb_2=create cb_2
this.rb_1=create rb_1
this.cbx_1=create cbx_1
this.cb_1=create cb_1
this.st_4=create st_4
this.dw_1=create dw_1
this.st_3=create st_3
this.sle_3=create sle_3
this.st_2=create st_2
this.sle_2=create sle_2
this.st_1=create st_1
this.sle_1=create sle_1
this.Control[]={this.lv_1,&
this.cb_2,&
this.rb_1,&
this.cbx_1,&
this.cb_1,&
this.st_4,&
this.dw_1,&
this.st_3,&
this.sle_3,&
this.st_2,&
this.sle_2,&
this.st_1,&
this.sle_1}
end on

on w_barcode.destroy
destroy(this.lv_1)
destroy(this.cb_2)
destroy(this.rb_1)
destroy(this.cbx_1)
destroy(this.cb_1)
destroy(this.st_4)
destroy(this.dw_1)
destroy(this.st_3)
destroy(this.sle_3)
destroy(this.st_2)
destroy(this.sle_2)
destroy(this.st_1)
destroy(this.sle_1)
end on

type lv_1 from listview within w_barcode
integer x = 1353
integer y = 428
integer width = 480
integer height = 400
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
long largepicturemaskcolor = 536870912
long smallpicturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

type cb_2 from commandbutton within w_barcode
integer x = 841
integer y = 1616
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Update"
end type

event clicked;dw_1.update()

messagebox('',dw_1.object.status.value)
end event

type rb_1 from radiobutton within w_barcode
integer x = 608
integer y = 552
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
end type

type cbx_1 from checkbox within w_barcode
integer x = 585
integer y = 420
integer width = 686
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
end type

type cb_1 from commandbutton within w_barcode
integer x = 329
integer y = 1620
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type st_4 from statictext within w_barcode
integer x = 306
integer y = 776
integer width = 709
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Barcode in Datawindow"
boolean focusrectangle = false
end type

type dw_1 from datawindow within w_barcode
integer x = 82
integer y = 804
integer width = 3355
integer height = 712
integer taborder = 40
string title = "none"
string dataobject = "dw_emp1"
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

event clicked;messagebox('',string(dwo.name))
insertrow(0)
end event

type st_3 from statictext within w_barcode
integer x = 1879
integer y = 520
integer width = 457
integer height = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Font"
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_barcode
integer x = 1883
integer y = 580
integer width = 256
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event modified;sle_1.textsize = dec(sle_3.text)
end event

type st_2 from statictext within w_barcode
integer x = 512
integer y = 76
integer width = 457
integer height = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Enter Text"
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_barcode
integer x = 507
integer y = 144
integer width = 745
integer height = 144
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event modified;sle_1.text = sle_2.text
end event

type st_1 from statictext within w_barcode
integer x = 1861
integer y = 72
integer width = 457
integer height = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Barcode"
boolean focusrectangle = false
end type

type sle_1 from singlelineedit within w_barcode
integer x = 1865
integer y = 120
integer width = 1399
integer height = 368
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
string facename = "BARCODE TFB"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

