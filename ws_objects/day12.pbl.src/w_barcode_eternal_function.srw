$PBExportHeader$w_barcode_eternal_function.srw
forward
global type w_barcode_eternal_function from window
end type
type cb_3 from commandbutton within w_barcode_eternal_function
end type
type lb_1 from listbox within w_barcode_eternal_function
end type
type cb_2 from commandbutton within w_barcode_eternal_function
end type
type st_4 from statictext within w_barcode_eternal_function
end type
type sle_4 from singlelineedit within w_barcode_eternal_function
end type
type cb_1 from commandbutton within w_barcode_eternal_function
end type
type sle_1 from singlelineedit within w_barcode_eternal_function
end type
type st_1 from statictext within w_barcode_eternal_function
end type
type sle_2 from singlelineedit within w_barcode_eternal_function
end type
type st_2 from statictext within w_barcode_eternal_function
end type
type sle_3 from singlelineedit within w_barcode_eternal_function
end type
type st_3 from statictext within w_barcode_eternal_function
end type
end forward

global type w_barcode_eternal_function from window
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
lb_1 lb_1
cb_2 cb_2
st_4 st_4
sle_4 sle_4
cb_1 cb_1
sle_1 sle_1
st_1 st_1
sle_2 sle_2
st_2 st_2
sle_3 sle_3
st_3 st_3
end type
global w_barcode_eternal_function w_barcode_eternal_function

type variables
string docpath, docname[]
string font_name
end variables
forward prototypes
public function string wf_get_font_details (string p_font_name)
end prototypes

public function string wf_get_font_details (string p_font_name);string ret_path

if p_font_name = 'barcode font' then
	ret_path = '.\fonts\BarcodeFont.ttf'
end if

return ret_path 

end function

on w_barcode_eternal_function.create
this.cb_3=create cb_3
this.lb_1=create lb_1
this.cb_2=create cb_2
this.st_4=create st_4
this.sle_4=create sle_4
this.cb_1=create cb_1
this.sle_1=create sle_1
this.st_1=create st_1
this.sle_2=create sle_2
this.st_2=create st_2
this.sle_3=create sle_3
this.st_3=create st_3
this.Control[]={this.cb_3,&
this.lb_1,&
this.cb_2,&
this.st_4,&
this.sle_4,&
this.cb_1,&
this.sle_1,&
this.st_1,&
this.sle_2,&
this.st_2,&
this.sle_3,&
this.st_3}
end on

on w_barcode_eternal_function.destroy
destroy(this.cb_3)
destroy(this.lb_1)
destroy(this.cb_2)
destroy(this.st_4)
destroy(this.sle_4)
destroy(this.cb_1)
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.sle_2)
destroy(this.st_2)
destroy(this.sle_3)
destroy(this.st_3)
end on

type cb_3 from commandbutton within w_barcode_eternal_function
integer x = 1399
integer y = 608
integer width = 416
integer height = 132
integer taborder = 50
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Install Font"
end type

event clicked;Constant Long FR_PRIVATE = 16
Constant Long FR_NOT_ENUM = 32
string font_file_path
int ll_rc 
boolean lb_rc

font_file_path = wf_get_font_details(lb_1.SelectedItem ( ))

ll_rc = AddFontResourceExW( font_file_path,FR_PRIVATE + FR_NOT_ENUM,0)
If ll_rc <> 1 Then
	MessageBox("Warning","Add Font Error" + String(ll_rc) )
	Return
else
	MessageBox('Confirmation',docpath + ' Installed Successfully')
End If

 font_name = lb_1.SelectedItem ( )
end event

type lb_1 from listbox within w_barcode_eternal_function
integer x = 123
integer y = 604
integer width = 1262
integer height = 648
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string item[] = {"BARCODE TFB","barcode font"}
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_barcode_eternal_function
integer x = 1344
integer y = 452
integer width = 114
integer height = 120
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "..."
end type

event clicked;
integer i, li_cnt, li_rtn, li_filenum


li_rtn = GetFileOpenName("Select File", &
   docpath, docname[], "DOC", &
   + "All Files (*.*), *.*", &
   ".\fonts", 18)


sle_4.text = docpath
end event

type st_4 from statictext within w_barcode_eternal_function
integer x = 110
integer y = 384
integer width = 471
integer height = 60
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Select Font File"
boolean focusrectangle = false
end type

type sle_4 from singlelineedit within w_barcode_eternal_function
integer x = 114
integer y = 456
integer width = 1234
integer height = 116
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

type cb_1 from commandbutton within w_barcode_eternal_function
integer x = 2889
integer y = 76
integer width = 421
integer height = 368
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Generate"
end type

event clicked;/*Constant Long FR_PRIVATE = 16
Constant Long FR_NOT_ENUM = 32
 
int ll_rc 
boolean lb_rc
ll_rc = AddFontResourceExW( docpath,FR_PRIVATE + FR_NOT_ENUM,0)
If ll_rc <> 1 Then
	MessageBox("Warning","Add Font Error" + String(ll_rc) )
	Return
else
	MessageBox('Confirmation',docpath + ' Installed Successfully')
End If


if docname[1] = 'BARCODE TFB.ttf' then
	
	font_name = 'BARCODE TFB'
	
end if*/

sle_1.facename = font_name



end event

type sle_1 from singlelineedit within w_barcode_eternal_function
integer x = 1463
integer y = 76
integer width = 1399
integer height = 368
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "MS Serif"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_barcode_eternal_function
integer x = 1458
integer y = 20
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

type sle_2 from singlelineedit within w_barcode_eternal_function
integer x = 105
integer y = 92
integer width = 745
integer height = 144
integer taborder = 10
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

type st_2 from statictext within w_barcode_eternal_function
integer x = 110
integer y = 24
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

type sle_3 from singlelineedit within w_barcode_eternal_function
integer x = 960
integer y = 100
integer width = 256
integer height = 112
integer taborder = 10
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

type st_3 from statictext within w_barcode_eternal_function
integer x = 955
integer y = 24
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

