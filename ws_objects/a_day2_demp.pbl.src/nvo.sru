$PBExportHeader$nvo.sru
forward
global type nvo from nonvisualobject
end type
end forward

shared variables
integer i 
end variables
global type nvo from nonvisualobject
end type
global nvo nvo

on nvo.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;i = i + 1
messagebox('Shared Value for I', i)
end event

