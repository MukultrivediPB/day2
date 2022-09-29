$PBExportHeader$a_day2.sra
$PBExportComments$Generated Application Object
forward
global type a_day2 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
String user

Transaction u_tran
end variables
global type a_day2 from application
string appname = "a_day2"
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
global a_day2 a_day2

type prototypes
FUNCTION boolean IsZoomed(Ulong handle)  &
      LIBRARY "User32.DLL"
end prototypes

on a_day2.create
appname="a_day2"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on a_day2.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile PBDemo
SQLCA.DBMS = "ADO.Net"
SQLCA.LogPass = "Welcome@1"
SQLCA.LogId = "sa"
SQLCA.AutoCommit = False
SQLCA.DBParm = "Namespace='System.Data.SqlClient',DataSource='POWERBUILDER',Database='PBDemoDB2022'";

u_tran = CREATE transaction

u_tran.DBMS = "ADO.Net"
u_tran.LogPass = "Welcome@1"
u_tran.LogId = "sa"
u_tran.AutoCommit = False
u_tran.DBParm = "Namespace='System.Data.SqlClient',DataSource='POWERBUILDER',Database='PBDemoDB2022'";

connect using u_tran;
messagebox('u_tran',u_tran.sqlcode)
connect using sqlca;

open(w_login);
end event

event systemerror;messagebox('Error','Apllication is closed forcefully')
end event

