$PBExportHeader$colrpick.sra
$PBExportComments$Generated Application Object
forward
global type colrpick from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type colrpick from application
string appname = "colrpick"
end type
global colrpick colrpick

on colrpick.create
appname="colrpick"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on colrpick.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_picker_demo)
end event
