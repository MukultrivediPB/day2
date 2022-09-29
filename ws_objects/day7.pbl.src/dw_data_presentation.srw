$PBExportHeader$dw_data_presentation.srw
forward
global type dw_data_presentation from window
end type
type dw_1 from datawindow within dw_data_presentation
end type
type ddlb_1 from dropdownlistbox within dw_data_presentation
end type
end forward

global type dw_data_presentation from window
integer width = 3378
integer height = 1560
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
ddlb_1 ddlb_1
end type
global dw_data_presentation dw_data_presentation

on dw_data_presentation.create
this.dw_1=create dw_1
this.ddlb_1=create ddlb_1
this.Control[]={this.dw_1,&
this.ddlb_1}
end on

on dw_data_presentation.destroy
destroy(this.dw_1)
destroy(this.ddlb_1)
end on

type dw_1 from datawindow within dw_data_presentation
integer x = 101
integer y = 404
integer width = 3077
integer height = 1024
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type ddlb_1 from dropdownlistbox within dw_data_presentation
integer x = 96
integer y = 12
integer width = 681
integer height = 340
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Tabular Presentation","Freeform Presentation","Gridi Presentation","Label Presentation","Group Presentation","Graph Presentation","Composite Presentation"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;if index = 1 then
	dw_1.dataobject='dw_emp'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 2 then
	dw_1.dataobject='dw_freeform'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 3 then
	dw_1.dataobject='dw_grid'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 4 then
	dw_1.dataobject='dw_label'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 5 then
	dw_1.dataobject='dw_group'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 6 then
	dw_1.dataobject='dw_graph'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 
if index = 7 then
	dw_1.dataobject='dw_composite'
	dw_1.settransobject(sqlca)
	dw_1.retrieve();
end if 

end event

