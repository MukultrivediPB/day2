$PBExportHeader$w_tree.srw
forward
global type w_tree from window
end type
type pb_1 from picturebutton within w_tree
end type
type st_1 from statictext within w_tree
end type
type htb_1 from htrackbar within w_tree
end type
type cb_1 from commandbutton within w_tree
end type
type hpb_1 from hprogressbar within w_tree
end type
type dw_1 from datawindow within w_tree
end type
type tv_1 from treeview within w_tree
end type
end forward

global type w_tree from window
integer width = 4841
integer height = 1672
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
st_1 st_1
htb_1 htb_1
cb_1 cb_1
hpb_1 hpb_1
dw_1 dw_1
tv_1 tv_1
end type
global w_tree w_tree

on w_tree.create
this.pb_1=create pb_1
this.st_1=create st_1
this.htb_1=create htb_1
this.cb_1=create cb_1
this.hpb_1=create hpb_1
this.dw_1=create dw_1
this.tv_1=create tv_1
this.Control[]={this.pb_1,&
this.st_1,&
this.htb_1,&
this.cb_1,&
this.hpb_1,&
this.dw_1,&
this.tv_1}
end on

on w_tree.destroy
destroy(this.pb_1)
destroy(this.st_1)
destroy(this.htb_1)
destroy(this.cb_1)
destroy(this.hpb_1)
destroy(this.dw_1)
destroy(this.tv_1)
end on

event open;int menu1, menu2

menu1 = tv_1.insertitemlast(0,'View',1)
menu2 = tv_1.insertitemlast(0,'Edit',2)

tv_1.insertitemlast(menu1,'Emp Details',2)
tv_1.insertitemlast(menu1,'Department Details',2)


tv_1.insertitemlast(menu2,'Emp Details',2)
tv_1.insertitemlast(menu2,'Department Details',2)

/*
long  ll_lev1, ll_lev2, ll_lev3, ll_lev4
int   index
 
tv_list.PictureHeight = 32
tv_list.PictureWidth = 32
 
ll_lev1 = tv_list.InsertItemLast(0,"Composers",1)
ll_lev2 = tv_list.InsertItemLast(ll_lev1,     "Beethoven",2)
ll_lev3 = tv_list.InsertItemLast(ll_lev2,     "Symphonies",3)

 
tv_list.ExpandItem(ll_lev3)
tv_list.ExpandItem(ll_lev4)
*/

pb_1.picturename = 'button.png'
end event

type pb_1 from picturebutton within w_tree
integer x = 3026
integer y = 68
integer width = 2761
integer height = 1372
integer taborder = 30
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

type st_1 from statictext within w_tree
integer x = 1545
integer y = 1288
integer width = 727
integer height = 208
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
boolean focusrectangle = false
end type

type htb_1 from htrackbar within w_tree
integer x = 2501
integer y = 1296
integer width = 622
integer height = 136
integer maxposition = 100
integer tickfrequency = 10
end type

event moved;st_1.textsize = scrollpos
tv_1.textsize=scrollpos
end event

type cb_1 from commandbutton within w_tree
integer x = 937
integer y = 1224
integer width = 480
integer height = 72
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;int n

for n =1 to 10
	sleep(2)
	hpb_1.position = hpb_1.position + 10
next


end event

type hpb_1 from hprogressbar within w_tree
integer x = 709
integer y = 1340
integer width = 622
integer height = 68
unsignedinteger maxposition = 100
integer setstep = 10
boolean smoothscroll = true
end type

type dw_1 from datawindow within w_tree
integer x = 955
integer y = 140
integer width = 2043
integer height = 1044
integer taborder = 20
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tv_1 from treeview within w_tree
integer x = 128
integer y = 108
integer width = 635
integer height = 1060
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 134217751
borderstyle borderstyle = stylelowered!
boolean trackselect = true
string picturename[] = {"AddWatch!","AddWatch2!"}
long picturemaskcolor = 536870912
string statepicturename[] = {"AlignBottom1!"}
long statepicturemaskcolor = 536870912
end type

event clicked;treeviewitem tvitem
tv_1.getitem(handle,tvitem)

if tvitem.label = 'Emp Details' then
	dw_1.dataobject='dw_emp'
end if
end event

event key;IF keyflags = 2 THEN
   IF key = Keyv! THEN
      messagebox('',string(key))
   END IF
END IF
end event

