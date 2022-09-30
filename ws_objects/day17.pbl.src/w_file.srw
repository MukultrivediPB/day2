$PBExportHeader$w_file.srw
forward
global type w_file from window
end type
type st_2 from statictext within w_file
end type
type hpb_1 from hprogressbar within w_file
end type
type st_1 from statictext within w_file
end type
type cb_2 from commandbutton within w_file
end type
type cb_1 from commandbutton within w_file
end type
type sle_1 from singlelineedit within w_file
end type
type mle_1 from multilineedit within w_file
end type
end forward

global type w_file from window
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
st_2 st_2
hpb_1 hpb_1
st_1 st_1
cb_2 cb_2
cb_1 cb_1
sle_1 sle_1
mle_1 mle_1
end type
global w_file w_file

type variables
String docpath, docname[]
end variables

on w_file.create
this.st_2=create st_2
this.hpb_1=create hpb_1
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_1=create sle_1
this.mle_1=create mle_1
this.Control[]={this.st_2,&
this.hpb_1,&
this.st_1,&
this.cb_2,&
this.cb_1,&
this.sle_1,&
this.mle_1}
end on

on w_file.destroy
destroy(this.st_2)
destroy(this.hpb_1)
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_1)
destroy(this.mle_1)
end on

type st_2 from statictext within w_file
integer x = 1746
integer y = 884
integer width = 1193
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
boolean focusrectangle = false
end type

type hpb_1 from hprogressbar within w_file
integer x = 1733
integer y = 960
integer width = 1463
integer height = 100
unsignedinteger maxposition = 100
integer setstep = 1
end type

type st_1 from statictext within w_file
integer x = 1723
integer y = 240
integer width = 357
integer height = 92
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Line no:"
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_file
integer x = 2725
integer y = 372
integer width = 457
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Read File"
end type

event clicked;integer li_FileNum, li_counter
li_FileNum = FileOpen(docpath,  LineMode!, Read!, LockRead!, Replace!)
String ls_listout

li_counter = 1  
DO While FileReadEx(li_FileNum,ls_listout) <> -100 
	mle_1.text = mle_1.text + ls_listout 
	st_1.text = 'Line No:' + String(li_counter)
	li_counter = li_counter + 1
	//sleep(1)
	hpb_1.position = li_counter
	st_2.text = 'In Progress ' + String(li_counter) + '%'
LOOP 

st_2.text = '100% Completed.'
hpb_1.position = 100

FileClose(li_FileNum)

end event

type cb_1 from commandbutton within w_file
integer x = 3109
integer y = 112
integer width = 133
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
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
   ".\fonts", 18)


sle_1.text = docpath
end event

type sle_1 from singlelineedit within w_file
integer x = 1719
integer y = 120
integer width = 1390
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_file
integer x = 142
integer y = 104
integer width = 1536
integer height = 1184
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

