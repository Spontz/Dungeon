#tag Window
Begin Window wndShadersEditor
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
   Title           =   "Shader Editor"
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
   Begin DesktopScrollBar verticalScrollBar
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   506
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   784
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   0
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin DesktopScrollBar horizontalScrollBar
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   0
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   506
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   784
   End
   Begin SyntaxArea.Editor codeEditor
      AllowFocusRing  =   False
      AutoCloseBrackets=   True
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
      DisplayDirtyLines=   True
      DisplayGutter   =   True
      DisplayInvisibleCharacters=   False
      DisplayVerticalRuler=   True
      EnableAutocomplete=   True
      Enabled         =   True
      FontName        =   "Consolas"
      FontSize        =   12
      GutterBackColor =   &c00000000
      GutterBorderColor=   &c00000000
      HasBottomBorder =   True
      HasLeftBorder   =   True
      HasRightBorder  =   True
      HasTopBorder    =   True
      Height          =   506
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      ReadOnly        =   False
      RightScrollMargin=   150
      Scope           =   1
      SuggestionPopupBackColor=   &c00000000
      SuggestionPopupSelectedTextColor=   &c00000000
      SuggestionPopupTextColor=   &c00000000
      TabIndex        =   8
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
      Width           =   784
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim myBounds As New Realbasic.Rect
		  
		  myBounds.Left   = Screen(0).AvailableWidth  / 2 - App.WindowBorderWidth
		  myBounds.Top    = Screen(0).AvailableHeight / 2 + 2 * App.WindowBorderWidth
		  myBounds.Height = Screen(0).AvailableHeight / 2 - App.WindowBorderWidth
		  myBounds.Width  = Screen(0).AvailableWidth  / 2 + 2 * App.WindowBorderWidth
		  
		  Trace("wndShadersEditor: Open: Window opened at: " + myBounds.Left.ToText + "," + myBounds.Top.ToText + " with size: " + myBounds.Width.ToText + "x" + myBounds.Height.ToText, cstTraceLevelLog)
		  
		  self.Bounds = myBounds
		  
		  // Enable line foldings if the definition supports them.
		  'TODO: CodeEditor.EnableLineFolding = CodeEditor.SyntaxDefinition.SupportsCodeBlocks
		  
		  // Give the editor a bottom border on Windows.
		  #If TargetMacOS
		    CodeEditor.HasBottomBorder = False
		  #Else
		    CodeEditor.HasBottomBorder = True
		  #EndIf
		  
		  // Setup up our simple demonstration autocomplete engine.
		  InitialiseAutocompleteEngine
		  
		  // Manually call the `AppearanceChanged` event which will load the correct theme.
		  AppearanceChanged(True)
		  
		  // Initialise the info panel border separately.
		  ' InfoTopBorderColor.SelectedColor = CodeEditor.BorderColor
		  ' InfoBottomBorderColor.SelectedColor = CodeEditor.BorderColor
		  ' InfoLeftBorderColor.SelectedColor = CodeEditor.BorderColor
		  ' InfoRightBorderColor.SelectedColor = CodeEditor.BorderColor
		  
		  // Force the editor to update to reflect all these changes.
		  CodeEditor.MarkAllLinesAsChanged
		  
		  // Clear the undo manager since we don't want the user to be able to undo the example text insertion.
		  App.UndoManager.Reset
		  
		  // Ensure the editor has the focus.
		  CodeEditor.SetFocus
		  
		  mFinishedInitialising = True
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 54686520617070277320617070656172616E636520686173206368616E6765642028652E672E206120737769746368206265747765656E206C696768742F6461726B206D6F6465292E
		Sub AppearanceChanged(alsoInitialiseControls As Boolean = False)
		  /// The app's appearance has changed (e.g. a switch between light/dark mode).
		  ///
		  /// We'll switch the current theme to one of the bundled ones. Note that this will 
		  /// undo any changes the user has made to the current colour scheme.
		  
		  If Color.IsDarkMode Then
		    // Get the correct bundled theme.
		    Var themeFile As FolderItem = SpecialFolder.Resource("Nova Dark.json")
		    Var theme As SyntaxArea.EditorTheme = SyntaxArea.EditorTheme.FromFile(themeFile)
		    CodeEditor.LoadTheme(theme)
		  Else
		    Var themeFile As FolderItem = SpecialFolder.Resource("Nova Light.json")
		    Var theme As SyntaxArea.EditorTheme = SyntaxArea.EditorTheme.FromFile(themeFile)
		    CodeEditor.LoadTheme(theme)
		  End If
		  
		  // Force the editor to update and re-highlight.
		  CodeEditor.MarkAllLinesAsChanged
		  
		End Sub
	#tag EndMethod

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
		Private Sub InitialiseAutocompleteEngine()
		  /// Initialises our basic autocomplete engine for Xojo keywords.
		  ///
		  /// You'll likely want to create a better one...
		  
		  MyAutocompleteEngine = New AutocompleteEngine(False)
		  
		  MyAutocompleteEngine.AddOption("#Else")
		  MyAutocompleteEngine.AddOption("#ElseIf")
		  MyAutocompleteEngine.AddOption("#End")
		  MyAutocompleteEngine.AddOption("#If")
		  MyAutocompleteEngine.AddOption("#Pragma")
		  MyAutocompleteEngine.AddOption("AddHandler")
		  MyAutocompleteEngine.AddOption("AddressOf")
		  MyAutocompleteEngine.AddOption("And")
		  MyAutocompleteEngine.AddOption("Array")
		  MyAutocompleteEngine.AddOption("As")
		  MyAutocompleteEngine.AddOption("Assigns")
		  MyAutocompleteEngine.AddOption("Break")
		  MyAutocompleteEngine.AddOption("ByRef")
		  MyAutocompleteEngine.AddOption("ByVal")
		  MyAutocompleteEngine.AddOption("Call")
		  MyAutocompleteEngine.AddOption("Case")
		  MyAutocompleteEngine.AddOption("Class")
		  MyAutocompleteEngine.AddOption("Const")
		  MyAutocompleteEngine.AddOption("Continue")
		  MyAutocompleteEngine.AddOption("CType")
		  MyAutocompleteEngine.AddOption("Declare")
		  MyAutocompleteEngine.AddOption("Delegate")
		  MyAutocompleteEngine.AddOption("Dim")
		  MyAutocompleteEngine.AddOption("Do")
		  MyAutocompleteEngine.AddOption("DownTo")
		  MyAutocompleteEngine.AddOption("Each")
		  MyAutocompleteEngine.AddOption("Else")
		  MyAutocompleteEngine.AddOption("ElseIf")
		  MyAutocompleteEngine.AddOption("End")
		  MyAutocompleteEngine.AddOption("Enum")
		  MyAutocompleteEngine.AddOption("Event")
		  MyAutocompleteEngine.AddOption("Exception")
		  MyAutocompleteEngine.AddOption("Exit")
		  MyAutocompleteEngine.AddOption("Extends")
		  MyAutocompleteEngine.AddOption("False")
		  MyAutocompleteEngine.AddOption("Finally")
		  MyAutocompleteEngine.AddOption("For")
		  MyAutocompleteEngine.AddOption("Function")
		  MyAutocompleteEngine.AddOption("Global")
		  MyAutocompleteEngine.AddOption("Goto")
		  MyAutocompleteEngine.AddOption("If")
		  MyAutocompleteEngine.AddOption("Implements")
		  MyAutocompleteEngine.AddOption("In")
		  MyAutocompleteEngine.AddOption("Inherits")
		  MyAutocompleteEngine.AddOption("Interface")
		  MyAutocompleteEngine.AddOption("Is")
		  MyAutocompleteEngine.AddOption("IsA")
		  MyAutocompleteEngine.AddOption("Lib")
		  MyAutocompleteEngine.AddOption("Loop")
		  MyAutocompleteEngine.AddOption("Me")
		  MyAutocompleteEngine.AddOption("Mod")
		  MyAutocompleteEngine.AddOption("Module")
		  MyAutocompleteEngine.AddOption("New")
		  MyAutocompleteEngine.AddOption("Next")
		  MyAutocompleteEngine.AddOption("Nil")
		  MyAutocompleteEngine.AddOption("Not")
		  MyAutocompleteEngine.AddOption("Object")
		  MyAutocompleteEngine.AddOption("Optional")
		  MyAutocompleteEngine.AddOption("Or")
		  MyAutocompleteEngine.AddOption("ParamArray")
		  MyAutocompleteEngine.AddOption("Private")
		  MyAutocompleteEngine.AddOption("Property")
		  MyAutocompleteEngine.AddOption("Protected")
		  MyAutocompleteEngine.AddOption("Public")
		  MyAutocompleteEngine.AddOption("Raise")
		  MyAutocompleteEngine.AddOption("RaiseEvent")
		  MyAutocompleteEngine.AddOption("Redim")
		  MyAutocompleteEngine.AddOption("Rem")
		  MyAutocompleteEngine.AddOption("RemoveHandler")
		  MyAutocompleteEngine.AddOption("Return")
		  MyAutocompleteEngine.AddOption("Select")
		  MyAutocompleteEngine.AddOption("Self")
		  MyAutocompleteEngine.AddOption("Shared")
		  MyAutocompleteEngine.AddOption("Static")
		  MyAutocompleteEngine.AddOption("Step")
		  MyAutocompleteEngine.AddOption("Structure")
		  MyAutocompleteEngine.AddOption("Sub")
		  MyAutocompleteEngine.AddOption("Super")
		  MyAutocompleteEngine.AddOption("Then")
		  MyAutocompleteEngine.AddOption("To")
		  MyAutocompleteEngine.AddOption("Try")
		  MyAutocompleteEngine.AddOption("Until")
		  MyAutocompleteEngine.AddOption("Using")
		  MyAutocompleteEngine.AddOption("Var")
		  MyAutocompleteEngine.AddOption("WeakAddressOf")
		  MyAutocompleteEngine.AddOption("Wend")
		  MyAutocompleteEngine.AddOption("With")
		  MyAutocompleteEngine.AddOption("Xor")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub loadFile()
		  me.Title = editedFile.Name + " from data folder"
		  
		  dim contents as TextInputStream 
		  
		  try
		    contents = editedFile.OpenAsTextFile
		    
		    codeEditor.text = contents.ReadAll
		    
		    btnSave.Enabled = true
		    btnTest.Enabled = true
		    
		  catch
		    Notify ("Error accesing file", "Could not open file """ + editedFile.ShellPath + """ for edition")
		    
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
		    Notify("Nothing was updated in the engine", "The file could not be written to the disk.")
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateBarsUsingFile()
		  dim filePath as string = Replace(editedFile.NativePath, hook.demo.GetDataFolderItem("").NativePath, "")
		  
		  dim barIDs() as string = hook.demo.getBarsWithText(ReplaceAll(filePath, "\", "/"))
		  
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

	#tag Property, Flags = &h21, Description = 4361636865732074686520696E646578206F6620746865206C696E65207468617420776173206C61737420616666656374656420627920612073656C656374696F6E206368616E676564206576656E742E
		Private LastSelectionChangedLine As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mFinishedInitialising As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		MyAutocompleteEngine As AutocompleteEngine
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
#tag Events verticalScrollBar
	#tag Event
		Sub ValueChanged()
		  CodeEditor.ScrollPosition = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events horizontalScrollBar
	#tag Event
		Sub ValueChanged()
		  CodeEditor.ScrollPositionX = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events codeEditor
	#tag Event
		Sub SelectionChanged(line As Integer, column As Integer, length As Integer)
		  LastSelectionChangedLine = line
		  
		End Sub
	#tag EndEvent
	#tag Event , Description = 54686520656469746F72206973206C6F6164696E6720612073796E74617820646566696E6974696F6E20746861742069732072657175657374696E67206120646566696E6974696F6E20657874656E73696F6E20776974682074686520737065636966696564206E616D652E20596F752073686F756C642072657475726E204E696C206966206E6F6E6520697320617661696C61626C652E
		Function RequestDefinitionExtension(name As String) As SyntaxArea.HighlightDefinition
		  /// The editor is loading a syntax definition and that definition is requesting another
		  /// definition named `name` (case-insensitive).
		  
		  // Try to load the requested definition from our bundled definition files.
		  Var defFile As FolderItem = SpecialFolder.Resource(name + ".xml")
		  
		  If defFile = Nil Or Not defFile.Exists Then
		    // Can't find a definition for this language.
		    Return Nil
		  End If
		  
		  // Try to parse the definition file into a syntax definition instance.
		  Try
		    Return SyntaxArea.HighlightDefinition.FromFile(defFile, CodeEditor)
		  Catch e As InvalidArgumentException
		    Raise New RuntimeException("Successfully found the requested definition extension " + _
		    "but the file contents are invalid: " + e.Message)
		  End Try
		  
		  
		  Return Nil
		  
		End Function
	#tag EndEvent
	#tag Event , Description = 54686520757365722069732072657175657374696E672074686520636F6D706C6574696F6E206F66206120636F646520626C6F636B20746578742E20546869732069732073657061726174652066726F6D206175746F636F6D706C6574696F6E20616E64206973207472696767657265642062792060436D642D456E746572602E20596F7520617265207061737365642074686520636F6E74656E7473206F66207468652063757272656E74206C696E6520616E64207468652063757272656E7420706F736974696F6E2028636F6C756D6E29206F6620746865206361726574206F6E2074686174206C696E652E20596F75206D61792063686F6F736520746F2072657475726E20617262697472617279207465787420746861742077696C6C20626520696E7365727465642061742074686520636172657427732063757272656E7420706F736974696F6E2E
		Function RequestCodeBlockCompletion(lineContents As String, caretPos As Integer, caretIsAtLineEnd As Boolean) As String
		  // This is a basic demonstration of how to implement code block completion.
		  // Returning nothing will not change the text in the editor.
		  
		  #Pragma Unused caretPos
		  
		  // In this demo we'll only offer code block completion for Xojo code.
		  If CodeEditor.SyntaxDefinition = Nil Or _
		    CodeEditor.SyntaxDefinition.Name <> "Xojo" Then
		    Return ""
		  End If
		  
		  // If the line begins with `if` and we're at the end of the line and that
		  // line doesn't end with `then` we'll autocomplete an empty `if` block.
		  If caretIsAtLineEnd And lineContents.BeginsWith("if ") And _
		    Not lineContents.Trim.EndsWith("then") Then
		    Return EndOfLine + EndOfLine + "End If"
		  End If
		End Function
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
		End Sub
	#tag EndEvent
	#tag Event
		Function AutocompleteOptionsForPrefix(prefix As String) As SyntaxArea.AutocompleteOptions
		  Var data As SyntaxArea.AutocompleteOptions
		  
		  If MyAutocompleteEngine <> Nil Then
		    data = MyAutocompleteEngine.OptionsForPrefix(prefix)
		  End If
		  
		  Return data
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  btnSave.Enabled = true
		  btnTest.Enabled = true
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyUp(key As String)
		  ' if key = decodeHex("3") and not Keyboard.AsyncControlKey then
		  ' // User pressed the ENTER key
		  ' // Apply the changes to the data folder
		  ' saveToDataFolder
		  ' 
		  ' updateBarsUsingFile
		  ' 
		  ' // No further processing to be done with the key
		  ' return true
		  ' 
		  ' elseif asc(key) = 9 then
		  ' // tab key pressed
		  ' me.Insert(me.CaretPos, "    ")
		  ' return true
		  ' 
		  ' elseif Keyboard.AsyncControlKey and key = decodehex("1A") then
		  ' me.Undo
		  ' 
		  ' elseif Keyboard.AsyncControlKey and key = DecodeHex("19") then
		  ' me.Redo
		  ' 
		  ' end if
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
