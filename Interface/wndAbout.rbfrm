#tag Window
Begin Window wndAbout
   BackColor       =   16777215
   Backdrop        =   1775445212
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   4
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   480
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   False
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   False
   Title           =   "About Spöntz Visuals Editor"
   Visible         =   True
   Width           =   640
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   11
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   4
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Spöntz Inferno Editor  ©2003-2009"
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   5
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   202
   End
   Begin Label txtVersion
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   11
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   433
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Version 2.0.0.0.0.0"
      TextAlign       =   2
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   10
      TextUnit        =   0
      Top             =   5
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   202
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   262
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   42
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Editor Programming\rIván Fernández\r\rEngine Programming\rIván Fernández\rPere Felices\rIsaac Lascasas\r\rLoading Screen\rEstefanía Soria"
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   12
      TextUnit        =   0
      Top             =   145
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   241
   End
   Begin BevelButton BevelButton1
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   0
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Visit Website"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   ""
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   ""
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   493
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   ""
      Top             =   438
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   127
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  window.close
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events txtVersion
	#tag Event
		Sub Open()
		  me.text = "Version " + str(App.MajorVersion) + "." + str(App.MinorVersion) + "." + str(App.BugVersion) + "." + str(App.StageCode) + "." + str(App.NonReleaseVersion)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton1
	#tag Event
		Sub Action()
		  ShowURL("http://www.spontz.org")
		End Sub
	#tag EndEvent
#tag EndEvents
