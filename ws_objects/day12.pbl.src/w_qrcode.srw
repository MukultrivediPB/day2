$PBExportHeader$w_qrcode.srw
forward
global type w_qrcode from window
end type
type cb_1 from commandbutton within w_qrcode
end type
type st_1 from statictext within w_qrcode
end type
type sle_1 from singlelineedit within w_qrcode
end type
type rte_1 from richtextedit within w_qrcode
end type
end forward

global type w_qrcode from window
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
st_1 st_1
sle_1 sle_1
rte_1 rte_1
end type
global w_qrcode w_qrcode

on w_qrcode.create
this.cb_1=create cb_1
this.st_1=create st_1
this.sle_1=create sle_1
this.rte_1=create rte_1
this.Control[]={this.cb_1,&
this.st_1,&
this.sle_1,&
this.rte_1}
end on

on w_qrcode.destroy
destroy(this.cb_1)
destroy(this.st_1)
destroy(this.sle_1)
destroy(this.rte_1)
end on

type cb_1 from commandbutton within w_qrcode
integer x = 667
integer y = 312
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "QR Code"
end type

event clicked;OLEObject barcode 
	int return_code 
	barcode = CREATE OLEObject
	return_code=barcode.ConnectToNewObject("Net.ConnectCode.QRCodeCOMLibrary") 
	if return_code<>0 then 
		destroy barcode 
		Messagebox ("Error","QRCodeCOMLibrary not available") 
	else 
		string result 
		string input
		input = sle_1.text
		result=barcode.Encode_QRCode(input,"L",5) 
		rte_1.replaceText(result) 
		destroy barcode 
	end if

end event

type st_1 from statictext within w_qrcode
integer x = 219
integer y = 156
integer width = 402
integer height = 88
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Enter Text"
boolean focusrectangle = false
end type

type sle_1 from singlelineedit within w_qrcode
integer x = 667
integer y = 140
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type rte_1 from richtextedit within w_qrcode
integer x = 1317
integer width = 1806
integer height = 1228
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
string facename = "CCodeQR_Trial"
borderstyle borderstyle = stylelowered!
end type

