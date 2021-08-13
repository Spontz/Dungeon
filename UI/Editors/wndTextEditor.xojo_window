#tag Window
Begin Window wndTextEditor
   BackColor       =   &cF2F2F200
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   True
   Height          =   576
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
   MinWidth        =   528
   Placement       =   3
   Resizeable      =   True
   Title           =   "Text Editor"
   Visible         =   True
   Width           =   800
   Begin PushButton btnSave
      AutoDeactivate  =   False
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save"
      Default         =   True
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   694
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   534
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin PushButton btnTest
      AutoDeactivate  =   False
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Test"
      Default         =   False
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   596
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   534
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   False
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
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
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   534
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin CustomEditField txtFileContents
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoCloseBrackets=   False
      AutocompleteAppliesStandardCase=   True
      AutoDeactivate  =   False
      AutoIndentNewLines=   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Border          =   False
      BorderColor     =   &c88888800
      BracketHighlightColor=   &cFFFF0000
      CaretColor      =   &c00000000
      CaretLine       =   0
      CaretPos        =   0
      ClearHighlightedRangesOnTextChange=   True
      DirtyLinesColor =   &cFF999900
      disableReset    =   False
      DisplayDirtyLines=   False
      DisplayInvisibleCharacters=   False
      DisplayLineNumbers=   True
      DisplayRightMarginMarker=   False
      DoubleBuffer    =   False
      EnableAutocomplete=   False
      Enabled         =   True
      EnableLineFoldings=   True
      enableLineFoldingSetting=   False
      EraseBackground =   True
      GutterBackgroundColor=   &cEEEEEE00
      GutterSeparationLineColor=   &c88888800
      GutterWidth     =   0
      Height          =   522
      HelpTag         =   ""
      HighlightBlocksOnMouseOverGutter=   True
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   1
      ignoreRepaint   =   False
      IndentPixels    =   16
      IndentVisually  =   True
      Index           =   -2147483648
      InitialParent   =   ""
      KeepEntireTextIndented=   True
      Left            =   0
      leftMarginOffset=   4
      LineNumbersColor=   &c88888800
      LineNumbersTextFont=   "System"
      LineNumbersTextSize=   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaxVisibleLines =   0
      ReadOnly        =   False
      RightMarginAtPixel=   0
      RightScrollMargin=   150
      Scope           =   0
      ScrollPosition  =   0
      ScrollPositionX =   0
      selLength       =   0
      selStart        =   0
      SelText         =   ""
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TabWidth        =   4
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextHeight      =   0
      TextLength      =   0
      TextSelectionColor=   &c00000000
      TextSize        =   12
      ThickInsertionPoint=   True
      Top             =   0
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   800
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(fileID as string, theHook as wndTimeLine)
		  dim f as FolderItem
		  dim itemProperties as dictionary
		  
		  itemProperties = theHook.demo.getFile(fileID)
		  itemID = fileID
		  
		  f = theHook.demo.getFilePath(fileID)
		  f = f.child(itemProperties.value("name"))
		  
		  if not f.Exists then
		    Notify("File does not exist", "Expected path: " + f.ShellPath)
		    return
		  end if
		  
		  editedFile = f
		  
		  hook = theHook
		  
		  loadFile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub loadFile()
		  me.Title = editedFile.Name + " from data folder"
		  
		  dim contents as TextInputStream 
		  
		  try
		    contents = editedFile.OpenAsTextFile
		    
		    txtFileContents.text = contents.ReadAll
		    
		    // Note: If you handle large text, e.g. more than a few 100 lines, and if you also want to use
		    // indentation, then the syntax definition should be set to nil before setting the new text,
		    
		    txtFileContents.ReindentText // cleans up indentations, removing any leading blanks from the lines
		    txtFileContents.ResetUndo // needed so that the Reindentation doesn't become an undoable action
		    
		    btnSave.Enabled = true
		    btnTest.Enabled = true
		    
		  catch
		    Notify ("Error accesing the file", "Could not open file """ + editedFile.ShellPath + """ for edition")
		    
		  end
		  
		  contents.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub saveToDatabase()
		  hook.demo.updateResourceFromFolderItem(editedFile, itemID)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub saveToDataFolder()
		  // If the file exists, delete it
		  if editedFile.Exists then editedFile.Delete
		  
		  // Save the contents to the file
		  dim contents as TextOutputStream
		  
		  contents = editedFile.CreateTextFile
		  
		  if contents <> nil then
		    contents.Write ReplaceLineEndings(txtFileContents.text, EndOfLine.Unix)
		    contents.Flush
		    contents.Close
		    
		  else
		    Notify("Nothing was update din the engine", "The file could not be written to the disk.")
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateBarsUsingFile()
		  dim filePath as string = Replace(editedFile.NativePath, hook.demo.GetDataFolderItem("").NativePath, "")
		  
		  dim barIDs() as string = hook.demo.getBarsWithText(filePath)
		  
		  hook.updateBarIDs(barIDs)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private editedFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private hook As wndTimeLine
	#tag EndProperty

	#tag Property, Flags = &h0
		itemID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSave
	#tag Event
		Sub Action()
		  // Clear the engine comm text box in all timelines
		  for i as integer = 0 to windowcount-1
		    if window(i) isa wndTimeLine then
		      wndTimeLine(window(i)).ClearEngineLog
		    end if
		  next
		  
		  
		  saveToDataFolder
		  saveToDatabase
		  
		  updateBarsUsingFile
		  
		  me.Enabled = false
		  btnTest.Enabled = false
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnTest
	#tag Event
		Sub Action()
		  saveToDataFolder
		  
		  updateBarsUsingFile
		  
		  me.Enabled = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtFileContents
	#tag Event
		Function KeyDown(key as string) As boolean
		  if key = decodeHex("3") and not Keyboard.AsyncControlKey then
		    // User pressed the ENTER key
		    // Apply the changes to the data folder
		    saveToDataFolder
		    
		    updateBarsUsingFile
		    
		    // No further processing to be done with the key
		    return true
		    
		  elseif asc(key) = 9 then
		    // tab key pressed
		    me.Insert(me.CaretPos, "    ")
		    return true
		    
		  elseif Keyboard.AsyncControlKey and key = decodehex("1A") then
		    me.Undo
		    
		  elseif Keyboard.AsyncControlKey and key = DecodeHex("19") then
		    me.Redo
		    
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  btnSave.Enabled = true
		  btnTest.Enabled = true
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X as integer, Y as integer) As boolean
		  #pragma unused X
		  #pragma unused Y
		  
		  // this is just a cheap trick to cause a redraw for debugging
		  txtFileContents.Redraw
		End Function
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
	#tag ViewProperty
		Name="itemID"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
