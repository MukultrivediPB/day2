$PBExportHeader$w_tree.srw
forward
global type w_tree from window
end type
type pb_1 from picturebutton within w_tree
end type
type htb_1 from htrackbar within w_tree
end type
type dw_2 from datawindow within w_tree
end type
type cb_1 from commandbutton within w_tree
end type
type dw_1 from datawindow within w_tree
end type
type tv_1 from treeview within w_tree
end type
end forward

global type w_tree from window
integer width = 4137
integer height = 1832
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
htb_1 htb_1
dw_2 dw_2
cb_1 cb_1
dw_1 dw_1
tv_1 tv_1
end type
global w_tree w_tree

on w_tree.create
this.pb_1=create pb_1
this.htb_1=create htb_1
this.dw_2=create dw_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.tv_1=create tv_1
this.Control[]={this.pb_1,&
this.htb_1,&
this.dw_2,&
this.cb_1,&
this.dw_1,&
this.tv_1}
end on

on w_tree.destroy
destroy(this.pb_1)
destroy(this.htb_1)
destroy(this.dw_2)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.tv_1)
end on

event open;
Long menu1, menu2

menu1 = tv_1.InsertItemLast ( 0, 'Open', 1 )
menu2 = tv_1.InsertItemLast ( 0, 'Edit', 1 )


tv_1.InsertItemLast ( menu1, 'Emp', 2 )
tv_1.InsertItemLast ( menu1, 'Dept', 2 )


tv_1.InsertItemLast ( menu2, 'Emp', 3 )
tv_1.InsertItemLast ( menu2, 'Dept', 3 )

tv_1.PictureHeight = 32
tv_1.PictureWidth = 32

pb_1.picturename = 'button.png'


end event

type pb_1 from picturebutton within w_tree
integer x = 3365
integer y = 348
integer width = 402
integer height = 224
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
boolean originalsize = true
alignment htextalign = left!
end type

type htb_1 from htrackbar within w_tree
integer x = 1093
integer y = 1440
integer width = 1042
integer height = 144
integer maxposition = 100
integer tickfrequency = 10
end type

event moved;
tv_1.textsize =  scrollpos
dw_1.object.emp_fname.font.height = scrollpos

cb_1.height = scrollpos+100
cb_1.width = scrollpos +100
cb_1.textsize = scrollpos



dw_1.height = scrollpos+100
dw_1.width = scrollpos +100


end event

type dw_2 from datawindow within w_tree
integer x = 1038
integer y = 736
integer width = 2277
integer height = 636
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_tree
integer x = 3323
integer y = 120
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type dw_1 from datawindow within w_tree
integer x = 1042
integer y = 88
integer width = 2277
integer height = 636
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tv_1 from treeview within w_tree
integer x = 87
integer y = 72
integer width = 882
integer height = 1496
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string picturename[] = {"Custom081a!","Custom050!","C:\Mukul\Day2\button.png"}
long picturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

event clicked;treeviewitem tv

this.GetItem(handle, tv)
//MessageBox('before',tv.label)
if String(tv.label) = 'Emp' Then
	//sle_3.text = String (Long(sle_1.text) + Long(sle_2.text))
	dw_2.visible = false
	dw_1.dataobject = 'dw_emp'
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
else 
	dw_2.visible = true
End if

end event

event selectionchanged;if dw_1.modifiedcount() > 0 Then
	messagebox('warning', 'Please save data before moving to next item')
	return 1
end if
end event

event itemcollapsing;MessageBox('','ItemCollasping')
end event

event itemexpanding;MessageBox('','ItemExpending')
end event

