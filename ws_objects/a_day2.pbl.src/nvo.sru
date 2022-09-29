$PBExportHeader$nvo.sru
forward
global type nvo from nonvisualobject
end type
end forward

shared variables
 integer s_i;
end variables

global type nvo from nonvisualobject
end type
global nvo nvo

type variables
integer i_i
end variables

on nvo.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;s_i = s_i + 1;

messagebox('',string(s_i))
end event

