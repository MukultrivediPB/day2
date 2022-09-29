$PBExportHeader$w_new.srw
forward
global type w_new from window
end type
type cb_2 from commandbutton within w_new
end type
type cb_1 from commandbutton within w_new
end type
type uo_1 from vo_template within w_new
end type
end forward

global type w_new from window
integer width = 3808
integer height = 1792
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event myevent ( )
cb_2 cb_2
cb_1 cb_1
uo_1 uo_1
end type
global w_new w_new

event myevent();messagebox('','myevent')
end event

on w_new.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.uo_1=create uo_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.uo_1}
end on

on w_new.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.uo_1)
end on

event open;uo_1.dw_1.dataobject='dw_location'
uo_1.dw_1.settransobject(sqlca);
uo_1.dw_1.retrieve()

end event

type cb_2 from commandbutton within w_new
integer x = 3387
integer y = 908
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

event clicked;//[powerscript]
Constant Long LWA_COLORKEY = 1, LWA_ALPHA = 2
Constant Long GWL_EXSTYLE = - 20
Constant Long WS_EX_LAYERED = 524288 //2^19
Long ll_Ret, ll_handle
 
// or-bitwise function
OleObject wsh
wsh = Create OleObject
wsh.ConnectToNewObject( "MSScriptControl.ScriptControl" )
wsh.language = "vbscript"
 
ll_handle = Handle (This) // handle of the window
ll_Ret = GetWindowLong(ll_handle, GWL_EXSTYLE)
ll_Ret = wsh.Eval(String(ll_Ret) + " or " + String(WS_EX_LAYERED))
SetWindowLong (ll_handle, GWL_EXSTYLE, ll_Ret)
 
// Set the opacity of the layered window to 128 (transparent)
SetLayeredWindowAttributes (ll_handle, 0, Char(128),LWA_ALPHA)
 
// Set the opacity of the layered window to 255 (opaque)
// SetLayeredWindowAttributes (ll_handle, 0, char(255),LWA_ALPHA)
end event

type cb_1 from commandbutton within w_new
integer x = 3323
integer y = 620
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Multiply"
end type

event clicked;//triggerevent('myevent')
Parent.TriggerEvent("myevent")
parent.postevent('myevent')
str_emp str
str.empid = '101'
str.empname='Mukl'
//IF ll > 0 THEN
       uo_1.dw_1.Saveas("C:\Mukul\export.xls",Excel!,TRUE)
  //  END IF
openwithparm(w_location,str)
parent.postevent('myevent')

end event

type uo_1 from vo_template within w_new
integer x = 64
integer taborder = 10
end type

on uo_1.destroy
call vo_template::destroy
end on

