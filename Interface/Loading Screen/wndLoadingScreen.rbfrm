#tag Window
Begin Window wndLoadingScreen
   BackColor       =   5863638
   Backdrop        =   1775445212
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   2
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   480
   ImplicitInstance=   True
   LiveResize      =   False
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   480
   MinimizeButton  =   True
   MinWidth        =   640
   Placement       =   0
   Resizeable      =   True
   Title           =   "Loading Visuals"
   Visible         =   True
   Width           =   640
   Begin Timer tmrCloseWindow
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockedInPosition=   False
      Mode            =   0
      Period          =   2000
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   428
      Width           =   32
   End
   Begin Label StaticText2
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Designed and engineered by Spöntz"
      TextAlign       =   1
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   460
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   260
      Window          =   0
      _mWindow        =   0
   End
   Begin Label StaticText1
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   11
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   4
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Spöntz Inferno Editor  ©2003-2009"
      TextAlign       =   0
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   5
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   202
      Window          =   0
      _mWindow        =   0
   End
   Begin Label txtVersion
      Active          =   ""
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   11
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   433
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   ""
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Version 2.0.0.0.0.0"
      TextAlign       =   2
      TextColor       =   16777215
      TextFont        =   "Arial"
      TextSize        =   10
      Top             =   5
      Transparent     =   False
      Underline       =   ""
      Visible         =   True
      Width           =   202
      Window          =   0
      _mWindow        =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  txtVersion.text = "Version " + str(App.MajorVersion) + "." + str(App.MinorVersion) + "." + str(App.BugVersion) + "." + str(App.StageCode) + "." + str(App.NonReleaseVersion)
		  
		  tmrCloseWindow.Mode = 1
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events tmrCloseWindow
	#tag Event
		Sub Action()
		  //End of the initialization
		  wndLoadingScreen.close
		  
		  // Clear previous data folders from crashed executions
		  dim file as new FolderItem
		  
		  Files.CleanDataFolders
		  
		  // Project loading
		  // TODO: Load the default project
		  // file = file.Child("Engines").Child("Inferno").Child("Default Project").Child("Project.spp")
		  
		  // Open the timeline window
		  dim myWndTimeLine as new wndTimeLine
		  myWndTimeLine.init
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtVersion
	#tag Event
		Sub Open()
		  me.text = "Version " + App.applicationVersion
		End Sub
	#tag EndEvent
#tag EndEvents
