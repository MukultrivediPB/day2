$PBExportHeader$w_filter.srw
forward
global type w_filter from window
end type
type cb_3 from commandbutton within w_filter
end type
type cb_2 from commandbutton within w_filter
end type
type cb_1 from commandbutton within w_filter
end type
type dw_3 from datawindow within w_filter
end type
type dw_2 from datawindow within w_filter
end type
type dw_1 from datawindow within w_filter
end type
end forward

global type w_filter from window
integer width = 4850
integer height = 1876
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
cb_2 cb_2
cb_1 cb_1
dw_3 dw_3
dw_2 dw_2
dw_1 dw_1
end type
global w_filter w_filter

on w_filter.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_3=create dw_3
this.dw_2=create dw_2
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_3,&
this.dw_2,&
this.dw_1}
end on

on w_filter.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_3)
destroy(this.dw_2)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type cb_3 from commandbutton within w_filter
integer x = 1646
integer y = 1424
integer width = 763
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Validation using Buffers"
end type

event clicked;dw_1.setfilter('salary <= 40000')
dw_1.filter()

dw_1.RowsCopy(1,  dw_1.filteredCount(), FIlter!, dw_2, 1, Primary!)

dw_1.setfilter('')
dw_1.filter()

dw_2.setfilter("gender = 'M'")
dw_2.filter()

dw_2.RowsCopy(1,  dw_2.filteredCount(), FIlter!, dw_3, 1, Primary!)

dw_2.setfilter('')
dw_2.filter()
end event

type cb_2 from commandbutton within w_filter
integer x = 768
integer y = 1424
integer width = 457
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Validation"
end type

event clicked;
Int li_row
long ll_salary
string ls_gender


for li_row = 1 to dw_1.rowcount()
	
	ll_salary = dw_1.getitemnumber(li_row,'salary')
	
	if ll_salary > 40000 Then
		dw_1.RowsCopy(li_row,  li_row, Primary!, dw_2, 1, Primary!)
	End If
	
	ls_gender = dw_1.getitemstring(li_row,'gender')
	
		if ll_salary > 40000  and ls_gender = 'F' Then
			dw_1.RowsCopy(li_row,  li_row, Primary!, dw_3, 1, Primary!)
	End If
	
next


end event

type cb_1 from commandbutton within w_filter
integer x = 133
integer y = 1420
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Refresh"
end type

event clicked;dw_1.settransobject(sqlca);
dw_1.retrieve()
end event

type dw_3 from datawindow within w_filter
integer x = 3241
integer y = 100
integer width = 1513
integer height = 1116
integer taborder = 20
string title = "none"
string dataobject = "d_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_filter
integer x = 1655
integer y = 104
integer width = 1513
integer height = 1116
integer taborder = 10
string title = "none"
string dataobject = "d_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_filter
integer x = 82
integer y = 104
integer width = 1513
integer height = 1116
integer taborder = 10
string title = "none"
string dataobject = "d_emp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

