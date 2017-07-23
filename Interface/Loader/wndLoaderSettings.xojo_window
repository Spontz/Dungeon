#tag Window
Begin Window wndLoaderSettings
   BackColor       =   &cF3F3F300
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   526
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   True
   MinWidth        =   500
   Placement       =   3
   Resizeable      =   True
   Title           =   "Loader Settings"
   Visible         =   False
   Width           =   620
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   540
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   487
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   459
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   487
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin popGraphic popInitialGFX
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   359
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   23
      Underline       =   False
      Visible         =   True
      Width           =   250
   End
   Begin popGraphic popFinalGFX
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   359
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   51
      Underline       =   False
      Visible         =   True
      Width           =   250
   End
   Begin Slider sldBarAlpha
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   13
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   51
      Value           =   100
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText4
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   72
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Alpha"
      TextAlign       =   2
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   36
   End
   Begin RadioButton radInitial
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Initial"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   295
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   25
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   58
   End
   Begin RadioButton radFinal
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Final"
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   295
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   53
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   58
   End
   Begin ClassCanvasPreview cnvPreview
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   387
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   88
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   620
   End
   Begin Label txtBarAlpha
      AutoDeactivate  =   True
      Bold            =   False
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
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "1"
      TextAlign       =   0
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   24
   End
   Begin Label StaticText3
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Bar"
      TextAlign       =   2
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Slider Slider1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   153
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TickStyle       =   "0"
      Top             =   51
      Value           =   100
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText6
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   225
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Alpha"
      TextAlign       =   2
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   36
   End
   Begin Label txtBorderAlpha
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   268
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "1"
      TextAlign       =   0
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   24
   End
   Begin Label StaticText8
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   137
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Border"
      TextAlign       =   2
      TextColor       =   &c3F3F3F00
      TextFont        =   "System"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   24
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   38
   End
   Begin ColorSelector borderColorSelector
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   183
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   23
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   40
   End
   Begin ColorSelector barColorSelector
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   33
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   22
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   40
   End
   Begin Line Line1
      BorderWidth     =   1
      Height          =   50
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineColor       =   &c00000000
      LockedInPosition=   False
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Visible         =   True
      Width           =   100
      X1              =   132
      X2              =   132
      Y1              =   0
      Y2              =   87
   End
   Begin Line Line2
      BorderWidth     =   1
      Height          =   50
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineColor       =   &c00000000
      LockedInPosition=   False
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Visible         =   True
      Width           =   100
      X1              =   287
      X2              =   287
      Y1              =   0
      Y2              =   87
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  // We select the loader graphics, if exists
		  dim i as integer
		  dim theProgressBarCoords(4) as Single
		  dim theProgressBarBorderCoords(4) as single
		  
		  popFinalGFX.Init(demo)
		  popInitialGFX.Init(demo)
		  
		  //Initial Graphic
		  for i=0 to popInitialGFX.listcount - 1
		    if popInitialGFX.List(i) = demo.GetLoaderInitialGraphic then
		      popInitialGFX.listindex = i
		      exit
		    end if
		  next
		  
		  // Final Graphic
		  for i=0 to popFinalGFX.listcount - 1
		    if popFinalGFX.List(i) = demo.GetLoaderFinalGraphic then
		      popFinalGFX.listindex = i
		      exit
		    end if
		  next
		  
		  // Loader Bar Colors and Alpha
		  barColorSelector.SetColor demo.GetLoaderBarColor.red / 255, demo.GetLoaderBarColor.green / 255, demo.GetLoaderBarColor.blue / 255
		  barColorSelector.refresh
		  
		  sldBarAlpha.Value = demo.GetLoaderBarAlpha * 100
		  txtBarAlpha.text = str(demo.GetLoaderBarAlpha)
		  
		  // And the progress bar coordinates
		  theProgressBarCoords = demo.getLoaderBarCoords
		  progressBarCoords(0) = theProgressBarCoords(0)
		  progressBarCoords(1) = theProgressBarCoords(1)
		  progressBarCoords(2) = theProgressBarCoords(2)
		  progressBarCoords(3) = theProgressBarCoords(3)
		  
		  progressBarColor = demo.GetLoaderBarColor
		  
		  theProgressBarBorderCoords = demo.getLoaderBarBorderCoords
		  progressBarBorderCoords(0) = theProgressBarBorderCoords(0)
		  progressBarBorderCoords(1) = theProgressBarBorderCoords(1)
		  progressBarBorderCoords(2) = theProgressBarBorderCoords(2)
		  progressBarBorderCoords(3) = theProgressBarBorderCoords(3)
		  
		  progressBarBorderColor = demo.GetLoaderBarBorderColor
		  
		  cnvPreview.SetBackgroundColor RGB(45,45,45)
		  
		  me.Visible = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshProgressBar()
		  if cnvPreview.getImageWidth < 0 or cnvPreview.getImageHeight < 0 then return
		  
		  dim theOrigin(2) as integer
		  theOrigin = cnvPreview.getOrigin()
		  
		  dim theLeft, theTop, theWidth, theHeight as integer
		  
		  // Set the colors
		  cnvPreview.Graphics.ForeColor = barColorSelector.getColor
		  
		  // Draw the progress bar
		  theLeft = theOrigin(0) + progressBarCoords(0) * cnvPreview.getImageWidth
		  theTop = theOrigin(1) + (1 - progressBarCoords(1)) * cnvPreview.getImageHeight
		  
		  theWidth = (progressBarCoords(2) - progressBarCoords(0)) * cnvPreview.getImageWidth
		  theHeight = (progressBarCoords(3) - progressBarCoords(1)) * cnvPreview.getImageHeight
		  
		  cnvPreview.Graphics.ForeColor = progressBarColor
		  cnvPreview.Graphics.FillRect(theLeft, theTop, theWidth, theHeight)
		  
		  // Draw the progress bar border
		  theLeft = theOrigin(0) + progressBarBorderCoords(0) * cnvPreview.getImageWidth
		  theTop = theOrigin(1) + (1 - progressBarBorderCoords(1)) * cnvPreview.getImageHeight
		  
		  theWidth = (progressBarBorderCoords(2) - progressBarBorderCoords(0)) * cnvPreview.getImageWidth
		  theHeight = (progressBarBorderCoords(3) - progressBarBorderCoords(1)) * cnvPreview.getImageHeight
		  
		  cnvPreview.Graphics.ForeColor = progressBarBorderColor
		  cnvPreview.Graphics.DrawRect(theLeft, theTop, theWidth, theHeight)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h21
		Private progressBarBorderColor As color = &cFF0000
	#tag EndProperty

	#tag Property, Flags = &h21
		Private progressBarBorderCoords(3) As single
	#tag EndProperty

	#tag Property, Flags = &h21
		Private progressBarColor As color = &cFFFFFF
	#tag EndProperty

	#tag Property, Flags = &h21
		Private progressBarCoords(3) As single
	#tag EndProperty


