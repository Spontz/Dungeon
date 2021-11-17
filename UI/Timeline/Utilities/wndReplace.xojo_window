#tag Window
Begin Window wndReplace
   BackColor       =   &cF3F3F300
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   7
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   350
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   True
   MinWidth        =   676
   Placement       =   3
   Resizeable      =   True
   Title           =   "Search / Replace in bar scripts"
   Visible         =   False
   Width           =   676
   Begin TextArea txtBefore
      AcceptTabs      =   True
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   66
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Courier"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   234
   End
   Begin Label lblSearch
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   9
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin TextArea txtAfter
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   66
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   422
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Courier"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   234
   End
   Begin Label lblReplace
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   334
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Replace"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   8
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin PushButton btnReplace
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Replace"
      Default         =   True
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   564
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   452
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ListBox lbxSearchResults
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   5
      ColumnsResizable=   True
      ColumnWidths    =   "50,50,70,100,*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   24
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   207
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Bar ID	Layer	From / To	Type	Content"
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   86
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   676
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label lblCount
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   305
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   420
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub checkReplaceButton()
		  if lbxSearchResults.ListCount > 0 then
		    lblCount.Text = "Found " + str(lbxSearchResults.ListCount) + " items"
		  else
		    lblCount.Text = ""
		  end if
		  
		  btnReplace.Enabled = false
		  btnReplace.Caption = "Replace"
		  
		  if txtAfter.Text = "" then return
		  if txtBefore.text = "" then return
		  if lbxSearchResults.ListCount = 0 then return
		  
		  btnReplace.Enabled = true
		  
		  dim selectedRows() as integer
		  
		  for row as integer = 0 to lbxSearchResults.ListCount - 1
		    if lbxSearchResults.Selected(row) then
		      selectedRows.append(row)
		    end if
		  next
		  
		  if selectedRows.Ubound > -1 then
		    btnReplace.Caption = "Replace " + str(selectedRows.Ubound + 1)
		    
		  else
		    btnReplace.Caption = "Replace " + str(lbxSearchResults.ListCount)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, theTimeLine as classTimeline, theTimelineWindow as wndTimeline)
		  demo = theDemo
		  timeLine = theTimeLine
		  timelineWindow = theTimelineWindow
		  
		  me.Visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Search(content as string)
		  dim IDs() as string = demo.getBarsWithText(content)
		  
		  lbxSearchResults.DeleteAllRows
		  
		  for each ID as string in IDs
		    dim data as dictionary = demo.getBarData(ID)
		    
		    dim layer     as string = cstr(1 + data.value("layer"))
		    dim startTime as string = cstr(abs(data.value("startTime") * 100) / 100)
		    dim endTime   as string = cstr(abs(data.value("endTime") * 100) / 100)
		    dim type      as string = data.value("type").StringValue
		    
		    dim script    as string = data.value("script")
		    dim lines()   as string = split(script, EndOfLine)
		    
		    for i as integer = 0 to Ubound(lines)
		      if inStr(lines(i), content) > 0 then
		        lbxSearchResults.AddRow(ID, layer, startTime + " to " + endTime + "sg.", type, "Line " + str(i+1) + ": " + lines(i))
		      end if
		    next
		  next
		  
		  checkReplaceButton
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		timeLine As classTimeline
	#tag EndProperty

	#tag Property, Flags = &h0
		timeLineWindow As wndTimeline
	#tag EndProperty


#tag EndWindowCode

#tag Events txtBefore
	#tag Event
		Sub TextChange()
		  Search(me.text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtAfter
	#tag Event
		Sub TextChange()
		  checkReplaceButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReplace
	#tag Event
		Sub Action()
		  dim count as integer
		  dim barID as string
		  dim updatedBarIDs() as string
		  
		  for row as integer = 0 to lbxSearchResults.ListCount - 1
		    if lbxSearchResults.Selected(row) or lbxSearchResults.ListIndex < 0 then
		      // The row is selected or there are not rows selected, so do the search / replace
		      
		      // Get the barID
		      barID = lbxSearchResults.cell(row, 0)
		      
		      // Save the bar ID
		      if updatedBarIDs.IndexOf(barID) < 0 then
		        updatedBarIDs.Append(barID)
		      end if
		      
		      // Get the script and split it in lines
		      dim script as string = demo.getBarScript(barID)
		      
		      // Separate the script in lines
		      dim lines() as string = split(script, EndOfLine)
		      
		      // Get the specified line
		      dim lineNumber as integer = val(NthField(NthField(lbxSearchResults.cell(row, 4), ":", 1), " ", 2)) - 1
		      dim line as string = lines(lineNumber)
		      
		      // Replace the specified line
		      lines(lineNumber) = ReplaceAll(line, txtBefore.text, txtAfter.Text)
		      
		      // Regenerate the script
		      script = join(lines, EndOfLine)
		      
		      // Write the script back to the database
		      demo.setBarScript(barID, script)
		      
		      count = count + 1
		    end if
		  next
		  
		  // Refresh the results field
		  Search(txtBefore.text)
		  
		  // Refresh the updated bars in the engine
		  timelineWindow.updateBarIDs(updatedBarIDs)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  window.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbxSearchResults
	#tag Event
		Sub DoubleClick()
		  // Select the clicked row in the timeline
		  dim barID as string = me.cell(me.ListIndex, 0)
		  
		  demo.clearBarSelection
		  demo.addBarToSelection(barID)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  checkReplaceButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
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
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
