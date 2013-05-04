#tag Window
Begin Window wndEnginesManager
   BackColor       =   15921906
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   True
   Frame           =   9
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   337
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   2
   Resizeable      =   True
   Title           =   "Engines Manager"
   Visible         =   True
   Width           =   547
   Begin ListBox lbxEnginesList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   4
      ColumnsResizable=   True
      ColumnWidths    =   "40%,20%,20%,20%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   269
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Engine	State	Fps	Time"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   1
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   547
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin Timer tmrRefresh
         Height          =   32
         Index           =   -2147483648
         InitialParent   =   "lbxEnginesList"
         Left            =   495
         LockedInPosition=   False
         Mode            =   2
         Period          =   500
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   221
         Width           =   32
      End
   End
   Begin PushButton btnPlay
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Pause"
      Default         =   ""
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   95
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   281
      Underline       =   ""
      Visible         =   True
      Width           =   63
   End
   Begin PushButton btnRestart
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Restart"
      Default         =   ""
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   281
      Underline       =   ""
      Visible         =   True
      Width           =   63
   End
   Begin CheckBox chkSound
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Sound"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   181
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      State           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   289
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   100
   End
   Begin BevelButton BevelButton1
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   0
      Bevel           =   0
      Bold            =   False
      ButtonType      =   0
      Caption         =   "Launch local"
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   ""
      HasMenu         =   0
      Height          =   36
      HelpTag         =   ""
      Icon            =   ""
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   433
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   ""
      Top             =   281
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   94
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  // Activate the listbox refresh
		  tmrRefresh.Enabled = true
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub refreshEnginesList()
		  dim i as integer
		  dim currentSelectedline as integer
		  
		  currentSelectedline = lbxEnginesList.ListIndex
		  lbxEnginesList.DeleteAllRows
		  
		  for i=0 to engines.getEnginesCount - 1
		    lbxEnginesList.AddRow Engines.getEngineName(i)
		    lbxEnginesList.cell(i, 1) = engines.EnginesList(i).state
		    lbxEnginesList.cell(i, 2) = str(engines.EnginesList(i).fps)
		    lbxEnginesList.cell(i, 3) = format(engines.EnginesList(i).runTime, "#.###")
		  next
		  
		  lbxEnginesList.ListIndex = currentSelectedline
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events lbxEnginesList
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  
		  if lbxEnginesList.ListIndex > -1 then
		    // There is a selected engine, so display all the options
		    base.Append(new MenuItem("Add..." ))
		    base.Append(new MenuItem("Edit..."))
		    base.Append(new MenuItem("-"      ))
		    base.Append(new MenuItem("Delete" ))
		    
		  else
		    // No engine has been selected so let's only display the "Add" option
		    base.Append(new MenuItem("Add..." ))
		    
		  end if
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim mywindow as wndAddEditEngine
		  
		  select case hitItem.text
		    
		  case "Add..."
		    mywindow = new wndAddEditEngine
		    mywindow.init "Add"
		    mywindow.Visible = true
		    
		  case "Edit..."
		    mywindow = new wndAddEditEngine
		    mywindow.init "Edit " + str(lbxEnginesList.ListIndex)
		    mywindow.Visible = true
		    
		  case "Delete"
		    
		    engines.EnginesList.Remove lbxEnginesList.ListIndex
		    
		  end
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tmrRefresh
	#tag Event
		Sub Action()
		  refreshEnginesList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnPlay
	#tag Event
		Sub Action()
		  if me.Caption = "Play" then
		    engines.setPlay
		    me.Caption = "Pause"
		  else
		    engines.setPause
		    me.Caption = "Play"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnRestart
	#tag Event
		Sub Action()
		  engines.setRestart
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton1
	#tag Event
		Sub Action()
		  // Engine launch
		  Engines.resetEngine(0)
		  engines.LaunchLocal
		End Sub
	#tag EndEvent
#tag EndEvents
