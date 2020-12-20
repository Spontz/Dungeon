#tag Window
Begin ContainerControl cntCustom
   AcceptFocus     =   False
   AcceptTabs      =   False
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   246
   HelpTag         =   ""
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
      ButtonStyle     =   "0"
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
      Transparent     =   False
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
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   262
   End
   Begin PushButton btnSaveTemplate
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
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
      Transparent     =   False
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
      Transparent     =   False
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
      Transparent     =   False
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
   Begin ScrollBar horizontalSB
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
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   166
      Transparent     =   True
      Value           =   0
      Visible         =   False
      Width           =   532
   End
   Begin CustomEditField TestField
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoCloseBrackets=   False
      AutocompleteAppliesStandardCase=   True
      AutoDeactivate  =   True
      AutoIndentNewLines=   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Border          =   False
      BorderColor     =   &c88888800
      BracketHighlightColor=   &cFFFF0000
      CaretColor      =   &c00000000
      CaretLine       =   0
      CaretPos        =   0
      ClearHighlightedRangesOnTextChange=   False
      DirtyLinesColor =   &cFF999900
      disableReset    =   False
      DisplayDirtyLines=   True
      DisplayInvisibleCharacters=   False
      DisplayLineNumbers=   True
      DisplayRightMarginMarker=   False
      DoubleBuffer    =   False
      EnableAutocomplete=   True
      Enabled         =   True
      EnableLineFoldings=   True
      enableLineFoldingSetting=   False
      EraseBackground =   True
      GutterBackgroundColor=   &cEEEEEE00
      GutterSeparationLineColor=   &c88888800
      GutterWidth     =   0
      Height          =   118
      HelpTag         =   ""
      HighlightBlocksOnMouseOverGutter=   True
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   0
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
      LineNumbersTextSize=   9
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
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TabWidth        =   4
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "smallSystem"
      TextHeight      =   0
      TextLength      =   0
      TextSelectionColor=   &c00000000
      TextSize        =   0
      ThickInsertionPoint=   True
      Top             =   48
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   532
   End
   Begin ScrollBar verticalSB
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   118
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   532
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   48
      Transparent     =   True
      Value           =   0
      Visible         =   False
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
		  
		  TestField.Enabled = true
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
		  demo.setBarScript(barID, TestField.text)
		  
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
		  
		  TestField.Enabled = false
		  TestField.Text = ""
		  
		  barID = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, theBarID as string)
		  dim theListIndex as integer
		  
		  demo = theDemo
		  
		  if thebarID <> "" then
		    barID = ""
		    
		    // The blending menus
		    mnuBlendStart.listIndex    = demo.getBlendingID(demo.getBarSrcBlending             (theBarID))
		    mnuBlendEnd.listIndex      = demo.getBlendingID(demo.getBarDstBlending             (theBarID))
		    mnuBlendEquation.listindex = demo.getBlendingEquationID(demo.getBarBlendingEquation(theBarID))
		    
		    // The element name and additional script
		    popElement.text = demo.getBarType(theBarID)
		    
		    TestField.Text = ReplaceLineEndings(demo.getBarScript(theBarID), EndOfLine)
		    
		    TestField.ReindentText // cleans up indentations, removing any leading blanks from the lines
		    TestField.ResetUndo // needed so that the Reindentation doesn't become an undoable action
		    
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
		  
		  select case demo.engine
		    
		  case demo.dragon
		    f = f.child("Dragon")
		    
		  case demo.phoenix
		    f = f.child("Phoenix")
		    
		  end select
		  
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
		  
		  dim f as folderitem
		  
		  select case demo.engine
		    
		  case demo.dragon
		    f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		    
		  case demo.phoenix
		    f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		    
		  end select
		  
		  if f <> nil then
		    if f.exists then
		      Trace("cntCustom:LoadScriptTemplate: Found script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		      dim data as TextInputStream = f.OpenAsTextFile
		      TestField.text = data.readAll
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
		  
		  select case demo.engine
		    
		  case demo.dragon
		    f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text)
		    
		  case demo.phoenix
		    f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text)
		    
		  end select
		  
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

	#tag Method, Flags = &h1
		Protected Sub reloadBookmarks()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub toggleBookmark()
		  if TestField.LineHasBookmark(TestField.CaretLine) then
		    TestField.ClearBookmark(TestField.CaretLine)
		  else
		    TestField.AddBookmark(TestField.CaretLine)
		  end if
		  
		  reloadBookmarks
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
		  
		  select case demo.engine
		    
		  case demo.dragon
		    f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.Text)
		    if not f.exists then f.CreateAsFolder
		    f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		    
		  case demo.phoenix
		    f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.Text)
		    if not f.exists then f.CreateAsFolder
		    f = GetFolderItem("Engines").child("Phoenix").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		    
		  end Select
		  
		  data = f.CreateTextFile
		  
		  if data <> nil then
		    data.Write TestField.text
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
#tag Events horizontalSB
	#tag Event
		Sub ValueChanged()
		  testField.ScrollPositionx = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TestField
	#tag Event
		Sub Open()
		  //set the scrollbars
		  me.setScrollbars(horizontalSB, verticalSB)
		  
		  TestField.ClearDirtyLines
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ShouldTriggerAutocomplete(Key as string, hasAutocompleteOptions as boolean) As boolean
		  'Return Keyboard.AsyncKeyDown(53) //to use ESC (xcode, mail, coda...)
		  Return key = chr(9) and hasAutocompleteOptions and not Keyboard.OptionKey//to use tab, if there are options
		  'Return Keyboard.AsyncControlKey and Keyboard.AsyncKeyDown(49) //to use ctrl-space as in visual studio
		  'Return false 'no autocomplete, ever
		End Function
	#tag EndEvent
	#tag Event
		Sub SelChanged(line as integer, column as integer, length as integer)
		  dim tmp as String = str(line)+":"+str(column)
		  if length > 0 then tmp = tmp + " ("+str(length)+")"
		  
		  lastLine = line
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  if me.Text <> "" and barID <> "" then
		    btnApply.Enabled = true
		  else
		    btnApply.Enabled = false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function UseBackgroundColorForLine(lineIndex as integer, byref lineBackgroundColor as color) As boolean
		  //Return false //remove this to have lines with alternate colors as background.
		  
		  
		  //highlight the currentLine.
		  if lineIndex = me.CaretLine then
		    lineBackgroundColor = &cFFFEE4 //light yellow
		    Return true
		  end if
		  
		  Return true //remove this to go back to alternating blue-white lines
		  
		  //alternate backgrounds...
		  if lineIndex mod 2 <> 0 then Return False
		  
		  lineBackgroundColor = RGB(237,243,255) //faint blue
		  Return true
		End Function
	#tag EndEvent
	#tag Event
		Sub PaintBelowLine(lineIndex as integer, g as graphics, x as integer, y as integer, w as integer, h as integer)
		  if lineIndex <> me.CaretLine then Return
		  
		  g.ForeColor = &CCCCCCC
		  g.DrawLine x, y + h - 1, x + w, y + h - 1
		  g.DrawLine x, y , x + w, y
		End Sub
	#tag EndEvent
	#tag Event
		Sub GutterClicked(onLine as integer, x as integer, y as integer)
		  #pragma unused onLine
		  #pragma unused x
		  #pragma unused y
		  if x < 10 then _
		  toggleBookmark
		End Sub
	#tag EndEvent
	#tag Event
		Sub PlaceholderSelected(placeholderLabel as String, lineIndex as integer, line as textLine, placeholder as textPlaceholder, doubleClick as Boolean)
		  #pragma unused placeholderLabel
		  #pragma unused lineIndex
		  #pragma unused line
		  #pragma unused placeholder
		  #pragma unused doubleClick
		  //I guess you could use placeholders as buttons somehow here...
		  'if doubleClick then
		  'me.SelText = placeholderLabel
		  'me.SelStart = line.offset + placeholder.offset
		  'me.SelLength = placeholderLabel.len
		  'end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events verticalSB
	#tag Event
		Sub ValueChanged()
		  testField.ScrollPosition = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
