#tag Window
Begin Window wndTraceDetail
   BackColor       =   15856113
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   270
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1119015660
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   True
   Title           =   "Trace Detail"
   Visible         =   False
   Width           =   512
   Begin TextArea txtDetail
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   270
      HelpTag         =   ""
      HideSelection   =   True
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
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   4144959
      TextFont        =   "Courier"
      TextSize        =   10
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   512
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(timeStamp as String, level as String, Message as String)
		  txtDetail.text = _
		  "Timestamp: " + timeStamp + EndOfLine + _
		  "Level: " + level + EndOfLine + EndOfLine + _
		  Message
		  
		  me.Visible = true
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events txtDetail
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append(new MenuItem("Copy"))
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hititem.text
		    
		  case "Copy"
		    txtDetail.Copy
		    
		  end select
		End Function
	#tag EndEvent
#tag EndEvents
