$PBExportHeader$w_tree.srw
forward
global type w_tree from window
end type
type tv_1 from treeview within w_tree
end type
end forward

global type w_tree from window
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
tv_1 tv_1
end type
global w_tree w_tree

on w_tree.create
this.tv_1=create tv_1
this.Control[]={this.tv_1}
end on

on w_tree.destroy
destroy(this.tv_1)
end on

type tv_1 from treeview within w_tree
integer x = 119
integer y = 96
integer width = 558
integer height = 880
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string picturename[] = {"AddWatch!","AlignAllheightsSame!"}
long picturemaskcolor = 536870912
string statepicturename[] = {"AddWatch!","AlignBottom1!"}
long statepicturemaskcolor = 536870912
end type

