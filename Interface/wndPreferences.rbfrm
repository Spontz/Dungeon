#tag Window
Begin Window wndPreferences
   BackColor       =   15987699
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   85
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   True
   Title           =   "Preferences"
   Visible         =   False
   Width           =   300
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      Multiline       =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "No preferences at this time! :)"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   260
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      ControlOrder    =   1
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
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   46
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   2
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   46
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  // Set the engine to use
		  
		  window.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  window.Close
		End Sub
	#tag EndEvent
#tag EndEvents
