#tag Window
Begin Window wndTrace
   BackColor       =   15790320
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   304
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
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
      Bold            =   ""
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "100, 60, *"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   16
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   251
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Time (sg)	Level	Trace"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   33
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   590
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin Thread thrExportExcel
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "lbxTrace"
         Left            =   233
         LockedInPosition=   False
         Priority        =   5
         Scope           =   0
         StackSize       =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   71
         Width           =   32
      End
      Begin Thread ThrExportHTML
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "lbxTrace"
         Left            =   277
         LockedInPosition=   False
         Priority        =   5
         Scope           =   0
         StackSize       =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   71
         Width           =   32
      End
   End
   Begin Label lblLegend
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   ""
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select some events to track time differences"
      TextAlign       =   0
      TextColor       =   2960685
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   286
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   370
   End
   Begin TextField txtFilter
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
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
      Italic          =   ""
      Left            =   424
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   6
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   160
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   316
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Filter"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin ProgressBar pgrBarExport
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   13
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   391
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   ""
      Maximum         =   100
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   287
      Value           =   0
      Visible         =   True
      Width           =   179
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  lbxTrace.ColumnAlignment(cstColumnTimestamp) = 3 // Right Aligned
		  lbxTrace.ColumnAlignment(cstColumnLevel) = 2 // Center Aligned
		  lbxTrace.ColumnAlignment(cstColumnMessage) = 1 // Left Aligned
		  
		  // Fill the field
		  DebugTrace.append(0)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub exportToExcel()
		  thrExportExcel.Run
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
		  base.Append(New Menuitem(cns_ExportToExcel))
		  base.Append(New Menuitem(cns_ExportToHTML))
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hitItem.Text
		    
		  case cns_ExportToExcel
		    exportToExcel
		    
		  case cns_ExportToHTML
		    exportToHTML
		    
		  end Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events thrExportExcel
	#tag Event
		Sub Run()
		  Dim excel as ExcelApplication
		  Dim book as ExcelWorkbook
		  Dim i,j,k as Integer
		  Dim colName as string
		  
		  excel = New ExcelApplication
		  excel.Visible = True
		  book = excel.Workbooks.Add
		  excel.ActiveSheet.Name = "Exported"
		  pgrBarExport.Maximum=lbxTrace.ListCount-1
		  pgrBarExport.Value=0
		  For j=0 to lbxTrace.columncount -1
		    k=j
		    colName=""
		    do
		      colName=Chr(65+k mod 26)+colName
		      k=k\26
		    loop until k=0
		    
		    For i = 0 to  lbxTrace.listcount - 1
		      //Ajustamos la celda para que no haya problemas en Excel.
		      //Eliminamos los saltos de linea
		      dim texto as String
		      texto= lbxTrace.cell(i,j)
		      texto=ReplaceAllb(Texto,chr(9)," ")
		      texto=ReplaceAllb(texto,Chr(13)," ")
		      texto=ReplaceAllb(texto,chr(10)," ")
		      excel.Range(colName + Str(i + 1), colName + Str(i + 1)).value = texto
		      select case  lbxTrace.cell(i,cstColumnLevel)
		      case "Log"
		        excel.Range(colName+Str(i + 1), colName + Str(i + 1)).Interior.ColorIndex=36 'light yellow
		      case "Error"
		        excel.Range(colName+Str(i + 1), colName + Str(i + 1)).Interior.ColorIndex=3 'red
		      case "Debug"
		        excel.Range(colName+Str(i + 1), colName + Str(i + 1)).Interior.ColorIndex=4 'green
		      case "Warning"
		        excel.Range(colName+Str(i + 1), colName + Str(i + 1)).Interior.ColorIndex=45 'Light Orange
		      case "Critical"
		        excel.Range(colName+Str(i + 1), colName + Str(i + 1)).Interior.ColorIndex=23 'Purple
		      end select
		      pgrBarExport.Value=pgrBarExport.Value+1
		      pgrBarExport.Refresh
		    next
		  next
		  pgrBarExport.Value=0
		Exception err as OLEException
		  MsgBox "Error while trying to export to Microsoft Excel. This usually means that Microsoft Excel is not installed." + EndOfLine + EndOfLine + "You need to install Microsoft Excel in order to export this listbox."
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
		  pgrBarExport.Maximum=lbxTrace.ListCount-1
		  pgrBarExport.Value=0
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
		    pgrBarExport.Value=pgrBarExport.Value+1
		    pgrBarExport.Refresh
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
#tag Events txtFilter
	#tag Event
		Sub TextChange()
		  lbxTrace.filter = me.text
		  lbxTrace.refreshContents
		End Sub
	#tag EndEvent
#tag EndEvents
