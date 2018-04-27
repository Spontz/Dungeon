#tag Window
Begin Window wndTextEditor
   BackColor       =   &cF2F2F200
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   434
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   True
   MinWidth        =   528
   Placement       =   3
   Resizeable      =   True
   Title           =   "Text Editor"
   Visible         =   True
   Width           =   528
   Begin PushButton btnSaveBoth
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save both"
      Default         =   True
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   422
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin PushButton btnSaveData
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save data"
      Default         =   False
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   324
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
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin PushButton btnSavePool
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Save pool"
      Default         =   False
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   226
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin TextArea txtFileContents
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
      Height          =   349
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   32
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
      ScrollbarVertical=   False
      Styled          =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c3F3F3F00
      TextFont        =   "Courier"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   33
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   480
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
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
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   86
   End
   Begin Canvas cnvLineNumbers
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      Height          =   334
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   33
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   32
   End
   Begin popTextDataFiles popTextDataFiles
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   308
      ListIndex       =   0
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
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin popTextPoolFiles popTextPoolFiles
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   59
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin Label StaticText1
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
      Left            =   7
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "pool"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   40
   End
   Begin Label StaticText2
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
      Left            =   260
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "data"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   40
   End
   Begin ScrollBar scrBarVertical
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   334
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   512
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   33
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin CheckBox chkAutoUpload
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Auto Upload"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   "If checked, the selected currently selected sections are uploaded to the engine when the Save data or Save both button are pressed"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   115
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      State           =   1
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   398
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   99
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  state = "editing"
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub init(poolFile as folderitem, theHook as wndTimeLine)
		  dim i as integer
		  
		  theLocalPath = Files.GetRelativePathName(poolFile)
		  theParent = "pool"
		  
		  hook = theHook
		  
		  loadFile
		  
		  // Adjust the pool and data menus
		  popTextDataFiles.init(hook.demo)
		  popTextPoolFiles.init(hook.demo)
		  
		  state = "switching"
		  
		  // Pool files popup menu
		  popTextPoolFiles.ListIndex = -1
		  
		  for i=0 to popTextPoolFiles.ListCount - 1
		    if popTextPoolFiles.list(i) = theLocalPath then
		      popTextPoolFiles.ListIndex = i
		      exit
		    end if
		  next
		  
		  // Data files popup menu
		  popTextDataFiles.ListIndex = -1
		  
		  for i=0 to popTextDataFiles.ListCount - 1
		    if popTextDataFiles.list(i) = theLocalPath then
		      popTextDataFiles.ListIndex = i
		      exit
		    end if
		  next
		  
		  state = "editing"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub loadFile()
		  'dim contents as TextInputStream
		  'dim theFile as FolderItem
		  '
		  'if theParent = "pool" then
		  'theFile = hook.demo.GetPoolFolderItem(theLocalPath)
		  'me.Title = theFile.Name + " from pool folder"
		  '
		  'else
		  'theFile = hook.demo.GetDataFolderItem(theLocalPath)
		  'me.Title = theFile.Name + " from data folder"
		  'end if
		  '
		  'theFileName = theFile.name
		  '
		  'contents = theFile.OpenAsTextFile
		  'txtFileContents.text = contents.ReadAll
		  'contents.Close
		  '
		  'btnSaveBoth.Enabled = true
		  'btnSaveData.Enabled = true
		  'btnSavePool.Enabled = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub saveToData()
		  dim theFile as FolderItem
		  dim shellPath as string
		  dim contents as TextOutputStream
		  
		  // Get the path to the file
		  shellPath = hook.demo.GetDataFolder.child("pool").ShellPath + "/" + theLocalPath
		  theFile = GetForcedFolderItem(shellPath)
		  theFile = theFile.Child(theFileName)
		  
		  // If the file exists, delete it
		  if theFile.Exists then theFile.Delete
		  
		  // Save the contents to the file
		  contents = theFile.CreateTextFile
		  contents.Write ReplaceLineEndings(txtFileContents.text, EndOfLine.Unix)
		  contents.Flush
		  contents.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub saveToPool()
		  'dim theFile as FolderItem
		  'dim shellPath as string
		  'dim contents as TextOutputStream
		  '
		  '// Get the path to the file
		  'shellPath = hook.demo.GetPoolFolder.ShellPath + "/" + theLocalPath
		  'theFile = GetForcedFolderItem(shellPath)
		  'theFile = theFile.Child(theFileName)
		  '
		  '// If the file exists, delete it
		  'if theFile.Exists then theFile.Delete
		  '
		  '// Save the contents to the file
		  'contents = theFile.CreateTextFile
		  'contents.Write ReplaceLineEndings(txtFileContents.text, EndOfLine.Unix)
		  'contents.Flush
		  'contents.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub updateScrollBar()
		  dim currentNumberOfLines as integer
		  dim maxVisibleLines as integer
		  
		  txtFileContents.Text = ReplaceAll(txtFileContents.text, chr(10), chr(13))
		  currentNumberOfLines = CountFields(txtFileContents.text, chr(13))
		  maxVisibleLines = floor((txtFileContents.Height - 16)/ txtFileContents.TextSize)
		  
		  if maxVisibleLines > currentNumberOfLines then
		    scrBarVertical.Maximum = 0
		  else
		    scrBarVertical.Maximum = currentNumberOfLines - maxVisibleLines
		  end if
		  
		  scrBarVertical.Value = txtFileContents.ScrollPosition
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private hook As wndTimeLine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private state As String = "initing"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theFileName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theLocalPath As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private theParent As String
	#tag EndProperty


