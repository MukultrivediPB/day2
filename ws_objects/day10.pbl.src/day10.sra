$PBExportHeader$day10.sra
$PBExportComments$Generated Application Object
forward
global type day10 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type day10 from application
string appname = "day10"
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
global day10 day10

type prototypes
FUNCTION boolean Pie(ulong hwnd,long x1,long y1, &
      long x2,long y2,long x3,long y3,long x4, &
      long y4) LIBRARY "Gdi32.dll"
		
		
		FUNCTION boolean IsZoomed(Ulong handle)  &
      LIBRARY "User32.DLL"
		
		
		
		Function Long GetUserName (ref String lpBuffer, Long nSize) Library "advapi32.dll" Alias For "GetUserNameA"
		Function boolean GetComputerNameA (ref String lpBuffer, ref ulong nSize) Library "kernel32.dll"
		
		
		//[External Function Declaration]
Function Long GetWindowLong (ULong hWnd, Int nIndex) Library "USER32.DLL"  Alias For "GetWindowLongA"
Function Long SetWindowLong (ULong hWnd, Int nIndex, Long dwNewLong) Library "USER32.DLL" Alias For "SetWindowLongA"
//W2K or better
Function Long SetLayeredWindowAttributes (Long hWnd, Long crKey , Char bAlpha , Long dwFlags) Library "USER32.DLL"
end prototypes
on day10.create
appname="day10"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on day10.destroy
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
open(w_new)
//open(w_location)
end event

