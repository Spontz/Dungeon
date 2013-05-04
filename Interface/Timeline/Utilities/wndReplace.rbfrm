#tag Window
Begin Window wndReplace
   BackColor       =   15987699
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   241
   ImplicitInstance=   True
   LiveResize      =   True
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
   Title           =   "Scripts Replacing"
   Visible         =   False
   Width           =   414
   Begin TextArea txtBefore
      AcceptTabs      =   True
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      ControlOrder    =   0
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   66
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Courier"
      TextSize        =   10
      Top             =   46
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   284
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      ControlOrder    =   1
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Replace this:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   47
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin TextArea txtAfter
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   False
      Border          =   True
      ControlOrder    =   2
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   66
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "Courier"
      TextSize        =   10
      Top             =   121
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   284
   End
   Begin Label StaticText2
      AutoDeactivate  =   True
      Bold            =   False
      ControlOrder    =   3
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   21
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "with this:"
      TextAlign       =   2
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   121
      Underline       =   False
      Visible         =   True
      Width           =   76
   End
   Begin PushButton btnReplace
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Replace"
      ControlOrder    =   4
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   325
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   203
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      ControlOrder    =   5
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   244
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      Top             =   203
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   False
      ControlOrder    =   6
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   115
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "In all selected Scripts:"
      TextAlign       =   1
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      Top             =   15
      Underline       =   False
      Visible         =   True
      Width           =   184
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, theTimeLine as classTimeline)
		  demo = theDemo
		  timeLine = theTimeLine
		  
		  me.Visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		timeLine As classTimeline
	#tag EndProperty


#tag EndWindowCode

#tag Events btnReplace
	#tag Event
		Sub Action()
		  dim i,j as integer
		  dim tempScript as string
		  dim count as integer
		  
		  // TODO
		  '// Now, we perform the replacement
		  'for i=0 to timeLine.GetNumSelectedSections - 1
		  'for j=1 to 3
		  'tempScript = demo.sections.getString(timeline.getSelectedSectionID(i), j)
		  'if inStr(tempScript, txtBefore.text) > 0 then
		  'count = count + 1
		  'demo.sections.SetString(timeLine.getSelectedSectionID(i), j, ReplaceAll(tempScript, txtBefore.text, txtAfter.Text))
		  '
		  '// Notify the engines about the change
		  'Engines.updateSection(timeLine.getSelectedSectionID(i))
		  'end if
		  'next
		  'next
		  
		  MsgBox cstr(count) + " elements have been modified"
		  
		  self.close
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
