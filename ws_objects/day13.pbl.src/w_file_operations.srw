$PBExportHeader$w_file_operations.srw
forward
global type w_file_operations from window
end type
type cb_3 from commandbutton within w_file_operations
end type
type pb_1 from picturebutton within w_file_operations
end type
type cb_2 from commandbutton within w_file_operations
end type
type mle_1 from multilineedit within w_file_operations
end type
type cb_1 from commandbutton within w_file_operations
end type
type sle_1 from singlelineedit within w_file_operations
end type
end forward

global type w_file_operations from window
integer width = 3680
integer height = 1388
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
pb_1 pb_1
cb_2 cb_2
mle_1 mle_1
cb_1 cb_1
sle_1 sle_1
end type
global w_file_operations w_file_operations

type variables
String docpath, docname[]
end variables
on w_file_operations.create
this.cb_3=create cb_3
this.pb_1=create pb_1
this.cb_2=create cb_2
this.mle_1=create mle_1
this.cb_1=create cb_1
this.sle_1=create sle_1
this.Control[]={this.cb_3,&
this.pb_1,&
this.cb_2,&
this.mle_1,&
this.cb_1,&
this.sle_1}
end on

on w_file_operations.destroy
destroy(this.cb_3)
destroy(this.pb_1)
destroy(this.cb_2)
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.sle_1)
end on

type cb_3 from commandbutton within w_file_operations
integer x = 2921
integer y = 628
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Disable"
end type

event clicked;pb_1.enabled = false
end event

type pb_1 from picturebutton within w_file_operations
integer x = 2830
integer y = 352
integer width = 800
integer height = 180
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "C:\Mukul\Button.PNG"
string disabledname = "C:\Mukul\Untitled.png"
alignment htextalign = left!
end type

type cb_2 from commandbutton within w_file_operations
integer x = 2834
integer y = 240
integer width = 407
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save into File"
end type

event clicked;integer li_FileNum
li_FileNum = FileOpen(docpath, &
      TextMode!, Write!, LockWrite!, Append!)
FileWriteEx(li_FileNum, mle_1.text)


li_FileNum = FileCopy (docpath , &
   "C:\Mukul\abc.txt", FALSE)
end event

type mle_1 from multilineedit within w_file_operations
integer x = 155
integer y = 240
integer width = 2665
integer height = 828
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_file_operations
integer x = 2715
integer y = 32
integer width = 137
integer height = 108
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "..."
end type

event clicked;long li_rtn, li_FileNum

string ls_Emp_Input
long ll_FLength

li_rtn = GetFileOpenName("Select File", &
   docpath, docname[], "DOC", &
   + "All Files (*.*), *.*", &
   ".\", 18)
	

sle_1.text = docpath
	
li_FileNum = FileOpen(docpath, &
      StreamMode!, Read!, LockRead!, Append!)
	

ll_FLength = FileLength64(docpath)

FileSeek64(li_FileNum, 100, FromBeginning!)

IF ll_FLength < 32767 THEN
      FileRead(li_FileNum, ls_Emp_Input)
END IF

mle_1.text = ls_Emp_Input

fileclose(li_FileNum)

end event

type sle_1 from singlelineedit within w_file_operations
integer x = 142
integer y = 40
integer width = 2587
integer height = 92
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

