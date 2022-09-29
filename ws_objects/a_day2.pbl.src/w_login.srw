$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type st_2 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
type sle_pass from singlelineedit within w_login
end type
type sle_user from singlelineedit within w_login
end type
type cb_cancel from commandbutton within w_login
end type
type cb_login from commandbutton within w_login
end type
end forward

shared variables

end variables

global type w_login from window
integer width = 1934
integer height = 860
boolean titlebar = true
string title = "w_login"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event myevent ( )
st_2 st_2
st_1 st_1
sle_pass sle_pass
sle_user sle_user
cb_cancel cb_cancel
cb_login cb_login
end type
global w_login w_login

type variables
private integer i;
protected integer ij;
end variables

event myevent();messagebox('','myevent')
end event

on w_login.create
this.st_2=create st_2
this.st_1=create st_1
this.sle_pass=create sle_pass
this.sle_user=create sle_user
this.cb_cancel=create cb_cancel
this.cb_login=create cb_login
this.Control[]={this.st_2,&
this.st_1,&
this.sle_pass,&
this.sle_user,&
this.cb_cancel,&
this.cb_login}
end on

on w_login.destroy
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_pass)
destroy(this.sle_user)
destroy(this.cb_cancel)
destroy(this.cb_login)
end on

type st_2 from statictext within w_login
integer x = 183
integer y = 264
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

type st_1 from statictext within w_login
integer x = 183
integer y = 164
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

type sle_pass from singlelineedit within w_login
integer x = 654
integer y = 264
integer width = 631
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

type sle_user from singlelineedit within w_login
integer x = 654
integer y = 144
integer width = 631
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

type cb_cancel from commandbutton within w_login
event myevent ( )
integer x = 878
integer y = 508
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
end type

event clicked;messagebox('','hello')
end event

type cb_login from commandbutton within w_login
integer x = 288
integer y = 504
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Login"
end type

event clicked; integer is_exists;

select count(*) into :is_exists
from dbo.login
where ename = :sle_user.text and pass = : sle_pass.text;


user =sle_user.text;

if is_exists = 1 then
	open(w_main);
	close(Parent);
end if



end event

