$PBExportHeader$w_insert_emp_details.srw
forward
global type w_insert_emp_details from window
end type
type cb_5 from commandbutton within w_insert_emp_details
end type
type cb_4 from commandbutton within w_insert_emp_details
end type
type cb_3 from commandbutton within w_insert_emp_details
end type
type cb_2 from commandbutton within w_insert_emp_details
end type
type cb_1 from commandbutton within w_insert_emp_details
end type
type dw_1 from datawindow within w_insert_emp_details
end type
type st_4 from statictext within w_insert_emp_details
end type
type st_3 from statictext within w_insert_emp_details
end type
type st_2 from statictext within w_insert_emp_details
end type
type st_1 from statictext within w_insert_emp_details
end type
type sle_phone from singlelineedit within w_insert_emp_details
end type
type sle_fname from singlelineedit within w_insert_emp_details
end type
type sle_lname from singlelineedit within w_insert_emp_details
end type
type sle_id from singlelineedit within w_insert_emp_details
end type
end forward

global type w_insert_emp_details from window
integer width = 2907
integer height = 1580
boolean titlebar = true
string title = "employee"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
sle_phone sle_phone
sle_fname sle_fname
sle_lname sle_lname
sle_id sle_id
end type
global w_insert_emp_details w_insert_emp_details

on w_insert_emp_details.create
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.sle_phone=create sle_phone
this.sle_fname=create sle_fname
this.sle_lname=create sle_lname
this.sle_id=create sle_id
this.Control[]={this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_1,&
this.sle_phone,&
this.sle_fname,&
this.sle_lname,&
this.sle_id}
end on

on w_insert_emp_details.destroy
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_phone)
destroy(this.sle_fname)
destroy(this.sle_lname)
destroy(this.sle_id)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_5 from commandbutton within w_insert_emp_details
integer x = 2400
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modify"
end type

event clicked;string modstring
//str = "emp_id.color=" + "33554432~t if ( emp_id = ~~'101~~' , 255,0)"

modstring = "emp_id.Color='16777215 ~tIf(emp_id=~~'101~~',255,16777215)'"



//str = "emp_id.color=  if ( emp_id = '101' , 255,0)"
dw_1.Modify(modstring)


dw_1.Modify("emp_id_t.Text='EMP ID'")


end event

type cb_4 from commandbutton within w_insert_emp_details
integer x = 2359
integer y = 916
integer width = 521
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update DW Query"
end type

event clicked;string rc, mod_string,original_select,where_clause

	original_select = dw_1.Describe("DataWindow.Table.Select")

	where_clause =  ' where emp_id = 102'

	mod_string = "DataWindow.Table.Select='" & 
	+ original_select + where_clause + "'"

	rc = dw_1.Modify(mod_string)
	IF rc = "" THEN 
		dw_1.Retrieve( )
	ELSE 
		MessageBox("Status", "Modify Failed" + rc)
	END IF

original_select = dw_1.Describe("DataWindow.Table.Select")
messagebox('',original_select)
end event

type cb_3 from commandbutton within w_insert_emp_details
integer x = 2405
integer y = 700
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Describe"
end type

event clicked;string s
s = dw_1.Describe("emp_id.updatewhereclause")

messagebox('text',s)


s = dw_1.Describe("DataWindow.Table.Select")
messagebox('',s)


s = dw_1.Modify("emp_id.Color=65380")
 s= s
 
 
 dw_1.Describe( &
"Evaluate('If(emp_id = '101', 255, 0)', 3)")

end event

type cb_2 from commandbutton within w_insert_emp_details
integer x = 2391
integer y = 540
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Clear Filter"
end type

event clicked;dw_1.setfilter('');
dw_1.filter()
end event

type cb_1 from commandbutton within w_insert_emp_details
integer x = 2336
integer y = 156
integer width = 398
integer height = 120
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Submit"
end type

event clicked;int l_row

l_row = dw_1.insertrow(0)//new!
dw_1.scrolltorow(l_row)

dw_1.setitem(l_row,'emp_id',sle_id.text)
dw_1.setitem(l_row,'emp_fname',sle_fname.text)
dw_1.setitem(l_row,'emp_lname',sle_lname.text)
dw_1.setitem(l_row,'emp_phone',Integer(sle_phone.text))
//NewModified

dw_1.update()

commit using sqlca;

sle_id.text = ' '
sle_fname.text =' '
sle_lname.text = ' '
sle_phone.text=' '



end event

type dw_1 from datawindow within w_insert_emp_details
integer x = 297
integer y = 524
integer width = 1957
integer height = 860
integer taborder = 20
string title = "none"
string dataobject = "dw_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;string ls_name
	 
	IF dwo.Type = "text" THEN
	      dwo.Color = RGB(255,0,0)
	 
	      ls_name = dwo.Name
	      ls_name = Left(ls_name, Len(ls_name) - 2)
	 
	      This.SetSort(ls_name + ", A")
	      This.Sort()
	END IF

end event

event doubleclicked;String filter 
if dwo.coltype =  'char(10)' then
	filter = string(dwo.name) + " = '"+ dw_1.getitemstring(row,string(dwo.name))+"'"
else
	filter = string(dwo.name) + " = "+ string(dw_1.getitemnumber(row,string(dwo.name)))
end if	


dw_1.setfilter(filter)
dw_1.filter()


end event

type st_4 from statictext within w_insert_emp_details
integer x = 1243
integer y = 160
integer width = 430
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Emp First Name"
boolean focusrectangle = false
end type

type st_3 from statictext within w_insert_emp_details
integer x = 1243
integer y = 312
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
string text = "Emp Phone"
boolean focusrectangle = false
end type

type st_2 from statictext within w_insert_emp_details
integer x = 279
integer y = 316
integer width = 421
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Emp Last Name"
boolean focusrectangle = false
end type

type st_1 from statictext within w_insert_emp_details
integer x = 279
integer y = 148
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
string text = "Emp Id"
boolean focusrectangle = false
end type

type sle_phone from singlelineedit within w_insert_emp_details
integer x = 1810
integer y = 276
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

type sle_fname from singlelineedit within w_insert_emp_details
integer x = 1810
integer y = 128
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

type sle_lname from singlelineedit within w_insert_emp_details
integer x = 713
integer y = 280
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

type sle_id from singlelineedit within w_insert_emp_details
integer x = 713
integer y = 128
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

