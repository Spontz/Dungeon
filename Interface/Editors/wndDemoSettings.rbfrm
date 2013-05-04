#tag Window
Begin Window wndDemoSettings
   BackColor       =   15987699
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   141
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   False
   Title           =   "Demo Settings"
   Visible         =   False
   Width           =   295
   Begin PushButton PushButton1
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   211
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   104
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton PushButton2
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   130
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   104
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   15
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Name:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   15
      Underline       =   False
      Visible         =   True
      Width           =   44
   End
   Begin TextField txtDemoName
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   64
      LimitText       =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   216
   End
   Begin CheckBox chkLoopMode
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Loop mode"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   47
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   98
   End
   Begin CheckBox CheckBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Configuration Window (Windows Only)"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   72
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   260
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  txtDemoName.text = demo.GetDemoName
		  chkLoopMode.value = demo.GetDemoLoopMode
		  
		  me.Visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty


#tag EndWindowCode

#tag Events PushButton1
	#tag Event
		Sub Action()
		  demo.SetDemoName (txtDemoName.text)
		  demo.SetDemoLoopMode (chkLoopMode.value)
		  
		  self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  wndDemoSettings.close
		End Sub
	#tag EndEvent
#tag EndEvents
