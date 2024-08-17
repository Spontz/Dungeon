#tag Window
Begin Window wndLoaderSettings
   BackColor       =   &cF3F3F300
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   526
   ImplicitInstance=   True
   LiveResize      =   "True"
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
   Width           =   600
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   False
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   520
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   485
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
      Left            =   439
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   485
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin CustomEditField txtFileContents
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoCloseBrackets=   True
      AutocompleteAppliesStandardCase=   False
      AutoDeactivate  =   False
      AutoIndentNewLines=   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Border          =   False
      BorderColor     =   &c88888800
      BracketHighlightColor=   &cFFFF0000
      CaretColor      =   &c00000000
      CaretLine       =   0
      CaretPos        =   0
      ClearHighlightedRangesOnTextChange=   True
      DirtyLinesColor =   &cFF999900
      disableReset    =   False
      DisplayDirtyLines=   True
      DisplayInvisibleCharacters=   False
      DisplayLineNumbers=   True
      DisplayRightMarginMarker=   False
      DoubleBuffer    =   False
      EnableAutocomplete=   False
      Enabled         =   True
      EnableLineFoldings=   True
      enableLineFoldingSetting=   False
      GutterBackgroundColor=   &cEEEEEE00
      GutterSeparationLineColor=   &c88888800
      GutterWidth     =   0
      Height          =   457
      HelpTag         =   ""
      HighlightBlocksOnMouseOverGutter=   True
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   1
      ignoreRepaint   =   False
      IndentPixels    =   16
      IndentVisually  =   False
      Index           =   -2147483648
      InitialParent   =   ""
      KeepEntireTextIndented=   False
      Left            =   0
      leftMarginOffset=   4
      LineNumbersColor=   &c88888800
      LineNumbersTextFont=   "System"
      LineNumbersTextSize=   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaxVisibleLines =   0
      ReadOnly        =   False
      RightMarginAtPixel=   0
      RightScrollMargin=   150
      Scope           =   0
      ScrollPosition  =   0
      ScrollPositionX =   0
      selLength       =   0
      selStart        =   0
      SelText         =   ""
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TabWidth        =   4
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Consolas"
      TextHeight      =   0
      TextLength      =   0
      TextSelectionColor=   &c00000000
      TextSize        =   12
      ThickInsertionPoint=   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   584
   End
   Begin ScrollBar horizontalSB
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   0
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   457
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   585
   End
   Begin ScrollBar verticalSB
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   457
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   584
      LineStep        =   1
      LiveScroll      =   True
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   0
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      Value           =   0
      Visible         =   True
      Width           =   16
   End
   Begin PushButton btnDefault
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   True
      Caption         =   "Default"
      Default         =   False
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Ubuntu Condensed"
      TextSize        =   14.0
      TextUnit        =   0
      Top             =   485
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  txtFileContents.Text = demo.GetLoaderCode
		  
		  me.Visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty


#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  // We save the undo item
		  AddUndoAction
		  
		  // Saving the Loader Bar coordinates
		  demo.setLoaderCode(txtFileContents.Text)
		  
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
#tag Events txtFileContents
	#tag Event
		Sub TextChanged()
		  btnOK.Enabled = true
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X as integer, Y as integer) As boolean
		  #pragma unused X
		  #pragma unused Y
		  
		  // this is just a cheap trick to cause a redraw for debugging
		  txtFileContents.Redraw
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  //set the scrollbars
		  me.setScrollbars(horizontalSB, verticalSB)
		  
		  me.ClearDirtyLines
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events horizontalSB
	#tag Event
		Sub ValueChanged()
		  txtFileContents.ScrollPositionx = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events verticalSB
	#tag Event
		Sub ValueChanged()
		  txtFileContents.ScrollPosition = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnDefault
	#tag Event
		Sub Action()
		  select case demo.engine
		    
		  case demo.phoenix
		    txtFileContents.Text = demo.cstLoaderPhoenix
		    
		  else
		    txtFileContents.Text = demo.cstLoaderDragon
		    
		  end select
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
