$PBExportHeader$nvo_standard.sru
forward
global type nvo_standard from transaction
end type
end forward

global type nvo_standard from transaction
end type
global nvo_standard nvo_standard

type variables
int i
end variables
forward prototypes
public function integer add (integer a, integer b)
end prototypes

public function integer add (integer a, integer b);return a + b;
end function

on nvo_standard.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nvo_standard.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

