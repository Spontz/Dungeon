#tag Window
Begin Window wndDirectCommand
   BackColor       =   16777215
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   274
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   400533503
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "Direct Command"
   Visible         =   True
   Width           =   300
   Begin TextField txtServer
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   59
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "localhost:28000"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   16
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   226
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   8
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Server"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   16
      Underline       =   ""
      Visible         =   True
      Width           =   39
   End
   Begin TextArea txtCommand
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   172
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   55
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   300
   End
   Begin PushButton btnSend
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Send"
      ControlOrder    =   3
      Default         =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   205
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   ""
      LockRight       =   True
      LockTop         =   ""
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   240
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin classConnector myConnector
      Address         =   "localhost"
      ControlOrder    =   4
      Index           =   -2147483648
      Left            =   8
      LockedInPosition=   False
      Port            =   28000
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   64
   End
   Begin Label lblResult
      AutoDeactivate  =   True
      Bold            =   ""
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   ""
      Multiline       =   ""
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   0
      TextColor       =   8355711
      TextFont        =   "System"
      TextSize        =   10
      Top             =   242
      Underline       =   ""
      Visible         =   True
      Width           =   184
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub sendMessage(theMessage as String)
		  myConnector.SendMessage theMessage
		  myConnector.Connect
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events txtServer
	#tag Event
		Sub TextChange()
		  // When a key is pressed, automatically set the properties of the connector
		  myConnector.Address = NthField(me.Text, ":", 1)
		  myConnector.Port = val(NthField(me.Text, ":", 2))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtCommand
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  'if asc(key) = 13 then
		  '// The return key has been pressed, so let's send the field contents
		  'sendMessage txtCommand.text
		  '
		  '// No further procesing with the key
		  'return true
		  'end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnSend
	#tag Event
		Sub Action()
		  sendMessage txtCommand.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events myConnector
	#tag Event
		Sub DataAvailable(theData as String)
		  lblResult.text = NthField(theData, myConnector.paramSeparator, 1) + " " + _
		  NthField(theData, myConnector.paramSeparator, 2) + " " + _
		  NthField(theData, myConnector.paramSeparator, 3)
		End Sub
	#tag EndEvent
#tag EndEvents
