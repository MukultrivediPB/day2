$PBExportHeader$w_picker_demo.srw
forward
global type w_picker_demo from window
end type
type cb_1 from commandbutton within w_picker_demo
end type
end forward

global type w_picker_demo from window
integer x = 1056
integer y = 484
integer width = 1202
integer height = 552
boolean titlebar = true
string title = "Color Picker Demo"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 78235810
cb_1 cb_1
end type
global w_picker_demo w_picker_demo

type prototypes
function boolean ChooseColorA( REF str_ChooseColor  lpcc ) library "comdlg32.dll"
function ulong GlobalAlloc( ulong uFlags, long dwBytes ) library "kernel32.dll"
function ulong GlobalLock( ulong hmem ) library "kernel32.dll"
function boolean GlobalUnlock ( ulong hmem ) library "kernel32.dll"
function ulong GlobalFree ( ulong hmem ) library "kernel32.dll"
subroutine CopyMemory ( ulong hDest, long s[], long b ) library "kernel32.dll" alias for "RtlMoveMemory"
subroutine CopyMemory ( ref long d[16], ulong hSource, long b ) library "kernel32.dll" alias for "RtlMoveMemory"

end prototypes

type variables
long il_cust[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
long il_RgbInit
end variables

forward prototypes
public function boolean wf_choosecolor (ref long al_rgbresult)
end prototypes

public function boolean wf_choosecolor (ref long al_rgbresult);str_ChooseColor 	lstr_ChooseColor
boolean 				lb_ok
ulong					lul_hmem

// Set initialul_hMemcolor 
lstr_ChooseColor.rgbresult = al_rgbresult

// Flag = RGBInit 
lstr_choosecolor.flags = 1

// No owner necessary
SetNull(lstr_choosecolor.hwndOwner)

// Allocate memory for custom colors */
lul_hMem = globalAlloc(2,64)
lul_hMem = globallock (lul_hMem)

// copy custum colors to memory 
CopyMemory(lul_hMem,il_Cust,64)

// and assign to structure for further use by function
lstr_ChooseColor.lpCustColors = lul_hMem

// finally, set structure size
lstr_choosecolor.lStructSize = 36

// call function
lb_ok = ChooseColorA ( lstr_choosecolor )

// copy result into variables
if lb_ok then
	al_rgbresult = lstr_ChooseColor.rgbresult 
	CopyMemory(il_Cust,lul_hMem,64)
end if

// free used resources (custom color reside in instance array 
globalunlock(lul_hMem)
globalfree(lul_hMem)

return lb_ok


end function

on w_picker_demo.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_picker_demo.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_picker_demo
integer x = 219
integer y = 176
integer width = 718
integer height = 96
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Change Backgroundcolor"
end type

event clicked;if wf_ChooseColor(il_RgbInit) then
	parent.backcolor = il_RgbInit
end if

return 1
end event

