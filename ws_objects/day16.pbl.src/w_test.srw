$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type vtb_1 from vtrackbar within w_test
end type
type htb_1 from htrackbar within w_test
end type
end forward

global type w_test from window
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
vtb_1 vtb_1
htb_1 htb_1
end type
global w_test w_test

on w_test.create
this.vtb_1=create vtb_1
this.htb_1=create htb_1
this.Control[]={this.vtb_1,&
this.htb_1}
end on

on w_test.destroy
destroy(this.vtb_1)
destroy(this.htb_1)
end on

type vtb_1 from vtrackbar within w_test
integer x = 2226
integer y = 240
integer width = 155
integer height = 544
integer maxposition = 100
integer tickfrequency = 10
end type

event moved;messagebox('','')
end event

type htb_1 from htrackbar within w_test
integer x = 279
integer y = 192
integer width = 1609
integer height = 172
integer maxposition = 100
integer tickfrequency = 10
htickmarks tickmarks = hticksonboth!
end type

event moved;messagebox('','')
end event

