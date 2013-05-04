#tag Window
Begin Window wndAddEditEngine
   BackColor       =   15921906
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   149
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Add Demoengine"
   Visible         =   False
   Width           =   300
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Add"
      ControlOrder    =   0
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   198
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   109
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   1
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   100
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   109
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "IP Address"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   46
      Underline       =   ""
      Visible         =   True
      Width           =   79
   End
   Begin Label StaticText2
      AutoDeactivate  =   True
      Bold            =   ""
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Port"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   77
      Underline       =   ""
      Visible         =   True
      Width           =   79
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   ""
      ControlOrder    =   4
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Name"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   14
      Underline       =   ""
      Visible         =   True
      Width           =   79
   End
   Begin TextField txtEngineName
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      ControlOrder    =   5
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   100
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   12
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   178
   End
   Begin TextField txtEngineIP
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   100
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   43
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   178
   End
   Begin TextField txtEnginePort
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      ControlOrder    =   7
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   100
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   ""
      Password        =   ""
      ReadOnly        =   ""
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   75
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   178
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theMode as String)
		  if theMode = "Add" then
		    me.title = "Add Demoengine"
		    
		    txtEngineIP.text = ""
		    txtEngineName.text = "my demoengine"
		    txtEnginePort.text = "28000"
		    
		    btnOK.Caption = "Add"
		    
		  else
		    me.title = "Edit Demoengine"
		    engineID = val(NthField(theMode, " ", 2))
		    
		    txtEngineIP.text = engines.EnginesList(EngineID).IP
		    txtEngineName.text = engines.EnginesList(EngineID).Name
		    txtEnginePort.text = str(engines.EnginesList(EngineID).Port)
		    
		    btnOK.Caption = "OK"
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		engineID As integer = -1
	#tag EndProperty


#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  if engineID > -1 then
		    // We are in Edit Mode, so let's modify the engine
		    engines.EnginesList(engineID).name = txtEngineName.text
		    engines.EnginesList(engineID).IP = txtEngineIP.text
		    engines.EnginesList(engineID).Port = val(txtEnginePort.text)
		    
		  else
		    // We are adding a new instance of engine
		    ReDim Engines.EnginesList(UBound(Engines.EnginesList) + 1)
		    Engines.EnginesList(UBound(engines.EnginesList)) = new classEngine
		    
		    engineID = UBound(engines.EnginesList)
		    
		    engines.EnginesList(engineID).name = txtEngineName.text
		    engines.EnginesList(engineID).IP = txtEngineIP.text
		    engines.EnginesList(engineID).Port = val(txtEnginePort.text)
		    
		    engines.EnginesList(EngineID).myConnector.address = engines.EnginesList(engineID).ip
		    engines.EnginesList(EngineID).myConnector.port = engines.EnginesList(engineID).Port
		  end if
		  
		  window.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  window.close
		End Sub
	#tag EndEvent
#tag EndEvents
