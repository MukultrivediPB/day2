$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type cb_2 from commandbutton within w_login
end type
type cb_1 from commandbutton within w_login
end type
type sle_pass from singlelineedit within w_login
end type
type sle_user from singlelineedit within w_login
end type
type st_pass from statictext within w_login
end type
type st_user from statictext within w_login
end type
end forward

global type w_login from window
integer width = 1358
integer height = 676
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
sle_pass sle_pass
sle_user sle_user
st_pass st_pass
st_user st_user
end type
global w_login w_login

on w_login.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_pass=create sle_pass
this.sle_user=create sle_user
this.st_pass=create st_pass
this.st_user=create st_user
this.Control[]={this.cb_2,&
this.cb_1,&
this.sle_pass,&
this.sle_user,&
this.st_pass,&
this.st_user}
end on

on w_login.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_pass)
destroy(this.sle_user)
destroy(this.st_pass)
destroy(this.st_user)
end on

type cb_2 from commandbutton within w_login
integer x = 635
integer y = 420
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within w_login
integer x = 192
integer y = 420
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Login"
end type

event clicked;integer is_exists

select count(*) into :is_exists
from dbo.login
where ename =:sle_user.text and pass =:sle_pass.text;

messagebox('Information', sqlca.sqlerrtext)
g_user = sle_user.text

if is_exists = 1 then
	
	
	messagebox('Information', sqlca.sqlerrtext)
	open(w_main)
	close(parent)//closing the window
else
	messagebox('Information', 'Try Agan')
	
end if;
end event

type sle_pass from singlelineedit within w_login
integer x = 608
integer y = 204
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

type sle_user from singlelineedit within w_login
integer x = 608
integer y = 72
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

type st_pass from statictext within w_login
integer x = 110
integer y = 192
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
string text = "Password"
boolean focusrectangle = false
end type

type st_user from statictext within w_login
integer x = 119
integer y = 72
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
string text = "User Name"
boolean focusrectangle = false
end type

