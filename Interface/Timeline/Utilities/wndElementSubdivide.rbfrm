#tag Window
Begin Window wndElementSubdivide
   BackColor       =   15987699
   Backdrop        =   0
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   85
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   3
   Resizeable      =   False
   Title           =   "Subdivide Element"
   Visible         =   False
   Width           =   313
   Begin PushButton btnOK
      AutoDeactivate  =   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   224
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
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
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   143
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
      TextUnit        =   0
      Top             =   46
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin Label StaticText1
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
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Subdivide the selection in:"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   256
      Begin Label lblElementsNum
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "StaticText1"
         Italic          =   False
         Left            =   180
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
         Text            =   2
         TextAlign       =   2
         TextColor       =   0
         TextFont        =   "System"
         TextSize        =   12
         TextUnit        =   0
         Top             =   14
         Underline       =   False
         Visible         =   True
         Width           =   36
      End
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   242
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
      Text            =   "elements"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   12
      TextUnit        =   0
      Top             =   14
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin UpDownArrows UpDownArrows1
      AcceptFocus     =   False
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   23
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   222
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   12
      Visible         =   True
      Width           =   13
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo, theSection as string)
		  demo = theDemo
		  section = theSection
		  
		  me.Visible = true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h21
		Private section As string
	#tag EndProperty


#tag EndWindowCode

#tag Events btnOK
	#tag Event
		Sub Action()
		  dim divisions as integer
		  dim startTime, endTime, distance as single
		  dim i,j as integer
		  dim createdSection as integer 
		  
		  // TODO
		  
		  //We get the number of resulting sections
		  divisions = val(lblElementsNum.text)
		  
		  'distance = (demo.sections.getEndTime(section) - demo.sections.getStartTime(section)) / divisions
		  'startTime = demo.sections.getStartTime(section)
		  'endTime = startTime + distance
		  '
		  'for i = 1 to divisions
		  'CreatedSection = demo.sections.create(demo.sections.getLayer(section), StartTime, EndTime)
		  '
		  '// Notify the network demoengines about the new section
		  'engines.createSection(createdSection)
		  '
		  '// We populate the new created section with the properties of the original one
		  'demo.sections.CopyContents(section, CreatedSection)
		  '
		  '// And prepare the Start and Ending times for the next iteration
		  'startTime = EndTime
		  'EndTime = StartTime + Distance
		  'next
		  
		  //Finally we erase the original section
		  demo.DeleteBar(section)
		  
		  wndElementSubdivide.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  wndElementSubdivide.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UpDownArrows1
	#tag Event
		Sub Down()
		  dim newValue as integer
		  
		  newValue = val(lblElementsNum.text) - 1
		  
		  if newValue > 1 then
		    lblElementsNum.text = cstr(newValue)
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub Up()
		  dim newValue as integer
		  
		  newValue = val(lblElementsNum.text) + 1
		  lblElementsNum.text = cstr(newValue)
		End Sub
	#tag EndEvent
#tag EndEvents
