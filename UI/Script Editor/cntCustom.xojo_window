#tag Window
Begin ContainerControl cntCustom
   AcceptFocus     =   False
   AcceptTabs      =   False
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   246
   HelpTag         =   ""
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   32
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   32
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   548
   Begin PushButton btnApply
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Apply"
      Default         =   True
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   425
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
      Top             =   204
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin Label lblBarType
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
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bar type"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin ComboBox popElement
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   11
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   126
   End
   Begin Label lblScriptTemplate
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
      Left            =   149
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Script template"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin ComboBox popTemplate
      AutoComplete    =   False
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   149
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin PushButton btnSaveTemplate
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Save template"
      Default         =   False
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   425
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   17
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin popBlending mnuBlendStart
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   11
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   207
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin popBlending mnuBlendEnd
      AutoDeactivate  =   False
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   149
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   207
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin Label lblBlendSource
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
      Left            =   11
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Blend Source"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   186
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin Label lblBlendDestination
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
      Left            =   149
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Blend Destination"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   186
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin PopupMenu mnuBlendEquation
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   287
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   207
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin Label lblBlendEquation
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
      Left            =   287
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Blend Equation"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   186
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
   Begin DesktopScrollBar horizontalScrollBar
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowLiveScrolling=   False
      Enabled         =   True
      Height          =   16
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   166
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   532
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
      CaretLineIndex  =   0
      ClearHighlightedRangesOnTextChange=   True
      DirtyLinesColor =   &c00000000
      DisableReset    =   False
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
      GutterWidth     =   0
      HasBottomBorder =   True
      HasLeftBorder   =   True
      HasRightBorder  =   True
      HasTopBorder    =   True
      Height          =   118
      HighlightBlocksOnMouseOverGutter=   False
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   "SyntaxArea.BracketsHighlightModes.Circle"
      IgnoreRepaint   =   False
      IndentPixels    =   16
      Index           =   -2147483648
      InitialParent   =   ""
      InvisibleCharacterColor=   &c00000000
      KeepEntireTextIndented=   False
      Left            =   0
      LeftMarginOffset=   5
      LineHeight      =   0.0
      LineNumbersColor=   &c00000000
      LineNumbersFontName=   "Consolas"
      LineNumbersFontSize=   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      ReadOnly        =   False
      RightMarginAtPixel=   0
      RightScrollMargin=   150
      Scope           =   0
      ScrollPosition  =   0
      ScrollPositionX =   0
      SelectionLength =   0
      SelectionText   =   ""
      SuggestionPopupBackColor=   &c00000000
      SuggestionPopupSelectedTextColor=   &c00000000
      SuggestionPopupTextColor=   &c00000000
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TabWidth        =   0
      Text            =   ""
      TextHeight      =   0.0
      TextSelectionColor=   &c00000000
      ThickInsertionPoint=   False
      Tooltip         =   ""
      Top             =   48
      UseLighterLineFoldingBackColor=   True
      UseSystemTextSelectionColor=   True
      VerticalRulerColor=   &c00000000
      VerticalRulerPosition=   80
      Visible         =   True
      Width           =   532
   End
   Begin DesktopScrollBar verticalScrollBar
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowLiveScrolling=   False
      Enabled         =   True
      Height          =   118
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   532
      LineStep        =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   48
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   16
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub activate()
		  btnApply.Enabled        = false // Deactivated until a change happens
		  btnSaveTemplate.Enabled = true
		  
		  popElement.Enabled  = true
		  popTemplate.Enabled = true
		  
		  mnuBlendEnd.Enabled      = true
		  mnuBlendStart.Enabled    = true
		  mnuBlendEquation.Enabled = true
		  
		  codeEditor.Enabled = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub applyChanges()
		  // We save the undo item
		  // AddUndoAction
		  
		  // First of all we must determine if we are saving a new bar or updating a already existing bar
		  dim barType as string = demo.getBarType(barID)
		  
		  // We store the element name and the additional script
		  demo.setBarType(barID, ReplaceLineEndings(popElement.Text, EndOfLine.Windows))
		  demo.setBarScript(barID, codeEditor.text)
		  
		  // Notify the demo editor about the update
		  if barType = "" then
		    // We are creating a new bar
		    controller.createBar(barID)
		    
		    Trace("cntCustom:applyChanges: Bar " + barID + " created in engine.", cstTraceLevelLog)
		    
		  else
		    // We are updating an already existing bar
		    controller.updateBar(barID)
		    
		    Trace("cntCustom:applyChanges: Bar " + barID + " updated in engine.", cstTraceLevelLog)
		    
		  end if
		  
		  // Deactivate the Apply Button
		  btnApply.Enabled = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub deactivate()
		  btnApply.Enabled = false
		  btnSaveTemplate.Enabled = false
		  
		  popElement.Enabled = false
		  popTemplate.Enabled = false
		  
		  mnuBlendEnd.Enabled = false
		  mnuBlendStart.Enabled = false
		  
		  codeEditor.Enabled = false
		  codeEditor.Text = ""
		  
		  barID = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, theBarID as string)
		  dim theListIndex as integer
		  
		  demo = theDemo
		  
		  if thebarID <> "" then
		    dim barData as dictionary = demo.getBarData(theBarID)
		    
		    barID = ""
		    
		    // The blending menus
		    mnuBlendStart.listIndex    = demo.getBlendingID(barData.value("srcBlending"))
		    mnuBlendEnd.listIndex      = demo.getBlendingID(barData.value("dstBlending"))
		    mnuBlendEquation.listindex = demo.getBlendingEquationID(barData.value("blendingEQ"))
		    
		    // The element name and additional script
		    popElement.text = barData.value("type")
		    
		    codeEditor.Text = ReplaceLineEndings(barData.value("script"), EndOfLine)
		    
		    codeEditor.ReindentText // cleans up indentations, removing any leading blanks from the lines
		    'TODO: codeEditor.ResetUndo // needed so that the Reindentation doesn't become an undoable action
		    
		    // We populate the Elements menu
		    LoadElements
		    
		    activate
		    
		    barID = theBarID
		  else
		    
		    deactivate
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadElements()
		  dim currentElement  as String =  popElement.text
		  dim currentTemplate as string = popTemplate.text
		  
		  popElement.DeleteAllRows
		  popTemplate.DeleteAllRows
		  
		  dim f as new FolderItem
		  
		  f = f.child("Engines")
		  
		  f = f.child("Phoenix")
		  
		  f = f.child("CodeTemplates")
		  
		  for i as integer = 1 to f.count
		    if f.item(i).Directory then
		      popElement.AddRow f.item(i).Name
		    end if
		  next
		  
		  // If exists, we select the previous item that was in the elements menu before reloading
		  if not (currentElement = "") then
		    for i as integer = 0 to popElement.ListCount - 1
		      if popElement.List(i) = currentElement then
		        popElement.ListIndex = i
		        exit
		      end if
		    next
		  end if
		  
		  // If exists, we select the previous item that was in the template menu before reloading
		  if not (currentTemplate = "") then
		    for i as integer = 0 to popTemplate.ListCount - 1
		      if popTemplate.List(i) = currentTemplate then
		        popTemplate.ListIndex = i
		        exit
		      end if
		    next
		  end if
		  
		  App.DoEvents
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadScriptTemplate()
		  Trace("cntCustom:LoadScriptTemplate: Searching for script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		  
		  dim f as folderitem = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  if f <> nil then
		    if f.exists then
		      Trace("cntCustom:LoadScriptTemplate: Found script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		      dim data as TextInputStream = f.OpenAsTextFile
		      codeEditor.text = data.readAll
		      data.close
		    end if
		    
		  else
		    Trace("cntCustom:LoadScriptTemplate: No script was found", cstTraceLevelLog)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadTemplates()
		  dim f as folderitem
		  dim currentElement as String
		  
		  if popElement.text = "" then exit
		  
		  f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text)
		  
		  popTemplate.DeleteAllRows
		  
		  if f <> nil then
		    Trace("cntCustom:LoadTemplates: Found " + str(f.count) + " templates for bar " + popElement.text, cstTraceLevelLog)
		    
		    for i as integer = 1 to f.count
		      if not f.item(i).Directory and f.item(i).name.Left(1) <> "." then
		        if right(f.item(i).name, 9) = ".template" then
		          popTemplate.AddRow left(f.item(i).name, len(f.item(i).name) - 9)
		        end if
		      end if
		    next
		    
		  else
		    Trace("cntCustom:LoadTemplates: No templates found for bar " + popElement.text, cstTraceLevelLog)
		    
		  end if
		  
		  App.DoEvents
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected barID As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastLine As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events btnApply
	#tag Event
		Sub Action()
		  'TODO: codeEditor.ResetUndoDirtyFlag
		  
		  applyChanges
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popElement
	#tag Event
		Sub Change()
		  LoadTemplates
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  LoadTemplates
		  
		  if me.text = "" or popTemplate.text = "" then
		    btnSaveTemplate.enabled = false
		  else
		    btnSaveTemplate.enabled = true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popTemplate
	#tag Event
		Sub Change()
		  LoadScriptTemplate
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  LoadScriptTemplate
		  
		  if me.text = "" or popElement.text = "" then
		    btnSaveTemplate.enabled = false
		  else
		    btnSaveTemplate.enabled = true
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSaveTemplate
	#tag Event
		Sub Action()
		  dim f as folderitem
		  dim data as TextOutputStream
		  
		  f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.Text)
		  if not f.exists then f.CreateAsFolder
		  f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  data = f.CreateTextFile
		  
		  if data <> nil then
		    data.Write codeEditor.text
		    data.close
		  end if
		  
		  me.Enabled = false
		  
		  LoadElements
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnuBlendStart
	#tag Event
		Sub Change()
		  if barID > "" and me.ListIndex > -1 and me.ListCount > 0 then
		    AddUndoAction
		    
		    // Set the new blending
		    demo.SetBlendingSource(barID, me.Listindex)
		    
		    // Notify the demo editor about the update
		    controller.updateBar(barID)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnuBlendEnd
	#tag Event
		Sub Change()
		  if barID > "" and me.ListIndex > -1 and me.ListCount > 0 then
		    AddUndoAction
		    
		    // Set the new blending
		    demo.SetBlendingDestination(barID, me.Listindex)
		    
		    // Notify the demo editor about the update
		    controller.updateBar(barID)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events mnuBlendEquation
	#tag Event
		Sub Change()
		  if barID > "" and me.ListIndex > -1 and me.ListCount > 0 then
		    AddUndoAction
		    
		    // Set the new blending
		    demo.SetBlendingEquation(barID, me.Listindex)
		    
		    // Notify the demo editor about the update
		    controller.updateBar(barID)
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  //We add the rows to the menu
		  me.addrow "Add"
		  me.addrow "Subtract"
		  me.addrow "Reverse subtract"
		  
		  //We select the primer index to avoid blank selections
		  me.listindex = 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events horizontalScrollBar
	#tag Event
		Sub ValueChanged()
		  codeEditor.ScrollPositionx = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events codeEditor
	#tag Event
		Sub TextChanged()
		  if me.Text <> "" and barID <> "" then
		    btnApply.Enabled = true
		  else
		    btnApply.Enabled = false
		  end if
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
		  
		  If Not syntaxDefinition.LoadFromXml(SpecialFolder.Resource("Script.xml")) Then
		    Raise New UnsupportedOperationException("Unable to load the GLSL definition")
		    
		  else
		    CodeEditor.SyntaxDefinition = syntaxDefinition
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events verticalScrollBar
	#tag Event
		Sub ValueChanged()
		  codeEditor.ScrollPosition = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
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
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue=""
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
