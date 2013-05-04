#tag Window
Begin Window wndPathsEditor
   BackColor       =   15856113
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   278
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   True
   MinHeight       =   200
   MinimizeButton  =   True
   MinWidth        =   400
   Placement       =   3
   Resizeable      =   True
   Title           =   "Path Editor"
   Visible         =   False
   Width           =   600
   Begin ListBox lbxPathEditor
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   6
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   15
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   True
      GridLinesHorizontal=   2
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   197
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Num.	Column 1	Column 2	Column 3	Column 4	Column 5"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   11
      TextUnit        =   0
      Top             =   38
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   600
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin popImageParams popImageParams
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   17
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   ""
      Left            =   132
      ListIndex       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   9
      Underline       =   ""
      Visible         =   True
      Width           =   450
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
      Left            =   20
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Select Path File"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   9
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Save"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   507
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   246
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   415
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   246
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			window.close
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  me.Visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadPathFile(thePath as String)
		  dim fileContents as String
		  dim textStream as TextInputStream
		  
		  // Get the file contents and change its spaces by tabs
		  // pathFile = demo.GetPoolFolderItem (thePath)
		  textStream = pathFile.OpenAsTextFile
		  fileContents = ReplaceAll(textStream.ReadAll, " ", chr(9))
		  
		  // Convert multiple following tabs into a single tab
		  while InStr(fileContents, chr(9) + chr(9)) > 0
		    fileContents = fileContents.ReplaceAll(chr(9) + chr(9), chr(9))
		  wend
		  
		  // Normalize the line endings to CR (ASCII 13)
		  fileContents = fileContents.ReplaceAll(chr(10), chr(13))
		  
		  dim numLines as integer
		  dim i, j as integer
		  dim currentLine as String
		  dim currentItem as String
		  
		  numLines = CountFields(fileContents, chr(13))
		  currentLine = trim(NthField(fileContents, chr(13), 1))
		  
		  // The number of columns of the path file will be determined by the first line
		  // The separator can be only tabs at this point
		  lbxPathEditor.ColumnCount = CountFields(currentLine, chr(9)) + 1
		  lbxPathEditor.ColumnWidths = "40"
		  for i = 2 to lbxPathEditor.ColumnCount
		    lbxPathEditor.ColumnWidths = lbxPathEditor.ColumnWidths + ",100"
		  next
		  lbxPathEditor.InitialValue = "Num." + chr(9)
		  
		  if left(currentLine, 1) = ";" then
		    currentLine = currentLine.Right(currentLine.len - 1)
		    // Name the columns properly
		    for i=1 to lbxPathEditor.ColumnCount
		      lbxPathEditor.InitialValue = lbxPathEditor.InitialValue + NthField(currentLine, chr(9), i) + chr(9)
		    next
		  else
		    // Generic names for the columns
		    for i=1 to lbxPathEditor.ColumnCount
		      lbxPathEditor.InitialValue = lbxPathEditor.InitialValue + "Column " + cstr(i) + chr(9)
		    next
		  end if
		  
		  // Now fill the listbox
		  lbxPathEditor.DeleteAllRows
		  
		  for i=2 to numLines
		    // Get the next line
		    currentLine = trim(NthField(fileContents, chr(13), i))
		    
		    // Ignore commented and blank lines
		    if left(currentLine, 1) = ";" then continue
		    if left(currentLine, 1) = chr(13) then continue
		    if currentLine = "" then continue
		    
		    // Add the line
		    lbxPathEditor.AddRow cstr(lbxPathEditor.ListCount + 1)
		    
		    // Add the line contents
		    for j=1 to lbxPathEditor.ColumnCount - 1
		      currentItem = NthField(currentLine, chr(9), j)
		      lbxPathEditor.cell(lbxPathEditor.ListCount - 1, j) = currentItem
		    next
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		pathFIle As folderItem
	#tag EndProperty


#tag EndWindowCode

