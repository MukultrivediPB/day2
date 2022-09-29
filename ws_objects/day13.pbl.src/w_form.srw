$PBExportHeader$w_form.srw
forward
global type w_form from window
end type
type lb_1 from listbox within w_form
end type
type st_7 from statictext within w_form
end type
type cb_1 from commandbutton within w_form
end type
type ddlb_dub from dropdownlistbox within w_form
end type
type st_6 from statictext within w_form
end type
type dp_dob from datepicker within w_form
end type
type st_5 from statictext within w_form
end type
type cbx_us from checkbox within w_form
end type
type cbx_china from checkbox within w_form
end type
type rb_2 from radiobutton within w_form
end type
type cbx_ind from checkbox within w_form
end type
type rb_1 from radiobutton within w_form
end type
type sle_phone from singlelineedit within w_form
end type
type sle_city from singlelineedit within w_form
end type
type sle_add from singlelineedit within w_form
end type
type sle_name from singlelineedit within w_form
end type
type st_4 from statictext within w_form
end type
type st_3 from statictext within w_form
end type
type st_2 from statictext within w_form
end type
type st_1 from statictext within w_form
end type
type r_1 from rectangle within w_form
end type
end forward

global type w_form from window
integer width = 2473
integer height = 1640
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
lb_1 lb_1
st_7 st_7
cb_1 cb_1
ddlb_dub ddlb_dub
st_6 st_6
dp_dob dp_dob
st_5 st_5
cbx_us cbx_us
cbx_china cbx_china
rb_2 rb_2
cbx_ind cbx_ind
rb_1 rb_1
sle_phone sle_phone
sle_city sle_city
sle_add sle_add
sle_name sle_name
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
r_1 r_1
end type
global w_form w_form

on w_form.create
this.lb_1=create lb_1
this.st_7=create st_7
this.cb_1=create cb_1
this.ddlb_dub=create ddlb_dub
this.st_6=create st_6
this.dp_dob=create dp_dob
this.st_5=create st_5
this.cbx_us=create cbx_us
this.cbx_china=create cbx_china
this.rb_2=create rb_2
this.cbx_ind=create cbx_ind
this.rb_1=create rb_1
this.sle_phone=create sle_phone
this.sle_city=create sle_city
this.sle_add=create sle_add
this.sle_name=create sle_name
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.r_1=create r_1
this.Control[]={this.lb_1,&
this.st_7,&
this.cb_1,&
this.ddlb_dub,&
this.st_6,&
this.dp_dob,&
this.st_5,&
this.cbx_us,&
this.cbx_china,&
this.rb_2,&
this.cbx_ind,&
this.rb_1,&
this.sle_phone,&
this.sle_city,&
this.sle_add,&
this.sle_name,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_1,&
this.r_1}
end on

on w_form.destroy
destroy(this.lb_1)
destroy(this.st_7)
destroy(this.cb_1)
destroy(this.ddlb_dub)
destroy(this.st_6)
destroy(this.dp_dob)
destroy(this.st_5)
destroy(this.cbx_us)
destroy(this.cbx_china)
destroy(this.rb_2)
destroy(this.cbx_ind)
destroy(this.rb_1)
destroy(this.sle_phone)
destroy(this.sle_city)
destroy(this.sle_add)
destroy(this.sle_name)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.r_1)
end on

type lb_1 from listbox within w_form
integer x = 1833
integer y = 832
integer width = 480
integer height = 400
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"physics","Maths","Chemistry"}
borderstyle borderstyle = stylelowered!
end type

type st_7 from statictext within w_form
integer x = 1303
integer y = 380
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
string text = "Subject"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_form
integer x = 370
integer y = 1132
integer width = 466
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Submit"
end type

event clicked;String l_name,l_add,l_city,l_phone,l_staying,l_dob,l_subjects,l_gender
date d
time t


int i

l_name = sle_name.text
l_add = sle_add.text
l_city = sle_city.text
l_phone = sle_phone.text

if rb_1.checked = true and rb_2.checked = false then
	l_gender = 'F'
else
	l_gender = 'M'
end if

If cbx_us.checked = true then
	l_staying = 'US'
end if
if cbx_ind.checked = true then
	l_staying = l_staying + 'IND'
end if
if cbx_china.checked = true then
	l_staying = l_staying + 'CHINA'
end if

if cbx_us.checked =  False and cbx_ind.checked = false and cbx_china.checked = false then
	Messagebox('',l_staying)
END IF
	
i = dp_dob.GetValue(d,t)

l_dob = string(d)

//l_subjects = ddlb_dub.text(1)
l_subjects = lb_1.SelectedItem ( )
messagebox('',l_subjects)

end event

type ddlb_dub from dropdownlistbox within w_form
integer x = 1783
integer y = 364
integer width = 480
integer height = 400
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Physics","Maths","Chemistry"}
borderstyle borderstyle = stylelowered!
end type

type st_6 from statictext within w_form
integer x = 1303
integer y = 204
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
string text = "DOB"
boolean focusrectangle = false
end type

type dp_dob from datepicker within w_form
integer x = 1723
integer y = 180
integer width = 686
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-09-23"), Time("19:34:04.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type st_5 from statictext within w_form
integer x = 23
integer y = 952
integer width = 288
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Staying in"
boolean focusrectangle = false
end type

type cbx_us from checkbox within w_form
integer x = 393
integer y = 944
integer width = 256
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "US"
end type

type cbx_china from checkbox within w_form
integer x = 987
integer y = 932
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
string text = "China"
end type

type rb_2 from radiobutton within w_form
integer x = 754
integer y = 780
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Male"
end type

type cbx_ind from checkbox within w_form
integer x = 709
integer y = 936
integer width = 512
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "India"
end type

type rb_1 from radiobutton within w_form
integer x = 242
integer y = 772
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Female"
end type

type sle_phone from singlelineedit within w_form
integer x = 768
integer y = 624
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

type sle_city from singlelineedit within w_form
integer x = 768
integer y = 456
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

type sle_add from singlelineedit within w_form
integer x = 768
integer y = 296
integer width = 402
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

type sle_name from singlelineedit within w_form
integer x = 768
integer y = 172
integer width = 402
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

type st_4 from statictext within w_form
integer x = 247
integer y = 632
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
string text = "Phone"
boolean focusrectangle = false
end type

type st_3 from statictext within w_form
integer x = 247
integer y = 464
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
string text = "City"
boolean focusrectangle = false
end type

type st_2 from statictext within w_form
integer x = 247
integer y = 292
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
string text = "Address"
boolean focusrectangle = false
end type

type st_1 from statictext within w_form
integer x = 247
integer y = 144
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
string text = "Name"
boolean focusrectangle = false
end type

type r_1 from rectangle within w_form
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer x = 325
integer y = 904
integer width = 1120
integer height = 136
end type

