$PBExportHeader$day18.sra
$PBExportComments$Generated Application Object
forward
global type day18 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
Transaction u_sqlca

string g_user
end variables
global type day18 from application
string appname = "day18"
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
global day18 day18

on day18.create
appname="day18"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on day18.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile PBDemo
SQLCA.DBMS = "ADO.Net"
SQLCA.LogPass = 'Welcome@1'
SQLCA.LogId = "sa"
SQLCA.AutoCommit = False
SQLCA.DBParm = "Namespace='System.Data.SqlClient',DataSource='POWERBUILDER',Database='PBDemoDB2022'"

connect using sqlca;

//Messagebox('',sqlca.sqlcode)

u_SQLCA = create transaction

// Profile PB SQLServer V2022
// Profile PB SQLServer V2022
// Profile PB SQLServer V2022
u_SQLCA.DBMS = "ODBC"
u_SQLCA.AutoCommit = False
u_SQLCA.DBParm = "ConnectString='DSN=PB SQLServer V2022;UID=sa;PWD=Welcome@1'"


connect using u_SQLCA;

//Messagebox('',u_sqlca.sqlcode)

open(w_orders)

end event

