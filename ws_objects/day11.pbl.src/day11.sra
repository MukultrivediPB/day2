$PBExportHeader$day11.sra
$PBExportComments$Generated Application Object
forward
global type day11 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
Transaction U_SQLCA
end variables

global type day11 from application
string appname = "day11"
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
global day11 day11

type variables

end variables

on day11.create
appname="day11"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on day11.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
 U_SQLCA = CReate Transaction

// Profile PBDemo
U_SQLCA.DBMS = "ADO.Net"
U_SQLCA.LogPass = 'Welcome@1'
U_SQLCA.LogId = "sa"
U_SQLCA.AutoCommit = False
U_SQLCA.DBParm = "Namespace='System.Data.SqlClient',DataSource='POWERBUILDER',Database='PBDemoDB2022'"

connect using U_SQLCA;
open(w_bar)
//open(w_location)
end event

