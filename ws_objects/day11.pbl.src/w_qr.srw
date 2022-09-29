$PBExportHeader$w_qr.srw
forward
global type w_qr from window
end type
type rte_1 from richtextedit within w_qr
end type
type cb_1 from commandbutton within w_qr
end type
end forward

global type w_qr from window
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
rte_1 rte_1
cb_1 cb_1
end type
global w_qr w_qr

on w_qr.create
this.rte_1=create rte_1
this.cb_1=create cb_1
this.Control[]={this.rte_1,&
this.cb_1}
end on

on w_qr.destroy
destroy(this.rte_1)
destroy(this.cb_1)
end on

type rte_1 from richtextedit within w_qr
integer x = 206
integer y = 36
integer width = 1751
integer height = 932
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "CCodeQR_Trial"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_qr
integer x = 279
integer y = 1080
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -6
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "QR"
end type

event clicked;OLEObject barcode
	int return_code
	barcode = CREATE OLEObject
	return_code=barcode.ConnectToNewObject("Net.ConnectCode.QRCodeCOMLibrary")		
	if return_code<>0 then
		destroy barcode
		messagebox ("Error","QRCodeCOMLibrary not available")
	else
		string result
		string input="12345678"
		result=barcode.Encode_QRCode(input,"L",5)
		rte_1.replacetext(result)
		destroy barcode
	end if
end event

