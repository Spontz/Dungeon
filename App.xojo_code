#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  // Obtain the version string
		  applicationVersion=str(App.MajorVersion) + "." + str(app.MinorVersion) + "." + str(App.BugVersion) + "." + str(app.StageCode)+ "." +  str(App.NonReleaseVersion)
		  applicationName=self.applicationName
		  
		  // Open the trace window if in debug mode
		  if DebugBuild then
		    wndTrace.Show
		  end if
		  
		  // Create a new global undo manager for the application.
		  UndoManager = New UndoKit.UndoManager
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  dim stack as string
		  dim counter as integer
		  dim stackAll() as string = error.Stack()
		  
		  for i as integer = 0 to ubound(error.stack)
		    counter = counter + 1
		    stack = stackAll(i) + EndOfLine
		    
		    if counter > 10 then exit
		  next
		  
		  // Leave a trace of the error
		  Trace("App:UnhandledException: Stack trace:" + EndOfLine + EndOfLine + stack, cstTraceLevelCritical)
		  
		  Return true
		End Function
	#tag EndEvent


	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
		  dim file as folderitem = Chooseproject()
		  
		  if file <> nil then
		    // And load the project
		    dim newTimeline as new wndTimeLine
		    call newTimeline.init(file)
		  end if
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileQuit() As Boolean Handles FileQuit.Action
		  Files.CleanDataFolders
		  
		  quit
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpOnlineHelp() As Boolean Handles HelpOnlineHelp.Action
		  ShowURL "http://www.spontz.org/index.php?pageID=54"
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpSpntzHomePage() As Boolean Handles HelpSpntzHomePage.Action
		  ShowURL "http://www.spontz.org"
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuAppleAboutSpöntzVisualsEditor() As Boolean Handles mnuAppleAboutSpöntzVisualsEditor.Action
		  wndAbout.show
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuPathEditor() As Boolean Handles mnuPathEditor.Action
		  // Opening of a new instance of the path editor
		  dim newWindow as wndPathsEditor
		  newWindow = new wndPathsEditor
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function mnuTrace() As Boolean Handles mnuTrace.Action
		  wndTrace.Show
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function NewProject() As Boolean Handles NewProject.Action
		  wndChooseDemoengine.show
		  
		End Function
	#tag EndMenuHandler


	#tag Property, Flags = &h0
		applicationName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		applicationVersion As String
	#tag EndProperty

	#tag Property, Flags = &h0
		fonts() As folderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		UndoManager As UndoKit.UndoManager
	#tag EndProperty

	#tag Property, Flags = &h0
		WindowBorderWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		WindowTopBarHeight As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="applicationName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="applicationVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowBorderWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowTopBarHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
