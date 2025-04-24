#tag Window
Begin Window wndTimeLine
   BackColor       =   &cF2F2F200
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   600
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   -1140810811
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   700
   Placement       =   1
   Resizeable      =   True
   Title           =   "Dungeon Demo Editor"
   Visible         =   False
   Width           =   900
   Begin classTimeline cnvTimeLine
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      Enabled         =   True
      Height          =   209
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      pixelsPerSecond =   0.0
      ruleStartLayer  =   0.0
      ruleStartTime   =   0.0
      Scope           =   0
      showBarIDs      =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   34
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   628
   End
   Begin ScrollBar scrHorizontal
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   243
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   628
   End
   Begin ScrollBar scrVertical
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   187
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   884
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   56
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin Canvas cnvMoreZoom
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   -1131535603
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   884
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   34
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   16
   End
   Begin Canvas cnvLeftMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   789798911
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin Canvas cnvRedMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   87476223
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   323
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin classCntBarProperties cntCustomSection
      AcceptFocus     =   True
      AcceptTabs      =   False
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   254
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   257
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   264
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   639
   End
   Begin Canvas cnvRightMarker
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   False
      Backdrop        =   429590527
      DoubleBuffer    =   False
      Enabled         =   False
      Height          =   12
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   390
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   4
      Transparent     =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   11
   End
   Begin classDemo demo
      engine          =   ""
      Index           =   -2147483648
      LockedInPosition=   False
      saved           =   True
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer tmrRedraw
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   2
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin ServerSocket tcpErrorLogger
      Index           =   -2147483648
      LockedInPosition=   False
      MaximumSocketsConnected=   10
      MinimumSocketsAvailable=   2
      Port            =   29001
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin TextArea txtEngineComm
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cEFEDC700
      Bold            =   False
      Border          =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   77
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   523
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      UseFocusRing    =   False
      Visible         =   True
      Width           =   900
   End
   Begin classLbxResourcesManager lbxResourcesManager
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   False
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   "*,50"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   True
      EnableDragReorder=   True
      GridLinesHorizontal=   1
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   496
      HelpTag         =   ""
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Pool folder	Size	ID	Type	Parent	Depth	Format"
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   1
      ShowDropIndicator=   True
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   252
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin TextField txtStartTime
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      CueText         =   "Loop Start Time"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   271
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sec"
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin TextField txtCurrentTime
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      CueText         =   "Current Time"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   337
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sec"
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin TextField txtEndTime
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      CueText         =   "Loop End Time"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   404
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0.00 sec"
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   47
   End
   Begin Label lblFrom
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   741
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "from:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   30
   End
   Begin Label lblTo
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   832
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "to:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   17
   End
   Begin TextField txtElementStartTime
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      CueText         =   "Element Start Time"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   772
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-"
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   50
   End
   Begin TextField txtElementEndTime
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   False
      CueText         =   "Element Start Time"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   14
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   850
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-"
      TextColor       =   &c00000000
      TextFont        =   "Arial Narrow"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   2
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   50
   End
   Begin Canvas cnvSections
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   273
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   18
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   612
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  me.refresh false
		  
		  cnvTimeLine.setFocus
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if not demo.saved then
		    Dim d as New MessageDialog //declare the MessageDialog object 
		    Dim b as MessageDialogButton //for handling the result 
		    
		    d.Icon = MessageDialog.GraphicCaution
		    d.ActionButton.Caption = "Save" 
		    d.CancelButton.Visible = True //show the Cancel button 
		    d.AlternateActionButton.Visible = True //show the Dont Save button 
		    d.AlternateActionButton.Caption = "Don't Save" 
		    d.Message="Do you want to save changes to this demo before closing?" 
		    d.Explanation="If you don't save, your changes will be lost. "
		    
		    b = d.ShowModal //display the dialog 
		    
		    Select Case b //determine which button was pressed. 
		      
		    Case d.ActionButton //user pressed Save 
		      demo.saveProject(false)
		      
		    Case d.AlternateActionButton // don't save, close window 
		      
		    Case d.CancelButton
		      return true
		      
		    End select
		    
		  end if
		  
		  // Send a quit message
		  controller.stopLocal
		  
		  // Force the message to be sent right now
		  engine.myConnector.Connect
		  
		  ' Check if we are the last timeline open. In this case, open the choose demoproject window
		  for i as integer = 0 to windowcount - 1
		    if window(i) isa wndTimeLine and window(i) <> self then
		      // There is another timeline open so we can safely close
		      return false
		    end if
		  next
		  
		  ' If execution reaches this point, there is no other timeline open so we display the choose demoengine window
		  wndChooseDemoengine.Show
		  
		  ' CLose the timeline
		  return false
		End Function
	#tag EndEvent

	#tag Event
		Sub Close()
		  // Clear the data folder pertaining to this project
		  Files.deleteFolder demo.GetDataFolder
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  mnuBarsShowBarIDs.Enabled = true
		  
		  if demo.saved then mnuFileSave.Enabled = false
		  
		  if demo.getSelectedBarIDs.Ubound > -1 then
		    ElementsToggleEnable.Enabled = true
		    ElementsUpdateinEngine.Enabled = true
		    ElementsSubdivide.Enabled = true
		    
		  else
		    ElementsToggleEnable.Enabled = false
		    ElementsUpdateinEngine.Enabled = false
		    ElementsSubdivide.Enabled = false
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  return controller.HandleKey(key)
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  // Check if we are resizing horizontally or vertically
		  dim objectMinimalHeight as integer
		  dim objectMinimalWidth as integer
		  dim TimelineMinimalWidth as integer
		  
		  objectMinimalHeight  = 250
		  objectMinimalWidth   = 250
		  TimelineMinimalWidth = 500
		  
		  if me.MouseCursor = System.Cursors.SplitterNorthSouth then
		    
		    if dragMode = "bottom" or (y < txtEngineComm.top and y > cntCustomSection.top + cntCustomSection.Height) then
		      // We are resizing the bottom part
		      dragMode = "bottom"
		      cntCustomSection.Height = y - 2 - cntCustomSection.top
		      txtEngineComm.top = y + 2
		      txtEngineComm.Height = self.Height - txtEngineComm.top
		      lbxResourcesManager.Height = y - 2
		      System.DebugLog("Resizing vertical top. y = " + y.ToString)
		      
		    else
		      dragMode = "top"
		      // We are resizing the top part
		      if y > me.Height - objectMinimalHeight then y = me.Height - objectMinimalHeight
		      if y < objectMinimalHeight then y = objectMinimalHeight
		      
		      // We are resizing vertically
		      cnvTimeLine.Height = y - 2 - cnvTimeLine.top - scrHorizontal.Height
		      cntCustomSection.top = y + 2
		      
		      cntCustomSection.Height = me.Height - cntCustomSection.top - 5 - txtEngineComm.Height
		      
		      scrHorizontal.top = cnvTimeLine.top + cnvTimeLine.Height
		      scrVertical.Height = cnvTimeLine.Height - scrHorizontal.Height
		      System.DebugLog("Resizing vertical bottom. y = " + y.ToString)
		      
		    end if
		    
		  elseif dragMode = "left" or (me.MouseCursor = System.Cursors.SplitterEastWest) then
		    dragMode = "left"
		    // We are resizing horizontally
		    if x > me.width - TimelineMinimalWidth then x = me.width - TimelineMinimalWidth
		    if x < objectMinimalWidth then x = objectMinimalWidth
		    
		    lbxResourcesManager.Width = x - 2
		    cnvMoreZoom.left = me.width - scrVertical.width
		    
		    cnvLeftMarker.left = x + 3
		    cnvRedMarker.left = x + 69
		    cnvRightMarker.left = x + 135
		    
		    txtStartTime.left = x + 17
		    txtCurrentTime.Left = x + 83
		    txtEndTime.left = x + 149
		    
		    cnvTimeLine.Left = x + 3
		    cnvTimeLine.Width = me.width - cnvTimeLine.Left - scrVertical.Width
		    
		    cntCustomSection.left = x + 3
		    cntCustomSection.Width = cnvTimeLine.Width + 12
		    
		    txtEngineComm.left = 0
		    txtEngineComm.Width = self.Width
		    
		    scrHorizontal.Left = x + 3
		    scrHorizontal.Width = me.width - cnvTimeLine.Left - scrVertical.Width
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  // Detect if the mouse is located over a resizing area
		  if x < cnvTimeLine.left and x > lbxResourcesManager.width then
		    // Vertical resizing area
		    me.MouseCursor = System.Cursors.SplitterEastWest
		    
		  elseif x > cnvTimeLine.Left and y < cntCustomSection.top and y > scrHorizontal.top + scrHorizontal.Height then
		    // Horizontal resizing top area
		    me.MouseCursor = System.Cursors.SplitterNorthSouth
		    
		  elseif y < txtEngineComm.top and y > cntCustomSection.top + cntCustomSection.Height then
		    // Horizontal resizing bottom area
		    me.MouseCursor = System.Cursors.SplitterNorthSouth
		    
		  else
		    // The mouse is not over a mouse area
		    me.MouseCursor = System.Cursors.StandardPointer
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  dragMode = ""
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.WindowTopBarHeight = self.top - self.Bounds.Top
		  App.WindowBorderWidth = self.left - self.bounds.left
		  
		  Dim myBounds As New Realbasic.Rect
		  
		  myBounds.Left = -App.WindowBorderWidth
		  myBounds.Top = 0
		  myBounds.Height = Screen(0).AvailableHeight + App.WindowBorderWidth
		  myBounds.Width = 2 * App.WindowBorderWidth + Screen(0).AvailableWidth / 2
		  
		  self.Bounds = myBounds
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function BarsEditor() As Boolean Handles BarsEditor.Action
		  dim myWindow as new wndBarsEditor
		  
		  myWindow.init(demo)
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ClearEngineLog() As Boolean Handles ClearEngineLog.Action
		  ClearEngineLog
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditReplace() As Boolean Handles EditReplace.Action
		  wndReplace.init(demo, cnvTimeLine, self)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsToggleEnable() As Boolean Handles ElementsToggleEnable.Action
		  cnvTimeLine.elementsToggleEnable
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsUpdateinEngine() As Boolean Handles ElementsUpdateinEngine.Action
		  UpdateSelectedBars
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EngineLaunchLocal() As Boolean Handles EngineLaunchLocal.Action
		  // Make the current project active
		  activateDemo demo
		  
		  // Delete existing script files
		  Files.deleteFilesOfExtension(demo.GetDataFolder, "spo")
		  
		  // Create the configuration scripts and copy needed files to the data folder
		  ScriptWriter.CreateConfiguration(demo)
		  
		  // Create the section scripts
		  ScriptWriter.WriteScriptsSPO(demo)
		  
		  // Launch the engine
		  controller.resetEngine
		  controller.LaunchLocal(demo)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EngineStop(index as Integer) As Boolean Handles EngineStop.Action
		  controller.stopLocal
		  
		  return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
		  self.close
		  
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuBarsShowBarIDs() As Boolean Handles mnuBarsShowBarIDs.Action
		  if mnuBarsShowBarIDs.text = "Hide Bar IDs" then
		    mnuBarsShowBarIDs.text = "Show Bar IDs"
		    cnvTimeLine.showBarIDs = false
		  else
		    mnuBarsShowBarIDs.text = "Hide Bar IDs"
		    cnvTimeLine.showBarIDs = true
		  end if
		  
		  cnvTimeLine.Invalidate
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuEditDatabase() As Boolean Handles mnuEditDatabase.Action
		  demo.OpenDatabaseInspector
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileSave() As Boolean Handles mnuFileSave.Action
		  demo.saveProject(false)
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuFileSaveAs() As Boolean Handles mnuFileSaveAs.Action
		  demo.saveProject(true)
		  
		  if demo.projectFolder <> nil then
		    self.Title = "Spontz Demo Editor: " + demo.projectFolder.DisplayName
		  end if
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectCompile() As Boolean Handles ProjectCompile.Action
		  // Simple compilation
		  demo.CompileDataFolder
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectDemoSettings() As Boolean Handles ProjectDemoSettings.Action
		  wndDemoSettings.show
		  wndDemoSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectLoader() As Boolean Handles ProjectLoader.Action
		  wndLoaderSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ProjectVideoSettings() As Boolean Handles ProjectVideoSettings.Action
		  wndVideoSettings.init demo
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function WindowTextEditor() As Boolean Handles WindowTextEditor.Action
		  wndTextEditor.show
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub ClearEngineLog()
		  txtEngineComm.Text = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub demoEndTimeSet(sender as classDemo, theTime as single)
		  scrHorizontal.maximum = theTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function init(demoFile as folderitem) As boolean
		  if not demo.init(demoFile) then
		    ' There was a problem initing the demo
		    return false
		  end if
		  
		  self.Title = "Spontz Demo Editor: " + demoFile.Name
		  
		  If demo.countFBOs = 0 Then
		    demo.initDefaultFBOs
		  End If
		  
		  engine = new classEngine
		  
		  // Initialization of the engines manager
		  controller.init demo
		  
		  // Initialization of the timeline
		  cnvTimeLine.Init demo
		  
		  // Init thefiles manager
		  lbxResourcesManager.Init(demo)
		  
		  // Horizontal Scroll initialization
		  scrHorizontal.Minimum = 0
		  scrHorizontal.Value = 0
		  scrHorizontal.Maximum = cnvTimeLine.time2coordinate(demo.getDemoEndTime)
		  
		  // Vertical Scroll initialization
		  scrVertical.Minimum = 0
		  scrVertical.Value   = 0
		  scrVertical.Maximum = cnvTimeLine.layer2coordinate(99)
		  
		  // Demo times synchronization
		  txtStartTime.text = cstr(abs(demo.getDemoStartTime * 100) / 100) + " sec"
		  txtEndTime.text   = cstr(abs(demo.getDemoEndTime   * 100) / 100) + " sec"
		  
		  // Link the demo with the window controls
		  cnvTimeLine.Init demo
		  
		  // Hide or display the error message pane
		  
		  tcpErrorLogger.Listen
		  
		  // Show the timeline
		  self.Visible = true
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MessageReceived(sender as classTcpEngineMessage, theMessage as string)
		  // Split the message in lines
		  dim lines() as string = Split(theMessage, EndOfLine.Windows)
		  
		  // Add the lines upside down to the comm log
		  Do
		    txtEngineComm.Text = lines(lines.Ubound) + EndOfLine + txtEngineComm.text
		    lines.Remove(lines.Ubound)
		  loop until lines.Ubound < 0
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openShadersEditor(itemID as string)
		  dim windowFound as boolean
		  
		  for i as integer = 0 to WindowCount - 1
		    if Window(i) isA wndShadersEditor then
		      if wndShadersEditor(window(i)).itemID = itemID then
		        wndShadersEditor(window(i)).Show
		        windowFound = true
		        exit
		      end if
		    end if
		  next
		  
		  if not windowFound then
		    dim myWindow as new wndShadersEditor
		    myWindow.init(itemID, self)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openTextsEditor(itemID as string)
		  dim windowFound as boolean
		  
		  for i as integer = 0 to WindowCount - 1
		    if Window(i) isA wndTextEditor then
		      if wndTextEditor(window(i)).itemID = itemID then
		        wndTextEditor(window(i)).Show
		        windowFound = true
		        exit
		      end if
		    end if
		  next
		  
		  if not windowFound then
		    dim myWindow as new wndTextEditor
		    myWindow.init(itemID, self)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateBarIDs(barIDs() as string)
		  for each barID as string in barIDs
		    controller.updateBar(barID)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateSelectedBars()
		  UpdateBarIDs(demo.getSelectedBarIDs)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateSelectedBarsTimes()
		  dim start, ending as single
		  
		  // We show the group start and end times
		  start = round(val(demo.GetSelectedBarsStartTime) * 100) / 100
		  ending = round(val(demo.GetSelectedbarsEndTime) * 100) / 100
		  
		  txtElementStartTime.text = cstr(start )
		  txtElementEndTime.text   = cstr(ending)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private dragMode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		engine As classEngine
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected FirstResizingFix As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events cnvTimeLine
	#tag Event
		Sub EditBar(barID as string)
		  cntCustomSection.Init demo, barID
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  dim vNewPosition as integer
		  dim hNewPosition as integer
		  
		  vNewPosition = scrVertical.Value + deltaY
		  hNewPosition = scrHorizontal.Value + deltaX
		  
		  if vNewPosition < 0 then
		    vNewPosition = 0
		  elseif vNewPosition > scrVertical.Maximum then
		    vNewPosition = scrVertical.Maximum
		  end if
		  
		  if hNewPosition < 0 then
		    hNewPosition = 0
		  elseif hNewPosition > scrHorizontal.Maximum then
		    hNewPosition = scrHorizontal.Maximum
		  end if
		  
		  scrVertical.Value = vNewPosition
		  scrHorizontal.Value = hNewPosition
		End Function
	#tag EndEvent
	#tag Event
		Sub SelectionCleared()
		  // We clear the start and end times above the timeline
		  txtElementStartTime.text = "-"
		  txtElementEndTime.text = "-"
		  
		  // Deactivate the section editor
		  cntCustomSection.Init (demo, "")
		End Sub
	#tag EndEvent
	#tag Event
		Sub SetStartTime(newTime as single)
		  txtStartTime.text = cstr(abs(newTime * 100) / 100) + " sec"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SetEndTime(newTime as single)
		  txtEndTime.text = cstr(abs(newTime * 100) / 100) + " sec"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub NewBar(BarID as string)
		  // After drawing a new bar, select it for script edition
		  demo.clearBarSelection
		  demo.addBarToSelection(BarID)
		  
		  // Edit the section
		  cntCustomSection.Init demo, barID
		End Sub
	#tag EndEvent
	#tag Event
		Sub AddBarToSelection()
		  UpdateSelectedBarsTimes
		End Sub
	#tag EndEvent
	#tag Event
		Sub DragSections()
		  UpdateSelectedBarsTimes
		End Sub
	#tag EndEvent
	#tag Event
		Sub PasteSections(sectionIDs() as string)
		  ' Update the bars in the engine
		  if demo.GetDataFolder() <> nil then
		    for each barID as String in sectionIDs
		      controller.createBar(barID)
		    next
		  end if
		  
		  ' Update the pasted sections in the engine
		  ' UpdateSelectedBarsTimes
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scrHorizontal
	#tag Event
		Sub ValueChanged()
		  cnvTimeLine.ruleStartTime = me.value
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events scrVertical
	#tag Event
		Sub ValueChanged()
		  cnvTimeLine.ruleStartLayer = me.value
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvMoreZoom
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  cnvTimeLine.pixelsPerSecond = cnvTimeLine.pixelsPerSecond * 1.25
		  
		  cnvTimeLine.refresh false
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  return true
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events demo
	#tag Event
		Sub demoEndTimeSet(newEndTime as single)
		  controller.setEndTime(newEndTime)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub demoStartTimeSet(newStartTime as single)
		  controller.setStartTime(newStartTime)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrRedraw
	#tag Event
		Sub Action()
		  cnvTimeLine.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tcpErrorLogger
	#tag Event
		Function AddSocket() As TCPSocket
		  dim tcpEngineMessage as new classTcpEngineMessage
		  
		  AddHandler tcpEngineMessage.MessageReceived, AddressOf MessageReceived
		  
		  return TcpEngineMessage
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtEngineComm
	#tag Event
		Sub Open()
		  if Color.IsDarkMode then
		    me.BackgroundColor = &c000000 // Black
		    me.TextColor = &cffffff // White
		  else
		    me.BackgroundColor = &cefed8b // Yellow
		    me.TextColor = &c000000 // Black
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbxResourcesManager
	#tag Event
		Sub DoubleClickedItem(itemID as string)
		  // Retrieve the item from the database
		  dim fileProperties as dictionary = demo.getFile(itemID)
		  
		  dim fileName  as string = fileProperties.Value("name")
		  dim parts()   as string = split(fileName, ".")
		  dim extension as string = parts(UBound(parts))
		  
		  select case extension
		    
		  case "cam"
		    openTextsEditor(itemID)
		    
		  case "txt"
		    openTextsEditor(itemID)
		    
		  case "layer"
		    openTextsEditor(itemID)
		    
		  case "pth"
		    openTextsEditor(itemID)
		    
		  case "path"
		    openTextsEditor(itemID)
		    
		  case "glsl"
		    openShadersEditor(itemID)
		    
		  case "shader"
		    openShadersEditor(itemID)
		    
		  case "vertex"
		    openShadersEditor(itemID)
		    
		  case "vs"
		    openShadersEditor(itemID)
		    
		  case "fragment"
		    openShadersEditor(itemID)
		    
		  case "frag"
		    openShadersEditor(itemID)
		    
		  case "vert"
		    openShadersEditor(itemID)
		    
		  case "geom"
		    openShadersEditor(itemID)
		    
		  case "fs"
		    openShadersEditor(itemID)
		    
		  else
		    dim f as folderitem
		    
		    f = demo.getFilePath(itemID)
		    f = f.child(filename)
		    
		    f.launch
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtStartTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    
		    demo.setDemoStartTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoStartTime) + " sec"
		    
		    controller.setStartTime(demo.getDemoStartTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.Invalidate
		    
		  elseif key=chr(9) then
		    demo.setDemoStartTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoStartTime) + " sec"
		    
		    controller.setStartTime(demo.getDemoStartTime)
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.Invalidate
		    txtEndTime.SelStart = 0
		    txtEndTime.SelLength = len(txtEndTime.text)
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtCurrentTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sec"
		    
		    controller.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.Invalidate
		    
		  elseif key=chr(9) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sec"
		    
		    controller.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.Invalidate
		    
		    txtStartTime.SetFocus
		    txtStartTime.SelStart = 0
		    txtStartTime.SelLength = len(txtStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtEndTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if key=chr(13) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sec"
		    
		    controller.setEndTime(demo.getDemoEndTime)
		    
		    // Pass the focus to the timeline
		    cnvTimeLine.SetFocus
		    cnvTimeLine.Invalidate
		    
		  elseif key=chr(9) then
		    demo.setDemoEndTime (val(ReplaceAll(trim(replaceall(me.text, "sg", "")), ",", ".")))
		    me.text = cstr(demo.getDemoEndTime) + " sec"
		    
		    // Pass the focus to the next time field
		    cnvTimeLine.Invalidate
		    
		    txtStartTime.SetFocus
		    txtStartTime.SelStart = 0
		    txtStartTime.SelLength = len(txtStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtElementStartTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.Text="-" then return false
		  
		  if key = chr(3) or key = chr(13) then
		    cnvTimeLine.SetSelectionStartTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		    
		  elseif key=chr(9) then
		    cnvTimeLine.SetSelectionStartTime val(ReplaceAll(me.text, ",", "."))
		    
		    // Select the end element time control
		    // txtElementEndTime.SetFocus
		    txtElementEndTime.SelStart = 0
		    txtElementEndTime.SelLength = len(txtElementEndTime.text)
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  if me.text="-" then
		    me.ReadOnly = true
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  else
		    me.ReadOnly = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtElementEndTime
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if me.Text="-" then return false
		  
		  if key = chr(3) or key = chr(13) then
		    cnvTimeLine.SetSelectionEndTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  elseif key = chr(9) then
		    cnvTimeLine.SetSelectionEndTime val(ReplaceAll(me.text, ",", "."))
		    
		    // We return the focus to the timeline to allow receiving key events
		    txtElementStartTime.SetFocus
		    txtElementStartTime.SelStart = 0
		    txtElementStartTime.SelLength = len(txtElementStartTime.text)
		    
		    return true
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  if me.text="-" then
		    me.ReadOnly = true
		    
		    // We return the focus to the timeline to allow receiving key events
		    cnvTimeLine.SetFocus
		  else
		    me.ReadOnly = false
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
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
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
