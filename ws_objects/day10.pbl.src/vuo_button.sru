$PBExportHeader$vuo_button.sru
forward
global type vuo_button from commandbutton
end type
end forward

global type vuo_button from commandbutton
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
string text = "Refresh"
end type
global vuo_button vuo_button

on vuo_button.create
end on

on vuo_button.destroy
end on

event clicked;//dw_1.settransobject(sqlca);
//dw_1.retrieve()
end event