#tag EndWindowCode

#tag Events btnSaveBoth
	#tag Event
		Sub Action()
		  saveToPool
		  saveToData
		  
		  if chkAutoUpload.Value then hook.updateSelectedSections()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSaveData
	#tag Event
		Sub Action()
		  saveToData
		  
		  if chkAutoUpload.Value then hook.UpdateSelectedSections
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSavePool
	#tag Event
		Sub Action()
		  saveToPool
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtFileContents
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  dim vNewPosition as integer
		  dim hNewPosition as integer
		  
		  vNewPosition = me.ScrollPosition + deltaY
		  
		  if vNewPosition < 0 then
		    vNewPosition = 0
		  elseif vNewPosition > scrBarVertical.Maximum then
		    vNewPosition = scrBarVertical.Maximum
		  end if
		  
		  me.ScrollPosition = vNewPosition
		  
		  updateScrollBar
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(key) = 3 then
		    // Apply the changes
		    saveToData
		    saveToPool
		    
		    if chkAutoUpload.Value then hook.UpdateSelectedSections
		    
		    // No further processing to be done with the key
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvLineNumbers
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  dim y as integer
		  dim lineNumber as integer
		  dim theStringWidth as integer
		  
		  lineNumber = scrBarVertical.Value + 1
		  
		  me.Graphics.ForeColor = &ce0e0e0
		  
		  me.Graphics.FillRect (0,0,me.Width, me.Height)
		  
		  me.Graphics.TextFont = "Arial"
		  me.Graphics.TextSize = 9
		  me.Graphics.ForeColor = &c666666
		  
		  for y=txtFileContents.TextSize to me.Height + txtFileContents.TextSize Step txtFileContents.TextSize
		    theStringWidth = me.Graphics.StringWidth(str(lineNumber))
		    
		    me.Graphics.DrawString (str(lineNumber), me.Width - theStringWidth - 2, y + 1)
		    lineNumber = lineNumber + 1
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popTextDataFiles
	#tag Event
		Sub Change()
		  dim i as integer
		  
		  if state = "initing" then
		    me.ListIndex = -1
		    
		  elseif state = "editing" then
		    theLocalPath = me.list(me.ListIndex)
		    theParent = "data"
		    loadFile
		    
		    state = "switching"
		    
		    popTextPoolFiles.ListIndex = -1
		    
		    for i=0 to popTextPoolFiles.ListCount - 1
		      if popTextPoolFiles.list(i) = theLocalPath then
		        popTextPoolFiles.ListIndex = i
		        exit
		      end if
		    next
		    
		    state = "editing"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popTextPoolFiles
	#tag Event
		Sub Change()
		  dim i as integer
		  
		  if state = "initing" then
		    me.ListIndex = -1
		    
		  elseif state = "editing" then
		    theLocalPath = me.list(me.ListIndex)
		    theParent = "pool"
		    loadFile
		    
		    state = "switching"
		    
		    popTextDataFiles.ListIndex = -1
		    
		    for i=0 to popTextDataFiles.ListCount - 1
		      if popTextDataFiles.list(i) = theLocalPath then
		        popTextDataFiles.ListIndex = i
		        exit
		      end if
		    next
		    
		    state = "editing"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scrBarVertical
	#tag Event
		Sub ValueChanged()
		  cnvLineNumbers.Refresh
		  txtFileContents.ScrollPosition = me.Value
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
