$PBExportHeader$w_files.srw
forward
global type w_files from window
end type
type mc_1 from monthcalendar within w_files
end type
type cb_7 from commandbutton within w_files
end type
type cb_6 from commandbutton within w_files
end type
type cb_5 from commandbutton within w_files
end type
type cb_4 from commandbutton within w_files
end type
type rte_1 from richtextedit within w_files
end type
type cb_3 from commandbutton within w_files
end type
type dp_1 from datepicker within w_files
end type
type pb_1 from picturebutton within w_files
end type
type cb_2 from commandbutton within w_files
end type
type mle_1 from multilineedit within w_files
end type
type cb_1 from commandbutton within w_files
end type
type sle_1 from singlelineedit within w_files
end type
end forward

global type w_files from window
integer width = 3493
integer height = 2000
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mc_1 mc_1
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
rte_1 rte_1
cb_3 cb_3
dp_1 dp_1
pb_1 pb_1
cb_2 cb_2
mle_1 mle_1
cb_1 cb_1
sle_1 sle_1
end type
global w_files w_files

type variables
string docpath, docname[]
long i, li_cnt, li_rtn, li_filenum, ll_FLength
String ls_Emp_Input
end variables
on w_files.create
this.mc_1=create mc_1
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.rte_1=create rte_1
this.cb_3=create cb_3
this.dp_1=create dp_1
this.pb_1=create pb_1
this.cb_2=create cb_2
this.mle_1=create mle_1
this.cb_1=create cb_1
this.sle_1=create sle_1
this.Control[]={this.mc_1,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.rte_1,&
this.cb_3,&
this.dp_1,&
this.pb_1,&
this.cb_2,&
this.mle_1,&
this.cb_1,&
this.sle_1}
end on

on w_files.destroy
destroy(this.mc_1)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.rte_1)
destroy(this.cb_3)
destroy(this.dp_1)
destroy(this.pb_1)
destroy(this.cb_2)
destroy(this.mle_1)
destroy(this.cb_1)
destroy(this.sle_1)
end on

type mc_1 from monthcalendar within w_files
integer x = 2437
integer y = 1128
integer width = 1006
integer height = 760
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long titletextcolor = 134217742
long trailingtextcolor = 134217745
long monthbackcolor = 1073741824
long titlebackcolor = 134217741
integer maxselectcount = 31
integer scrollrate = 1
boolean todaysection = true
boolean todaycircle = true
boolean border = true
borderstyle borderstyle = stylelowered!
end type

type cb_7 from commandbutton within w_files
integer x = 1787
integer y = 1620
integer width = 402
integer height = 112
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Bold"
end type

type cb_6 from commandbutton within w_files
integer x = 1975
integer y = 1284
integer width = 402
integer height = 112
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "up"
end type

event clicked;rte_1.Scroll(4)

integer li_return
Date seldate

li_return = mc_1.GetSelectedDate(seldate)

messagebox('',String(seldate))
end event

type cb_5 from commandbutton within w_files
integer x = 1445
integer y = 1384
integer width = 402
integer height = 112
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Red"
end type

event clicked;rte_1.SetTextColor(RGB(255,0,0))
end event

type cb_4 from commandbutton within w_files
integer x = 1376
integer y = 1156
integer width = 402
integer height = 112
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save"
end type

event clicked;integer li_rtnn
li_rtnn = rte_1.SaveDocument("c:\test.rtf", &
FileTypeRichText!)
end event

type rte_1 from richtextedit within w_files
integer x = 183
integer y = 1124
integer width = 1166
integer height = 652
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
borderstyle borderstyle = stylelowered!
end type

type cb_3 from commandbutton within w_files
integer x = 2523
integer y = 996
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;string ls_text
ls_text = dp_1.GetText()

messagebox('',ls_text)
end event

type dp_1 from datepicker within w_files
integer x = 2473
integer y = 860
integer width = 686
integer height = 100
integer taborder = 60
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-09-23"), Time("15:43:38.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type pb_1 from picturebutton within w_files
integer x = 2386
integer y = 464
integer width = 690
integer height = 236
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
string picturename = "C:\Mukul\Untitled.png"
alignment htextalign = left!
end type

type cb_2 from commandbutton within w_files
integer x = 2377
integer y = 196
integer width = 425
integer height = 244
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Save File"
end type

event clicked;li_FileNum = FileOpen('c:\mukul\mukul.doc', &
      TextMode!, Write!, LockWrite!, Replace!)
FileWriteEx(li_FileNum, mle_1.text)
fileclose(li_FileNum)

li_FileNum = Filecopy ("c:\mukul\mukul.doc", &
   "c:\mukul1231.doc" )
end event

type mle_1 from multilineedit within w_files
integer x = 114
integer y = 192
integer width = 2263
integer height = 812
integer taborder = 30
integer textsize = -10
integer weight = 700
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

type cb_1 from commandbutton within w_files
integer x = 2368
integer y = 64
integer width = 151
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


li_rtn = GetFileOpenName("Select File", &
   docpath, docname[], "DOC", &
   + "All Files (*.*), *.*", &
   ".\fonts", 18)


sle_1.text = docpath

li_FileNum = FileOpen(docpath, &
   StreamMode!, Read!, LockWrite!, Replace!)

 
ll_FLength = FileLength64(docpath)

FileSeek64(li_FileNum, 14, FromBeginning!)

IF ll_FLength < 32767 THEN
      FileRead(li_FileNum, ls_Emp_Input)
END IF
fileclose (li_FileNum)

mle_1.text = ls_Emp_Input


end event

type sle_1 from singlelineedit within w_files
integer x = 114
integer y = 64
integer width = 2254
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

