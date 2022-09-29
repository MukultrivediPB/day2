$PBExportHeader$w_first_child.srw
forward
global type w_first_child from w_first
end type
end forward

global type w_first_child from w_first
string title = "child"
end type
global w_first_child w_first_child

on w_first_child.create
call super::create
end on

on w_first_child.destroy
call super::destroy
end on

event open;call super::open;i = 200
end event

type cb_11 from w_first`cb_11 within w_first_child
end type

type cb_10 from w_first`cb_10 within w_first_child
end type

type cb_9 from w_first`cb_9 within w_first_child
end type

type cb_8 from w_first`cb_8 within w_first_child
end type

type cb_7 from w_first`cb_7 within w_first_child
end type

type cb_6 from w_first`cb_6 within w_first_child
end type

type dw_2 from w_first`dw_2 within w_first_child
end type

type cb_5 from w_first`cb_5 within w_first_child
end type

type cb_3 from w_first`cb_3 within w_first_child
end type

type cb_4 from w_first`cb_4 within w_first_child
end type

type cb_2 from w_first`cb_2 within w_first_child
end type

type dw_1 from w_first`dw_1 within w_first_child
end type

type cb_1 from w_first`cb_1 within w_first_child
end type

event cb_1::clicked;call super::clicked;Messagebox('w_first_child','I am Child')
end event

