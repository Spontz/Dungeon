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
   Width           =   412
   Begin TextArea txtSectionScript
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   136
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c3F3F3F00
      TextFont        =   "Consolas"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   49
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   412
   End
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
      Left            =   289
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
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
      TextFont        =   "System"
      TextSize        =   12.0
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
      TextFont        =   "System"
      TextSize        =   12.0
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
      Width           =   126
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
      Left            =   289
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
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
      Top             =   206
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
      TextFont        =   "System"
      TextSize        =   12.0
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
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   185
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   126
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub activate()
		  btnApply.Enabled = false // Deactivated until a change happens
		  btnSaveTemplate.Enabled = true
		  
		  popElement.Enabled = true
		  popTemplate.Enabled = true
		  
		  mnuBlendEnd.Enabled = true
		  mnuBlendStart.Enabled = true
		  
		  txtSectionScript.Enabled = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub applyChanges()
		  // We save the undo item
		  // AddUndoAction
		  
		  dim barType as string
		  
		  // First of all we must determine if we are saving a new bar or updating a already existing bar
		  barType = demo.getBarType(barID)
		  
		  // We store the element name and the additional script
		  demo.setBarType(barID, ReplaceLineEndings(popElement.Text, EndOfLine.Windows))
		  demo.setBarScript(barID, txtSectionScript.text)
		  
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
		  
		  txtSectionScript.Enabled = false
		  txtSectionScript.Text = ""
		  
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
		    mnuBlendStart.listIndex = demo.getBarSrcBlendingID(theBarID)
		    mnuBlendEnd.listIndex = demo.getBarDstBlendingID(theBarID)
		    
		    // The element name and additional script
		    popElement.text = demo.getBarType(theBarID)
		    txtSectionScript.text = ReplaceLineEndings(demo.getBarScript(theBarID), EndOfLine)
		    
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
		  dim currentElement as String = popElement.text
		  
		  popElement.DeleteAllRows
		  popTemplate.DeleteAllRows
		  
		  dim f as new FolderItem
		  
		  f = f.child("Engines")
		  f = f.child("Dragon")
		  f = f.child("CodeTemplates")
		  
		  for i as integer = 1 to f.count
		    if f.item(i).Directory then
		      popElement.AddRow f.item(i).Name
		    end if
		  next
		  
		  // If exists, we select the previous item that was in the menu before reloading
		  if not (currentElement = "") then
		    for i as integer = 0 to popElement.ListCount - 1
		      if popElement.List(i) = currentElement then
		        popElement.ListIndex = i
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
		  dim f as folderitem = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  if f <> nil then
		    if f.exists then
		      Trace("cntCustom:LoadScriptTemplate: Found script of type " + popTemplate.Text + " for " + popElement.text, cstTraceLevelLog)
		      dim data as TextInputStream = f.OpenAsTextFile
		      txtSectionScript.text = data.readAll
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
		  
		  f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text)
		  
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


#tag EndWindowCode

#tag Events txtSectionScript
	#tag Event
		Sub TextChange()
		  if me.Text <> "" and barID <> "" then
		    btnApply.Enabled = true
		  else
		    btnApply.Enabled = false
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(key) = 3 then
		    // Apply the changes
		    applyChanges
		    
		    // No further processing to be done with the key
		    return true
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  if TargetWin32 then
		    me.TextSize = 12
		  else
		    me.TextSize = 10
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
		  
		  f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.Text)
		  
		  if not f.exists then f.CreateAsFolder
		  
		  f = GetFolderItem("Engines").child("Dragon").child("CodeTemplates").child(popElement.text).child(popTemplate.text + ".template")
		  
		  data = f.CreateTextFile
		  
		  if data <> nil then
		    data.Write txtSectionScript.text
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