#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  // We save the undo item
		  AddUndoAction
		  
		  if popInitialGFX.listIndex > -1 then
		    demo.SetLoaderInitialGraphic popInitialGFX.list(popInitialGFX.listIndex)
		  end if
		  
		  if popFinalGFX.listIndex > -1 then
		    demo.SetLoaderFinalGraphic popFinalGFX.list(popFinalGFX.listIndex)
		  end if
		  
		  // Saving the Loader Bar Color
		  demo.SetLoaderBarColor barColorSelector.GetColorRed, barColorSelector.GetColorGreen, barColorSelector.GetColorBlue
		  demo.SetLoaderBarAlpha val(txtBarAlpha.text)
		  
		  // Saving the Loader Bar coordinates
		  demo.setLoaderBarCoords( _
		  progressBarCoords(0), _
		  progressBarCoords(1), _
		  progressBarCoords(2), _
		  progressBarCoords(3))
		  
		  window.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  Window.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popInitialGFX
	#tag Event
		Sub Change()
		  dim f as new folderitem
		  
		  if radInitial.value = true then
		    // Display the initial loading graphic
		    f = demo.GetDataFolderItem(me.list(me.listIndex))
		    
		    cnvPreview.showPicture  f.OpenAsPicture
		    
		    refreshProgressBar
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popFinalGFX
	#tag Event
		Sub Change()
		  dim f as new folderitem
		  
		  if radFinal.value = true then
		    // Display the final loading graphic
		    f = demo.GetDataFolderItem(me.list(me.listIndex))
		    
		    cnvPreview.showPicture  f.OpenAsPicture
		    
		    refreshProgressBar
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sldBarAlpha
	#tag Event
		Sub ValueChanged()
		  txtBarAlpha.text = str(me.value * 0.01)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events radInitial
	#tag Event
		Sub Action()
		  dim f as folderitem
		  
		  radFinal.value = false
		  
		  // Display the initial loading graphic
		  f = demo.GetDataFolderItem(popInitialGFX.list(popInitialGFX.listIndex))
		  cnvPreview.showPicture  f.OpenAsPicture
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events radFinal
	#tag Event
		Sub Action()
		  dim f as folderitem
		  
		  radInitial.value = false
		  
		  // Display the final loading graphic
		  f = demo.GetDataFolderItem(popFinalGFX.list(popFinalGFX.listIndex))
		  cnvPreview.showPicture  f.OpenAsPicture
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPreview
	#tag Event
		Sub Refreshed()
		  refreshProgressBar
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint()
		  me.refreshPicture
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  dim theLeft, theTop, theWidth, theHeight as integer
		  
		  dim theOrigin(2) as integer
		  theOrigin = cnvPreview.getOrigin()
		  
		  // Draw the progress bar
		  
		  theLeft = theOrigin(0) + progressBarCoords(0) * me.getImageWidth
		  theTop = theOrigin(1) + (1 - progressBarCoords(1)) * me.getImageHeight
		  
		  theWidth = (progressBarCoords(2) - progressBarCoords(0)) * me.getImageWidth
		  theHeight = (progressBarCoords(3) - progressBarCoords(1)) * me.getImageHeight
		  
		  // Check the left corner
		  if x > theLeft - 3 and x < theLeft + 3 and y > theTop and y < theTop + theHeight then
		    me.MouseCursor = System.Cursors.ArrowEastWest
		    
		    // Check the right corner
		  elseif x > theLeft + theWidth - 3 and x < theLeft + theWidth + 3  and y > theTop and y < theTop + theHeight then
		    me.MouseCursor = System.Cursors.ArrowEastWest
		    
		    // Check the upper corner
		  elseif x > theLeft and x < theLeft + theWidth  and y < theTop + 3 and y > theTop - 3 then
		    me.MouseCursor = System.Cursors.ArrowNorthSouth
		    
		    // Check the lower corner
		  elseif x > theLeft and x < theLeft + theWidth  and y > theTop + theHeight - 3 and y < theTop + theHeight + 3 then
		    me.MouseCursor = System.Cursors.ArrowNorthSouth
		    
		    // Check if we are inside
		  elseif x > theLeft and x < theLeft + theWidth  and y > theTop and y < theTop + theHeight then
		    me.MouseCursor = System.Cursors.ArrowAllDirections
		    
		    // Check if we are moving inside the drawing
		  elseif x > theOrigin(0) and x < me.getImageWidth + theOrigin(0) and y > theOrigin(1) and y < theOrigin(1) + me.getImageHeight then
		    me.MouseCursor = System.Cursors.HandOpen
		    
		  else
		    // We are outside the drawing
		    me.MouseCursor = System.Cursors.StandardPointer
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X as integer, Y as Integer)
		  dim theDragStart(1) as integer
		  theDragStart = me.getDragStart
		  
		  if me.MouseCursor = System.Cursors.ArrowAllDirections then
		    progressBarCoords(0) = progressBarCoords(0) + (x - theDragStart(0)) / me.getImageWidth
		    progressBarCoords(2) = progressBarCoords(2) + (x - theDragStart(0)) / me.getImageWidth
		    progressBarCoords(1) = progressBarCoords(1) + (theDragStart(1) - y) / me.getImageHeight
		    progressBarCoords(3) = progressBarCoords(3) + (theDragStart(1) - y) / me.getImageHeight
		  end if
		  
		  me.setDragStart(x, y)
		  
		  me.refreshPicture
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Self.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Slider1
	#tag Event
		Sub ValueChanged()
		  txtBorderAlpha.text = str(me.value * 0.01)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events borderColorSelector
	#tag Event
		Sub ColorChanged(newColor as color)
		  progressBarBorderColor = newColor
		  
		  cnvPreview.refreshPicture
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events barColorSelector
	#tag Event
		Sub ColorChanged(newColor as color)
		  progressBarColor = newColor
		  
		  cnvPreview.refreshPicture
		End Sub
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
		Visible=true
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
		InitialValue="False"
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
		Visible=true
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
