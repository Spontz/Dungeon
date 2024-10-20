#tag Window
Begin Window wndVideoSettings
   BackColor       =   &cF3F3F300
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   600
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   300
   MinimizeButton  =   False
   MinWidth        =   330
   Placement       =   1
   Resizeable      =   True
   Title           =   "Video Settings"
   Visible         =   False
   Width           =   700
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Rendering Context Settings"
      Enabled         =   True
      Height          =   94
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   4
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   684
      Begin CheckBox chkFullScreen
         AutoDeactivate  =   True
         Bold            =   False
         Caption         =   "Full Screen"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   125
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   66
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   88
      End
      Begin PopupMenu popColorDepth
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   "32 bits (True Color)\r16 bits (Thousands)\r8 bits (256 Colors)"
         Italic          =   False
         Left            =   125
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   31
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   160
      End
      Begin Label lblColorDepth
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   35
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Color Depth:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin Label StaticText2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Width:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   72
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   297
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Height:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   57
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   72
      End
      Begin TextField txtVideoWidth
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   381
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
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   31
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin TextField txtVideoHeight
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &cFFFFFF00
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
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   381
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
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   56
         Transparent     =   False
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   80
      End
      Begin Label lblVsync
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         Italic          =   False
         Left            =   473
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "V-sync:"
         TextAlign       =   2
         TextColor       =   &c00000000
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   33
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   72
      End
      Begin PopupMenu popVsync
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   24
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2"
         InitialValue    =   "No limit\r\n60 fps\r\n30 fps\r\n20 fps"
         Italic          =   False
         Left            =   555
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "Ubuntu Condensed"
         TextSize        =   14.0
         TextUnit        =   0
         Top             =   31
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   131
      End
   End
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   623
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   562
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin PushButton btnCancel
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   544
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   562
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin ListBox lbxFBOConfiguration
      AutoDeactivate  =   False
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   7
      ColumnsResizable=   True
      ColumnWidths    =   ",*"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   16
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   451
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "FBO	Ratio	Format	Width	Height	Attachments	Filter"
      Italic          =   False
      Left            =   -1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   103
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   701
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classdemo)
		  Dim i As Integer
		  dim theFBOs() as string
		  
		  demo = theDemo
		  
		  chkFullScreen.value = demo.GetVideoFullScreen
		  
		  txtVideoWidth.text = str(demo.GetVideoScreenWidth)
		  txtVideoHeight.text = str(demo.GetVideoScreenHeight)
		  
		  // Load the FBOs in the field
		  lbxFBOConfiguration.DeleteAllRows
		  
		  theFBOs = demo.getFBOsList
		  
		  For i=0 To UBound(theFBOs)
		    Dim ratio            As String = NthField(theFBOs(i), " ", 1)
		    Dim Format           As String = NthField(theFBOs(i), " ", 2)
		    Dim width            As String = NthField(theFBOs(i), " ", 3)
		    Dim height           As String = NthField(theFBOs(i), " ", 4)
		    Dim colorAttachments as String = NthField(theFBOs(i), " ", 5)
		    Dim filter           as string = NthField(theFBOs(i), " ", 6)
		    
		    lbxFBOConfiguration.AddRow(Str(i))
		    
		    ' Format
		    lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 2) = Format
		    lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 5) = colorAttachments
		    lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, cstColumnFilter) = filter
		    
		    If ratio = "0" Then
		      ' Fixed size FBO
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 1) = "" 'This is to trigger cellTextPaint event
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 3) = width
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 4) = height
		      
		    Else
		      ' Scaled FBO
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 1) = ratio
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 3) = "" 'This is to trigger cellTextPaint event
		      lbxFBOConfiguration.cell(lbxFBOConfiguration.LastIndex, 4) = "" 'This is to trigger cellTextPaint event
		      
		    End If
		    
		  next
		  
		  if demo.engine = demo.dragon then
		    lblVsync.Visible = false
		    popVsync.visible = false
		    
		  else
		    lblVsync.Visible = true
		    popVsync.visible = true
		    
		    popVsync.ListIndex = demo.GetVideoVerticalSync
		  end if
		  
		  me.visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty


	#tag Constant, Name = cstColumnFilter, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstCreateFBO, Type = String, Dynamic = False, Default = \"Create FBO", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cstDeleteFBO, Type = String, Dynamic = False, Default = \"Delete FBO", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  dim result as integer
		  
		  demo.SetVideoFullScreen chkFullScreen.value
		  
		  demo.SetVideoScreenHeight val(txtVideoHeight.text)
		  demo.SetVideoScreenWidth val(txtVideoWidth.text)
		  demo.setVideoVerticalSync(popVsync.ListIndex)
		  
		  // Save the FBO information
		  demo.clearFBOs
		  
		  for i as integer = 0 to lbxFBOConfiguration.ListCount - 1
		    result = demo.addFBO( _
		    Val(lbxFBOConfiguration.cell(i, 3)), _
		    Val(lbxFBOConfiguration.cell(i, 4)), _
		    Val(lbxFBOConfiguration.cell(i, 1)), _
		    lbxFBOConfiguration.cell(i, 2), _
		    Val(lbxFBOConfiguration.cell(i, 5)), _
		    lbxFBOConfiguration.cell(i, cstColumnFilter) _
		    )
		  next
		  
		  self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  wndVideoSettings.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbxFBOConfiguration
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  // Alternate gray / white color
		  If row Mod 2=0 then
		    g.foreColor= &cffffff
		  else
		    g.foreColor= &ceeeeee
		  end if
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim currentRow As Integer
		  
		  // We get the current clicked row and select it before continuing
		  currentRow =  me.ScrollPosition + floor(y / me.DefaultRowHeight) - 1
		  if currentRow > me.ListCount then currentRow = -1
		  
		  select case demo.engine
		    
		  case demo.dragon
		    if me.ListCount < 25 then
		      base.Append(New MenuItem(cstCreateFBO))
		      base.Append(New MenuItem("-"))
		    end if
		    
		  else
		    base.Append(New MenuItem(cstCreateFBO))
		    base.Append(New MenuItem("-"))
		    
		    
		  end select
		  
		  if me.ListIndex > -1 then
		    base.Append(New MenuItem(cstDeleteFBO))
		  end if
		  
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		    
		  case cstCreateFBO
		    Me.AddRow(Str(Me.ListCount))
		    Me.cell(Me.LastIndex, 1) = "1"
		    Me.cell(Me.lastindex, 2) = "RGB"
		    Me.cell(Me.LastIndex, 5) = "1"
		    
		  case cstDeleteFBO
		    me.RemoveRow(me.ListIndex)
		    
		  end
		  
		  // Renumber the FBOs
		  for i as integer = 0 to me.ListCount - 1
		    me.cell(i,0) = str(i)
		  next
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  if column <> 0 then
		    ' Draw an arrow to indicate that clicking this field will display a menu
		    g.ForeColor = &cCCCCCC
		    
		    ' Points for a triangle on the right side of the cell
		    Dim points(6) As Integer
		    points(1) = g.Width - 12
		    points(2) = 5
		    points(3) = g.Width - 4
		    points(4) = 5
		    points(5) = g.Width - 8
		    points(6) = 10
		    
		    g.FillPolygon(points)
		    
		    if me.ListIndex = row then
		      g.ForeColor = &cFFFFFF
		    else
		      g.ForeColor = &c000000
		    end if
		    
		    g.DrawString(Me.cell(row, column), x, y)
		    
		    Return True
		    
		  End if
		End Function
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  dim row as integer = me.RowFromXY(x, y)
		  dim column as integer = me.ColumnFromXY(x, y)
		  
		  me.ListIndex = row
		  
		  if IsContextualClick then return true
		  
		  dim cmnFBOOptions as new MenuItem
		  dim selectedMenu as menuitem
		  
		  
		  me.Refresh
		  App.DoEvents
		  
		  select case column
		    
		  case 1
		    ' The user clicked in the ratio column
		    cmnFBOOptions.Append(new menuItem("0.25"))
		    cmnFBOOptions.Append(new menuItem("0.5" ))
		    cmnFBOOptions.Append(new menuItem("1"   ))
		    cmnFBOOptions.Append(new menuItem("2"   ))
		    cmnFBOOptions.Append(new menuItem("4"   ))
		    cmnFBOOptions.Append(new menuItem("8"   ))
		    cmnFBOOptions.Append(new menuItem("16"  ))
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedMenu = nil then return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		    me.cell(row, 3) = "" ' Clear width as ratio has been selected
		    me.cell(row, 4) = "" ' Clear height as ratio has been selected
		    
		  case 2
		    select case demo.engine
		      // The user clicked in the format column
		      
		    case demo.phoenix
		      cmnFBOOptions.Append(new MenuItem("RGB"    ))
		      cmnFBOOptions.Append(new MenuItem("RGBA"   ))
		      cmnFBOOptions.Append(new MenuItem("RGB_16F" ))
		      cmnFBOOptions.Append(new MenuItem("RGBA_16F"))
		      cmnFBOOptions.Append(new MenuItem("RGB_32F" ))
		      cmnFBOOptions.Append(new MenuItem("RGBA_32F"))
		      cmnFBOOptions.Append(new MenuItem("DEPTH"   ))
		      
		    else
		      cmnFBOOptions.Append(new MenuItem("RGB"    ))
		      cmnFBOOptions.Append(new MenuItem("RGBA"   ))
		      cmnFBOOptions.Append(new MenuItem("RGB16F" ))
		      cmnFBOOptions.Append(new MenuItem("RGBA16F"))
		      cmnFBOOptions.Append(new MenuItem("RGB32"  ))
		      cmnFBOOptions.Append(new MenuItem("RGB32F" ))
		      
		    end select
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedmenu = nil then Return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		  case 3
		    // The user clicked in the width column
		    cmnFBOOptions.Append(new menuItem("1"   ))
		    cmnFBOOptions.Append(new menuitem("2"   ))
		    cmnFBOOptions.Append(new menuitem("4"   ))
		    cmnFBOOptions.Append(new menuitem("8"   ))
		    cmnFBOOptions.Append(new menuitem("16"  ))
		    cmnFBOOptions.Append(new menuitem("32"  ))
		    cmnFBOOptions.Append(new menuitem("64"  ))
		    cmnFBOOptions.Append(new menuitem("128" ))
		    cmnFBOOptions.Append(new menuitem("256" ))
		    cmnFBOOptions.Append(new menuitem("512" ))
		    cmnFBOOptions.Append(new menuitem("1024"))
		    cmnFBOOptions.Append(new menuitem("2048"))
		    cmnFBOOptions.Append(new menuitem("4096"))
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedMenu = nil then return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		    if me.cell(row, 4) = "" then me.cell(row, 4) = me.cell(row, 3)
		    me.cell(row, 1) = ""
		    
		  case 4
		    // The user clicked in the height column
		    cmnFBOOptions.Append(new menuItem("1"   ))
		    cmnFBOOptions.Append(new menuitem("2"   ))
		    cmnFBOOptions.Append(new menuitem("4"   ))
		    cmnFBOOptions.Append(new menuitem("8"   ))
		    cmnFBOOptions.Append(new menuitem("16"  ))
		    cmnFBOOptions.Append(new menuitem("32"  ))
		    cmnFBOOptions.Append(new menuitem("64"  ))
		    cmnFBOOptions.Append(new menuitem("128" ))
		    cmnFBOOptions.Append(new menuitem("256" ))
		    cmnFBOOptions.Append(new menuitem("512" ))
		    cmnFBOOptions.Append(new menuitem("1024"))
		    cmnFBOOptions.Append(new menuitem("2048"))
		    cmnFBOOptions.Append(new menuitem("4096"))
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedmenu = nil then return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		    if me.cell(row, 3) = "" then me.cell(row, 3) = me.cell(row, 4)
		    me.cell(row, 1) = ""
		    
		  case 5
		    ' The user clicked in the FBO attachments column
		    cmnFBOOptions.Append(new menuItem("1"))
		    cmnFBOOptions.Append(new menuItem("2"))
		    cmnFBOOptions.Append(new menuItem("3"))
		    cmnFBOOptions.Append(new menuItem("4"))
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedMenu = nil then return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		  case cstColumnFilter
		    ' The user clicked in the FBO filters column
		    cmnFBOOptions.Append(new menuItem("Bilinear"))
		    cmnFBOOptions.Append(new menuItem("No"))
		    
		    selectedMenu = cmnFBOOptions.PopUp
		    
		    if selectedMenu = nil then return true
		    
		    me.cell(row, column) = selectedMenu.text
		    
		  end select
		End Function
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