#tag Events lbxPathEditor
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  if column = 0 then
		    // If the user clicks on the first column, we select the entire row
		    me.ListIndex = row
		  else
		    // Avoid edition on the first column
		    me.EditCell row, column
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub CellGotFocus(row as Integer, column as Integer)
		  // Select the entire text of the cell
		  me.ActiveCell.SelStart = 0
		  me.ActiveCell.SelLength = Len(me.ActiveCell.Text)
		  
		  // Disable the OK button
		  btnOK.Enabled = false
		End Sub
	#tag EndEvent
	#tag Event
		Function CellKeyDown(row as Integer, column as Integer, key as String) As Boolean
		  dim i as integer
		  dim cellEdited as boolean
		  
		  if key = "a" and Keyboard.AsyncCommandKey then
		    me.ActiveCell.SelStart = 0
		    me.ActiveCell.SelLength = Len(me.ActiveCell.Text)
		    return true
		  end if
		  
		  // Handle the return key
		  if key = chr(13) then
		    if me.ListCount <= row + 1 then
		      // We are in the end of the table, so add a new line
		      me.AddRow cstr(me.ListCount + 1)
		      
		      // And copy the previous line below
		      for i=1 to me.ColumnCount - 1
		        me.cell(me.ListCount - 1, i) = me.cell(me.ListCount - 2, i)
		      next
		    end if
		    
		    me.EditCell row + 1, column
		    
		    return true
		  end if
		  
		  // Handle the backspace key
		  if key = chr(16) then
		    if column + 1 < me.ColumnCount then
		      // Go to the next cell in the same row if SHIFT is not pressed
		      if not Keyboard.AsyncShiftKey then
		        me.EditCell row, column + 1
		      else
		        // Go to the previous cell in the same row (if exists)
		        if column > 1 then me.EditCell row, column + 1
		      end if
		    else
		      // Move to the next line (if exists)
		      if row + 1 < me.ListCount then
		        me.EditCell row + 1, 1
		      end if
		    end if
		    return true
		  end if
		  
		  // Handle the delete key
		  // We remove he selected line if no cell is being edited
		  if key = chr(11) then
		    for i=1 to me.ColumnCount - 1
		      if  me.CellType(row, i) = 3 then cellEdited = true
		    next
		    
		    if not cellEdited then me.RemoveRow me.ListIndex
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if column = 0 then
		    // Pain the background with gray (not editable)
		    g.ForeColor = rgb(200,200,200)
		    g.FillRect (0, 0, g.Width, g.height)
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub CellLostFocus(row as Integer, column as Integer)
		  // Avoid entering commas instead of points
		  me.cell(row, column) = ReplaceAll(me.cell(row, column), ",", ".")
		  
		  // Enable te OK button
		  btnOK.Enabled = true
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim i as integer
		  dim edited as boolean
		  
		  if me.listindex < 0 then exit
		  
		  // Handle the backspace key
		  if key = chr(8) then
		    edited = false
		    
		    // Delete the currently selected line if no cell is being edited
		    for i=1 to me.ColumnCount - 1
		      if me.cellType(me.ListIndex, i) = 3 then
		        edited = true
		        exit
		      end if
		    next
		    
		    // No cell is being edited in the currently selected row, so let's delete the entire row
		    if not edited then 
		      me.RemoveRow me.listindex
		    end if
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events popImageParams
	#tag Event
		Sub Change()
		  if me.ListIndex >= 0 then
		    loadPathFile me.List(me.ListIndex)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOK
	#tag Event
		Sub Action()
		  dim i, j as integer
		  dim theContents as String
		  dim textStream as TextOutputStream
		  // Write the column headers as comments
		  theContents = ";"
		  
		  for i=2 to lbxPathEditor.ColumnCount
		    theContents = theContents + nthfield(lbxPathEditor.InitialValue, chr(9), i) + chr(9)
		  next
		  
		  // Remove the trailing tab
		  theContents = left(theContents, len(theContents) - 1)
		  
		  // And add the line separator
		  theContents = theContents + EndOfLine.Windows
		  
		  for i=0 to lbxPathEditor.ListCount - 1
		    for j=1 to lbxPathEditor.ColumnCount - 1
		      theContents = theContents + lbxPathEditor.cell(i, j) + chr(9)
		    next
		    
		    // Remove the trailing tab
		    theContents = left(theContents, len(theContents) - 1)
		    
		    // And add the line separator
		    theContents = theContents + EndOfLine.Windows
		  next
		  
		  // Write the contents to disk
		  textStream = pathFIle.CreateTextFile
		  
		  textStream.Write theContents
		  
		  // And close the file
		  textStream.Close
		  
		  window.close
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
