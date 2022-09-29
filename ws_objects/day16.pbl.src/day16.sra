$PBExportHeader$day16.sra
$PBExportComments$Generated Application Object
forward
global type day16 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type day16 from application
string appname = "day16"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 22.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "22.0.0.1716"
boolean manualsession = false
boolean unsupportedapierror = false
end type
global day16 day16

on day16.create
appname="day16"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on day16.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
// Profile PBDemo
SQLCA.DBMS = "ADO.Net"
SQLCA.LogPass = 'Welcome@1'
SQLCA.LogId = "sa"
SQLCA.AutoCommit = False
SQLCA.DBParm = "Namespace='System.Data.SqlClient',DataSource='POWERBUILDER',Database='PBDemoDB2022'"

connect using sqlca;
//open(w_othercontrols)
open(w_tree)
//open(w_richtext)
end event

