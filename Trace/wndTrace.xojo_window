#tag Window
Begin Window wndTrace
   BackColor       =   &cF0F0F000
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   304
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   150
   MinimizeButton  =   True
   MinWidth        =   300
   Placement       =   3
   Resizeable      =   True
   Title           =   "Debug Trace"
   Visible         =   True
   Width           =   590
   Begin customListBox lbxTrace
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "100, 60, *"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   16
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      filter          =   ""
      GridLinesHorizontal=   1
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   251
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Time (sg)	Level	Trace"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   1
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   33
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   590
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label lblLegend
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select some events to track time differences"
      TextAlign       =   0
      TextColor       =   &c2D2D2D00
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   285
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   370
   End
   Begin TextField txtFilter
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   424
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   160
   End
   Begin Label lblFilter
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   316
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Filter"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ProgressBar pgrBarExport
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   13
      HelpTag         =   ""
      Indeterminate   =   False
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   391
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   287
      Transparent     =   False
      Value           =   0.0
      Visible         =   True
      Width           =   179
   End
   Begin Thread ThrExportHTML
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
   End
   Begin CheckBox chkExtendedLog
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Display extended log"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   151
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  lbxTrace.ColumnAlignment(cstColumnTimestamp) = 3 // Right Aligned
		  lbxTrace.ColumnAlignment(cstColumnLevel) = 2 // Center Aligned
		  lbxTrace.ColumnAlignment(cstColumnMessage) = 1 // Left Aligned
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub append(logtime as string, message as string, level as string)
		  if not chkExtendedLog.Value then
		    if InStr(message, controller.netSeparator + "command" + controller.netSeparator + "ping") > 0then return
		    if inStr(message, controller.netSeparator + "OK" + controller.netSeparator) > 0 then return
		  end if
		  
		  // Write the trace to the tracing window
		  dim lastLine as integer = lbxTrace.appendRow(logtime)
		  lbxTrace.contents(lastLine, 1) = level
		  lbxTrace.contents(lastLine, 2) = ReplaceAll(message, chr(31), " ")
		  
		  lbxTrace.AddRow(logtime, level, message)
		  
		  // Select the last line of the trace (if there isn't a selected line)
		  if wndTrace.lbxTrace.SelCount = 0 then
		    wndTrace.lbxTrace.ScrollPosition = 1 + wndTrace.lbxTrace.ListCount - ceil((wndTrace.lbxTrace.Height - 16) / wndTrace.lbxTrace.DefaultRowHeight)
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub exportToHTML()
		  ThrExportHTML.Run
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		level As string
	#tag EndProperty

	#tag Property, Flags = &h0
		message() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		timestamp() As String
	#tag EndProperty


	#tag Constant, Name = cnsColorCritical, Type = Color, Dynamic = False, Default = \"&cD72DC6", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cnsColorDebug, Type = Color, Dynamic = False, Default = \"&c99FF99", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cnsColorError, Type = Color, Dynamic = False, Default = \"&cFF8080", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cnsColorLog, Type = Color, Dynamic = False, Default = \"&cFFFFCC", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cnsColorWarning, Type = Color, Dynamic = False, Default = \"&cFFCC66 ", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cns_ExportToExcel, Type = String, Dynamic = False, Default = \"Export log to Excel", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cns_ExportToHTML, Type = String, Dynamic = False, Default = \"Export log to HTML", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cstColumnLevel, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnMessage, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnTimestamp, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events lbxTrace
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  select case me.cell(row, cstColumnLevel)
		    
		    // Choose the color depending of the severity of the error that the line represents
		  case "Critical"
		    g.ForeColor = &cFFFFFF // White over black
		    
		  case "Error"
		    g.ForeColor = &c000000 // Black over Light Red
		    
		  case "Warning"
		    g.ForeColor = &c000000 // Black over Light Orange
		    
		  case "Log"
		    g.ForeColor = &c000000 // Black over Light yellow
		    
		  case "Debug"
		    g.ForeColor = &c000000 // Black over Light green
		    
		  else
		    
		    // By default, the text is painted in black
		    g.foreColor= &c000000
		  end
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  // Alternate gray / white color
		  If row Mod 2=0 then
		    g.foreColor= RGB(255,255,255)
		  else
		    g.foreColor= RGB(235,235,235)
		  end if
		  
		  if row < me.ListCount then
		    
		    select case me.cell(row, 1)
		      
		      // Choose the color depending of the severity of the error that the line represents
		    case "Critical"
		      g.ForeColor =cnsColorCritical // Black
		      
		    case "Error"
		      g.ForeColor = cnsColorError // Light Red
		      
		    case "Warning"
		      g.ForeColor = cnsColorWarning // Light Orange
		      
		    case "Log"
		      g.ForeColor = cnsColorLog// Light yellow
		      
		    case "Debug"
		      g.ForeColor = cnsColorDebug // Light green
		      
		    end
		  end
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick(row as integer, column as integer)
		  dim myWindow as new wndTraceDetail
		  
		  myWindow.init (me.cell(row, cstColumnTimestamp), me.cell(row, cstColumnLevel), me.cell(row, cstColumnMessage))
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append(New MenuItem("Clear"))
		  base.Append(New MenuItem("-"))
		  base.Append(New Menuitem(cns_ExportToHTML))
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hitItem.Text
		    
		  case "Clear"
		    lbxTrace.DeleteAllRows
		    
		  case cns_ExportToHTML
		    exportToHTML
		    
		  end Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtFilter
	#tag Event
		Sub TextChange()
		  lbxTrace.filter = me.text
		  lbxTrace.refreshContents
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ThrExportHTML
	#tag Event
		Sub Run()
		  //Generamos un archivo html con los datos del log
		  dim theHTMLText as String
		  dim laFecha as new date
		  
		  'Insertamos la cabecera
		  theHTMLText="<!DOCTYPE html PUBLIC " + chr(34) +"-//W3C//DTD XHTML 1.0 Transitional//EN" + chr(34) + " " +chr(34) + "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" + chr(34) + "> " + _
		  "<html xmlns=" + chr(34) + "http://www.w3.org/1999/xhtml"+chr(34) + ">" + EndOfLine +_
		  "<head>" + EndOfLine + _
		  "<meta http-equiv=" + chr(34) + "Content-Type"+chr(34)+"content="+chr(34)+"text/html; charset=utf-8"+chr(34)+" />" + EndOfLine+_
		  "<title>LOG REPORT IAS RS</title>" + EndOfLine + _
		  "</head>" + EndOfLine + _
		  "<body>" + EndOfLine + _
		  "<h1>Debug log report</h1>"+ EndOfLine + _
		  "<blockquote>" + EndOfLine + _
		  "<p>" + EndOfLine + _
		  "<cite>Date:" + laFecha.SQLDate + "</cite> <br>" + EndOfLine + _
		  "</blockquote>"
		  
		  //Una vez tenemos la cabecera, hemos de crear la tabla e ir insertando los valores
		  theHTMLText=theHTMLText + EndOfLine + _
		  "<table width="+chr(34) +"800" + chr(34) + " border="+chr(34)+"1"+chr(34)+" bordercolor="+chr(34)+"#000000"+chr(34)+">" + EndOfLine
		  
		  //Cada Bloque va entre valores <tr></tr>
		  dim i as integer
		  
		  For i = 0 to  lbxTrace.listcount - 1
		    'For j=0 to lbxTrace.columncount -1
		    select case  lbxTrace.cell(i,cstColumnLevel)
		    case "Log"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#FFFF99"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Log</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#FFFF99"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    case "Error"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#FC7477"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Error</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#FC7477"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    case "Debug"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#FFCC33"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Warning</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#FFCC33"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    case "Warning"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#CCFF99"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Debug</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#CCFF99"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    case "Comm"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#CCCCCC"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Debug</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#CCCCCC"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    case "Critical"
		      theHTMLText=theHTMLText + "<tr>" + EndOfLine + _
		      "<td width="+chr(34)+"40"+chr(34)+" bgcolor="+chr(34)+"#FFFFFF"+chr(34)+">"+cstr(i)+"</td>" + EndOfLine +_
		      "<td width="+chr(34)+"70"+chr(34)+" bgcolor="+chr(34)+"#D72DC6"+chr(34)+"><div align="+chr(34)+"center"+chr(34)+"><strong>Critical</strong></div></td>" + EndOfLine +_
		      "<td width="+chr(34)+"690"+chr(34)+" bgcolor="+chr(34)+"#D72DC6"+chr(34)+">"+lbxTrace.cell(i,2)+"</td>" + EndOfLine + _
		      "</tr>"+EndOfLine
		    end select
		    'next
		    
		  next
		  
		  //Una vez generada la tabla, la cerramos y cerramos el html
		  theHTMLText=theHTMLText + "</table>" + EndOfLine + "</body>" + EndOfLine + "</html>"
		  
		  //Pedimos que se guarde el html
		  
		  Dim f as FolderItem
		  dim t as TextOutputStream
		  dim dlg as new SaveAsDialog
		  Dim htmlType as New FileType
		  htmlType.Name = "web html"
		  htmlType.MacType = "HTML"
		  htmlType.Extensions = "html;htm"
		  dim insertedDate as String
		  insertedDate=cstr(laFecha.Day)+cstr(laFecha.Month)+cstr(laFecha.Year)+"_"+cstr(laFecha.Hour)+cstr(laFecha.Minute)+cstr(laFecha.Second)
		  dlg.SuggestedFileName="Log for " + App.applicationName + " " + insertedDate + ".html"
		  
		  f=dlg.ShowModal()
		  If f <> Nil then
		    t=f.CreateTextFile
		    t.WriteLine(theHTMLText)
		    t.Close
		    //file saved
		    
		  Else
		    //user canceled
		  End if
		  
		  pgrBarExport.Value=0
		  self.Refresh
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="level"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
