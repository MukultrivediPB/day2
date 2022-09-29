$PBExportHeader$w_email.srw
forward
global type w_email from window
end type
type cb_2 from commandbutton within w_email
end type
type cb_1 from commandbutton within w_email
end type
end forward

global type w_email from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
end type
global w_email w_email

on w_email.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.cb_1}
end on

on w_email.destroy
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;///testing
end event

type cb_2 from commandbutton within w_email
integer x = 1266
integer y = 388
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;string ls_fileurl, ls_listout
int i,li_FileNum

ls_fileurl = 'C:\Mukul\Day2\New Text Document.txt'
li_FileNum=FileOpen(ls_fileurl,LineMode!,Read!,LockRead!)

i = 1

DO While FileReadEx(li_FileNum,ls_listout) <> -100
    ls_listout
LOOP
FileClose(li_FileNum)
end event

type cb_1 from commandbutton within w_email
integer x = 1216
integer y = 120
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;mailSession             mSes
mailReturnCode          mRet
mailMessage             mMsg
mailFileDescription     mAttach

// Create a mail session
mSes = create mailSession

// Log on to the session
mRet = mSes.mailLogon()
IF mRet <> mailReturnSuccess! THEN
    MessageBox("Mail", "Mail error")
    RETURN
END IF

// Populate the mailMessage structure
mMsg.Subject = "My own subject"
mMsg.Recipient[1].name = "mukul.trivedi@gmail.com"
mMsg.Notetext = ''

// Send the mail
mRet = mSes.mailSend(mMsg)
IF mRet = mailReturnSuccess! THEN
    MessageBox("Mail Sent", "Message sent successfully" )
ELSE
    MessageBox("Mail not Sent", "Impossible to send mail" )
    RETURN
END IF

mSes.mailLogoff()
DESTROY mSes

end event

