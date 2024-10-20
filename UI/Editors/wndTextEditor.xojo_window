#tag Window
Begin Window wndTextEditor
   BackColor       =   &cF2F2F200
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   576
   ImplicitInstance=   True
   LiveResize      =   "True"
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
      ButtonStyle     =   0
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
      ButtonStyle     =   0
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
      ButtonStyle     =   0
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
   Begin SyntaxArea.Editor codeEditor
      AllowFocusRing  =   False
      AutoCloseBrackets=   False
      AutocompleteAppliesStandardCase=   True
      AutocompleteCombo=   "SyntaxArea.AutocompleteCombos.Tab"
      AutoDeactivate  =   True
      AutoIndentNewLines=   True
      BackColor       =   &c00000000
      BlockFoldedColor=   &c00000000
      BlockFoldedEllipsisColor=   &c00000000
      BlockFoldMarkerColor=   &c00000000
      BookmarkColor   =   &c00000000
      BorderColor     =   &c00000000
      BracketHighlightColor=   &c00000000
      CaretColor      =   &c00000000
      ClearHighlightedRangesOnTextChange=   True
      DirtyLinesColor =   &c00000000
      DisplayDirtyLines=   False
      DisplayGutter   =   True
      DisplayInvisibleCharacters=   False
      DisplayVerticalRuler=   False
      EnableAutocomplete=   False
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   12
      GutterBackColor =   &c00000000
      GutterBorderColor=   &c00000000
      HasBottomBorder =   True
      HasLeftBorder   =   True
      HasRightBorder  =   True
      HasTopBorder    =   True
      Height          =   504
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   "SyntaxArea.BracketsHighlightModes.Circle"
      IndentPixels    =   16
      Index           =   -2147483648
      InitialParent   =   ""
      InvisibleCharacterColor=   &c00000000
      Left            =   0
      LeftMarginOffset=   5
      LineNumbersColor=   &c00000000
      LineNumbersFontName=   "Consolas"
      LineNumbersFontSize=   12
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      ReadOnly        =   False
      RightScrollMargin=   150
      Scope           =   0
      SuggestionPopupBackColor=   &c00000000
      SuggestionPopupSelectedTextColor=   &c00000000
      SuggestionPopupTextColor=   &c00000000
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextSelectionColor=   &c00000000
      ThickInsertionPoint=   False
      Tooltip         =   ""
      Top             =   0
      UseLighterLineFoldingBackColor=   True
      UseSystemTextSelectionColor=   True
      VerticalRulerColor=   &c00000000
      VerticalRulerPosition=   80
      Visible         =   True
      Width           =   783
   End
   Begin DesktopScrollbar VerticalScrollBar
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowLiveScrolling=   False
      Enabled         =   True
      Height          =   504
      Index           =   -2147483648
      Left            =   783
      LineStep        =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   17
   End
   Begin DesktopScrollBar HorizontalScrollBar
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   17
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   505
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   783
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
		    
		    codeEditor.text = contents.ReadAll
		    
		    // Note: If you handle large text, e.g. more than a few 100 lines, and if you also want to use
		    // indentation, then the syntax definition should be set to nil before setting the new text,
		    
		    codeEditor.ReindentText // cleans up indentations, removing any leading blanks from the lines
		    'TODO: codeEditor.ResetUndo // needed so that the Reindentation doesn't become an undoable action
		    
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
		    contents.Write ReplaceLineEndings(codeEditor.text, EndOfLine.Unix)
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
#tag Events codeEditor
	#tag Event
		Sub TextChanged()
		  btnSave.Enabled = true
		  btnTest.Enabled = true
		End Sub
	#tag EndEvent
	#tag Event , Description = 54686520656469746F72206973206F70656E696E672E
		Sub Opening()
		  Me.UndoManager = App.UndoManager
		  
		  // Set the scrollbars on Windows and Linux (they are native on macOS).
		  #If TargetMacOS
		    HorizontalScrollBar.Visible = False
		    VerticalScrollBar.Visible = False
		    CodeEditor.Width = CodeEditor.Width + VerticalScrollBar.Width
		    CodeEditor.Height = CodeEditor.Height + HorizontalScrollBar.Height
		    
		  #Else
		    Me.SetScrollbars(HorizontalScrollBar, VerticalScrollBar)
		    
		  #EndIf
		  
		  if Color.IsDarkMode then
		    CodeEditor.LoadTheme(SyntaxArea.EditorTheme.FromFile(SpecialFolder.Resource("Nova Dark.json")))
		    
		  else
		    CodeEditor.LoadTheme(SyntaxArea.EditorTheme.FromFile(SpecialFolder.Resource("Nova Light.json")))
		    
		  end if
		  
		  
		  Var syntaxDefinition As SyntaxArea.HighlightDefinition
		  
		  syntaxDefinition = New SyntaxArea.HighlightDefinition(CodeEditor)
		  
		  If Not syntaxDefinition.LoadFromXml(SpecialFolder.Resource("Text.xml")) Then
		    Raise New UnsupportedOperationException("Unable to load the GLSL definition")
		    
		  else
		    CodeEditor.SyntaxDefinition = syntaxDefinition
		    
		  End If
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
	#tag ViewProperty
		Name="itemID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
