$PBExportHeader$w_bar.srw
forward
global type w_bar from window
end type
type wb_1 from webbrowser within w_bar
end type
type st_4 from statictext within w_bar
end type
type sle_fontsize from singlelineedit within w_bar
end type
type cb_2 from commandbutton within w_bar
end type
type sle_1 from singlelineedit within w_bar
end type
type st_3 from statictext within w_bar
end type
type st_1 from statictext within w_bar
end type
type sle_text from singlelineedit within w_bar
end type
type cb_1 from commandbutton within w_bar
end type
type st_2 from statictext within w_bar
end type
type st_barcode from statictext within w_bar
end type
end forward

global type w_bar from window
integer width = 1787
integer height = 1124
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
wb_1 wb_1
st_4 st_4
sle_fontsize sle_fontsize
cb_2 cb_2
sle_1 sle_1
st_3 st_3
st_1 st_1
sle_text sle_text
cb_1 cb_1
st_2 st_2
st_barcode st_barcode
end type
global w_bar w_bar

type prototypes
Function Long AddFontResourceExW( Readonly String as_FontFile, ULong aul_FontCharacteristics, ULong aul_Reserved ) Library "GDI32.dll" Alias For "AddFontResourceExW"
Function Boolean RemoveFontResourceExW( Readonly String as_FonfFile, ULong aul_FontCharacteristics, ULong aul_Reserved ) Library "GDI32.dll" Alias For "RemoveFontResourceExW"

end prototypes

type variables
string docpath, docname[]
end variables

on w_bar.create
this.wb_1=create wb_1
this.st_4=create st_4
this.sle_fontsize=create sle_fontsize
this.cb_2=create cb_2
this.sle_1=create sle_1
this.st_3=create st_3
this.st_1=create st_1
this.sle_text=create sle_text
this.cb_1=create cb_1
this.st_2=create st_2
this.st_barcode=create st_barcode
this.Control[]={this.wb_1,&
this.st_4,&
this.sle_fontsize,&
this.cb_2,&
this.sle_1,&
this.st_3,&
this.st_1,&
this.sle_text,&
this.cb_1,&
this.st_2,&
this.st_barcode}
end on

on w_bar.destroy
destroy(this.wb_1)
destroy(this.st_4)
destroy(this.sle_fontsize)
destroy(this.cb_2)
destroy(this.sle_1)
destroy(this.st_3)
destroy(this.st_1)
destroy(this.sle_text)
destroy(this.cb_1)
destroy(this.st_2)
destroy(this.st_barcode)
end on

event open;wb_1.Navigate ( 'www.youtube.com' )
end event

type wb_1 from webbrowser within w_bar
integer x = 951
integer y = 808
integer width = 402
integer height = 400
end type

type st_4 from statictext within w_bar
integer x = 279
integer y = 272
integer width = 288
integer height = 68
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Font Size:"
boolean focusrectangle = false
end type

type sle_fontsize from singlelineedit within w_bar
integer x = 562
integer y = 260
integer width = 192
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "16"
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

event modified;
st_barcode.TextSize = dec(sle_fontsize.Text)

end event

type cb_2 from commandbutton within w_bar
integer x = 1605
integer y = 120
integer width = 119
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "..."
end type

event clicked;
integer i, li_cnt, li_rtn, li_filenum


li_rtn = GetFileOpenName("Select File", &
   docpath, docname[], "DOC", &
   + "All Files (*.*), *.*", &
   ".\", 18)

sle_1.text = docpath

end event

type sle_1 from singlelineedit within w_bar
integer x = 773
integer y = 120
integer width = 837
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_bar
integer x = 201
integer y = 124
integer width = 453
integer height = 108
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Select Font Type"
boolean border = true
boolean focusrectangle = false
end type

type st_1 from statictext within w_bar
integer x = 206
integer y = 8
integer width = 439
integer height = 108
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Enter Text"
boolean border = true
boolean focusrectangle = false
end type

type sle_text from singlelineedit within w_bar
integer x = 773
integer width = 837
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
string facename = "barcode font"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_bar
integer x = 837
integer y = 396
integer width = 530
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generate barCode"
end type

event clicked;Constant Long FR_PRIVATE = 16
Constant Long FR_NOT_ENUM = 32
int ll_rc 
boolean lb_rc

ll_rc = AddFontResourceExW(sle_1.text ,FR_PRIVATE + FR_NOT_ENUM,0)
If ll_rc <> 1 Then
	MessageBox("Warning","Add Font Error" + String(ll_rc) )
	Return
End If

if docname[1] = 'BARCODE TFB.ttf' then
	st_barcode.facename = 'BARCODE TFB'
end if

st_barcode.setredraw( true)
st_barcode.text =  sle_text.text
st_barcode.TextSize = 20

//st_barcode.setredraw( false)

lb_rc = RemoveFontResourceExW(sle_1.text ,FR_PRIVATE + FR_NOT_ENUM,0)
If Not lb_rc Then
	MessageBox("Warning","Remove Font Error" )
	Return
End If
end event

type st_2 from statictext within w_bar
integer x = 183
integer y = 448
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "BarCode"
boolean border = true
boolean focusrectangle = false
end type

type st_barcode from statictext within w_bar
integer x = 178
integer y = 508
integer width = 1189
integer height = 256
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean border = true
boolean focusrectangle = false
end type

