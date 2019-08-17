#tag Window
Begin Window wndChooseDemoengine
   BackColor       =   &c19191900
   Backdrop        =   411394047
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   448
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   "Dungeon Demo Editor"
   Visible         =   True
   Width           =   512
   Begin RoundRectangle rctOpenExistingDemo
      AutoDeactivate  =   True
      BorderColor     =   &c7F7F7F00
      BorderWidth     =   2
      Enabled         =   True
      FillColor       =   &c3F3F3F00
      Height          =   34
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   141
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      OvalHeight      =   16
      OvalWidth       =   16
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   401
      Transparent     =   True
      Visible         =   True
      Width           =   230
      Begin Label lblOpenExistingDemo
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   31
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rctOpenExistingDemo"
         Italic          =   False
         Left            =   153
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
         Text            =   "Open existing demo"
         TextAlign       =   1
         TextColor       =   &cBFBFBF00
         TextFont        =   "System"
         TextSize        =   20.0
         TextUnit        =   0
         Top             =   401
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   206
      End
   End
   Begin Label lblDragon
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   78
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   28
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Dragon"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Gold Under The Mud"
      TextSize        =   70.0
      TextUnit        =   0
      Top             =   303
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   198
   End
   Begin Label lblPhoenix
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   55
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   290
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   50
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Phoenix"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Nemesis Grant"
      TextSize        =   50.0
      TextUnit        =   0
      Top             =   320
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   189
   End
   Begin Label lblChooseWisely
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   34
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Choose wisely"
      TextAlign       =   1
      TextColor       =   &cBFBFBF00
      TextFont        =   "System"
      TextSize        =   20.0
      TextUnit        =   0
      Top             =   87
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub dragon()
		  dim demoFile as new FolderItem
		  
		  demoFile = demoFile.child("Engines")
		  
		  if not demofile.Exists then
		    Notify("Engines folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("Dragon")
		  
		  if not demofile.Exists then
		    Notify("Dragon folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("ProjectTemplates")
		  
		  if not demofile.Exists then
		    Notify("Dragon project Templates folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("Default.sqlite")
		  
		  if not demofile.Exists then
		    Notify("Dragon default project database could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  Dim myWndTimeLine As New wndTimeLine
		  
		  // Load the project
		  myWndTimeLine.init(demofile)
		  
		  // And close the selector window
		  self.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openProject()
		  Dim file As folderitem = Chooseproject
		  
		  If file <> Nil Then
		    // Load the project
		    dim mywindow as new wndTimeLine
		    myWindow.init(file)
		    
		    // And close the selector window
		    Self.close
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub phoenix()
		  dim demoFile as new FolderItem
		  
		  demoFile = demoFile.child("Engines")
		  
		  if not demofile.Exists then
		    Notify("Engines folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("Phoenix")
		  
		  if not demofile.Exists then
		    Notify("Phoenix folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("ProjectTemplates")
		  
		  if not demofile.Exists then
		    Notify("Phoenix project templates folder could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  demoFile = demoFile.child("Default.sqlite")
		  
		  if not demofile.Exists then
		    Notify("Default dragon database could not be found", demofile.ShellPath)
		    return
		  end if
		  
		  Dim myWndTimeLine As New wndTimeLine
		  
		  // Load the project
		  myWndTimeLine.init(demofile)
		  
		  // And close the selector window
		  self.close
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events rctOpenExistingDemo
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  openProject
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblOpenExistingDemo
	#tag Event
		Sub MouseEnter()
		  me.TextColor = &cFF0000
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.TextColor = &cFFFFFF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblDragon
	#tag Event
		Sub MouseEnter()
		  me.TextColor = &cFF0000
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.TextColor = &cFFFFFF
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Dragon
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lblPhoenix
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  phoenix
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.TextColor = &cFF0000
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.TextColor = &cFFFFFF
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
		InitialValue="True"
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
