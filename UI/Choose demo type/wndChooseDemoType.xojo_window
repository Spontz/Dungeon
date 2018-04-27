#tag Window
Begin Window wndChooseDemoType
   BackColor       =   &c19191900
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   True
   Height          =   400
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
   Title           =   ""
   Visible         =   False
   Width           =   600
   Begin RoundRectangle rctWebGL
      AutoDeactivate  =   True
      BorderColor     =   &c7F7F7F00
      BorderWidth     =   2
      Enabled         =   True
      FillColor       =   &c3F3F3F00
      Height          =   128
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   319
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      OvalHeight      =   16
      OvalWidth       =   16
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      Top             =   94
      Transparent     =   False
      Visible         =   True
      Width           =   230
      Begin Label lblWebGL
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rctWebGL"
         Italic          =   False
         Left            =   331
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "New webGL demo"
         TextAlign       =   1
         TextColor       =   &cBFBFBF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   206
      End
      Begin Canvas Canvas2
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   388102227
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   72
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rctWebGL"
         Left            =   354
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   108
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   168
      End
   End
   Begin Label lblChooseYourDemo
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Choose your demo type"
      TextAlign       =   1
      TextColor       =   &cBFBFBF00
      TextFont        =   "System"
      TextSize        =   20.0
      TextUnit        =   0
      Top             =   29
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   238
   End
   Begin RoundRectangle rctOpenGL
      AutoDeactivate  =   True
      BorderColor     =   &c7F7F7F00
      BorderWidth     =   2
      Enabled         =   True
      FillColor       =   &c3F3F3F00
      Height          =   128
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   51
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      OvalHeight      =   16
      OvalWidth       =   16
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      Top             =   94
      Transparent     =   False
      Visible         =   True
      Width           =   230
      Begin Label lblOpenGL
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rctOpenGL"
         Italic          =   False
         Left            =   63
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "New openGL demo"
         TextAlign       =   1
         TextColor       =   &cBFBFBF00
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   192
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   206
      End
      Begin Canvas Canvas1
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   342177641
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   72
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "rctOpenGL"
         Left            =   87
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   109
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   168
      End
   End
   Begin RoundRectangle rctOpenExistingDemo
      AutoDeactivate  =   True
      BorderColor     =   &c7F7F7F00
      BorderWidth     =   2
      Enabled         =   True
      FillColor       =   &c3F3F3F00
      Height          =   79
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   189
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
      Top             =   245
      Transparent     =   False
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
         Left            =   201
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
         Top             =   271
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   206
      End
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
      Top             =   339
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   238
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  openGL
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub openGL()
		  Dim demo As classDemo
		  Dim demoFile As New FolderItem
		  
		  demoFile = demoFIle.child("Engines")
		  demoFile = demoFIle.child("openGL")
		  demoFile = demoFIle.child("ProjectTemplates")
		  demoFile = demoFIle.child("Default.sqlite")
		  
		  demo = New classDemo(demoFile, demo.openGL)
		  
		  Dim myWndTimeLine As New wndTimeLine
		  
		  // Load the project
		  myWndTimeLine.init(demo)
		  
		  // And close the selector window
		  self.close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openProject()
		  Dim file As folderitem = Chooseproject
		  
		  If file <> Nil Then
		    Dim demo As classDemo
		    Dim demoFile As New FolderItem
		    
		    demoFile = demoFIle.child("Engines")
		    demoFile = demoFIle.child("openGL")
		    demoFile = demoFIle.child("ProjectTemplates")
		    demoFile = demoFIle.child("Empty")
		    demoFile = demoFIle.child("Empty Project.spo")
		    
		    demo = New classDemo(demoFile, demo.openGL)
		    
		    Dim newTimeline As New wndTimeLine
		    
		    // Load the project
		    newTimeline.init(demo)
		    
		    // And close the selector window
		    Self.close
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub webGL()
		  Dim demo As classDemo
		  Dim demoFile As New FolderItem
		  
		  demoFile = demoFIle.child("Engines")
		  demoFile = demoFIle.child("webGL")
		  demoFile = demoFIle.child("ProjectTemplates")
		  demoFile = demoFIle.child("Empty")
		  demoFile = demoFIle.child("Empty Project.spo")
		  
		  demo = New classDemo(demoFile, demo.webGL)
		  
		  Dim myWndTimeLine As New wndTimeLine
		  
		  // Load the project
		  myWndTimeLine.init(demo)
		  
		  // And close the selector window
		  self.close
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events rctWebGL
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  webGL
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rctOpenGL
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  openGL
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events rctOpenExistingDemo
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  openProject
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
