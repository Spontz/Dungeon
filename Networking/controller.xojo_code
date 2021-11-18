#tag Module
Protected Module controller
	#tag Method, Flags = &h0
		Sub activateDemo(theDemo as classDemo)
		  if demo.GetDataFolder.AbsolutePath <> theDemo.GetDataFolder.AbsolutePath or left(demo.GetDataFolder.Name, 5) = "data_" then
		    dim tempFolderItem as FolderItem
		    
		    // Remove the current Data Folder
		    tempFolderItem = demo.GetDataFolder()
		    tempFolderItem.Name = "data_" + gethash
		    demo.SetDataFolder(tempFolderItem)
		    
		    // Set the new data folder
		    demo = theDemo
		    
		    tempFolderItem = demo.GetDataFolder()
		    tempFolderItem.MoveFileTo tempFolderItem.Parent.Child("data")
		    demo.SetDataFolder(tempFolderItem.Parent.Child("data"))
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub createBar(theBarID as string)
		  dim theBarScript as String
		  
		  theBarScript = demo.getBarScript(theBarID)
		  theBarScript = ScriptWriter.AddScriptHeaders(theBarScript, demo.getBarData(theBarID))
		  
		  if left(theBarScript, 2) = "[]" then return
		  
		  Engine.createBar(theBarScript)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteBar(theBarID as string)
		  Engine.deleteBar(theBarID)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineIP() As String
		  return Engine.IP
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineName() As String
		  return Engine.Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineState() As String
		  return Engine.state
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getHash() As string
		  hash = hash + 1
		  Return str(hash)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function handleKey(key as string) As boolean
		  // Manage the Engine Play/Pause toggle status
		  
		  select case key
		    
		  case " "
		    controller.TogglePlayPause
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  // Assign the demo
		  demo = theDemo
		  
		  // Check if the engine is already inited
		  if Engine <> nil then return
		  
		  //
		  netSeparator = chr(31)
		  
		  // All the engines are created with default properties, this means:
		  // Name: Localhost
		  // IP: 127.0.0.1
		  // Port: 29000
		  
		  Engine = new classEngine(theDemo.engine)
		  
		  updateTimer = new classUpdateTimer
		  updateTimer.Period = 1 // As soon as possible
		  updateTimer.Mode = 2  // Multiple
		  updateTimer.Enabled = true // Activate the timer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LaunchLocal(demo as classDemo)
		  Dim VisualsEngine As FolderItem
		  dim result as string
		  
		  #if TargetWindows
		    select case demo.engine
		      
		    case demo.dragon
		      
		      VisualsEngine = GetFolderItem("Engines").child("Dragon")
		      
		      //And launch it
		      If VisualsEngine.exists Then
		        Dim command As String
		        command = "cd " + VisualsEngine.ShellPath +" && " + "sve.exe"
		        Trace("Engines.launchLocal: Launching engine with: " + command, cstTraceLevelLog)
		        
		        Engine.engineShell = new classEngineShell
		        Engine.engineShell.Mode = 1 // Asynchronous shell
		        Engine.engineShell.Execute command
		      Else
		        Notify("The engine could not be located","The engine executable must be named sve.exe and be located inside the Engines/Dragon folder")
		      end if
		      
		    case demo.phoenix
		      Trace("Engines.launchLocal: Screen size: " + Screen(0).Width.ToText + "x" + Screen(0).Height.ToText + " pixels", cstTraceLevelLog)
		      
		      dim wLeft   as integer = Screen(0).ScaleFactor * Screen(0).Width / 2
		      dim wTop    as integer = Screen(0).ScaleFactor * App.WindowTopBarHeight
		      dim wHeight as integer = Screen(0).ScaleFactor * (Screen(0).Height / 2 - App.WindowTopBarHeight)
		      dim wWidth  as integer = Screen(0).ScaleFactor * Screen(0).Width / 2
		      
		      VisualsEngine = GetFolderItem("Engines").child("Phoenix")
		      
		      //And launch it
		      If VisualsEngine.exists Then
		        Dim command As String
		        command = "cd " + VisualsEngine.ShellPath +" && " + "Phoenix.exe -window " + wLeft.ToText + " " + wTop.ToText + " " + wWidth.totext + " " + wHeight.toText
		        Trace("Engines.launchLocal: Launching engine with: " + command, cstTraceLevelLog)
		        
		        Engine.engineShell = new classEngineShell
		        Engine.engineShell.Mode = 1 // Asynchronous shell
		        Engine.engineShell.Execute command
		      Else
		        Notify("The engine could not be located","The engine executable must be named sve.exe and be located inside the Engines/Dragon folder")
		      end if
		      
		    end select
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ping()
		  Engine.Ping
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetEngine()
		  Engine.myConnector.resetConnector
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarEndTime(sectionIDs as String, endTime as single)
		  Engine.SetSectionsEndTime(sectionIDs, endTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarLayer(sectionID as String, theLayer as single)
		  Engine.SetSectionLayer(sectionID, theLayer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarStartTime(sectionIDs as string, startTime as single)
		  Engine.SetSectionsStartTime(sectionIDs, startTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCurrentTime(currentTime as single)
		  Engine.SetCurrentTime(currentTime)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setEndTime(endTime as single)
		  Engine.SetEndTime(endTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPause()
		  Engine.Pause
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPlay()
		  Engine.play
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setStartTime(startTime as single)
		  Engine.SetStartTime(startTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub stopLocal()
		  Trace("Engines.quit: Asking the demo engine to terminate...", cstTraceLevelLog)
		  
		  Engine.Quit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleBars(engineBarIDs() as string)
		  dim theMessage() as string
		  
		  for i as integer = 0 to UBound(engineBarIDs)
		    theMessage.append engineBarIDs(i)
		  next
		  
		  Engine.ToggleBars join(theMessage, ",")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TogglePlayPause()
		  // If the engine is in Pause mode we put it in Play mode, and vice-versa
		  if controller.engine.state = "Play" then
		    controller.engine.Pause
		  else
		    controller.engine.Play
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateBar(theBarID as string)
		  dim theNewBarScript as String
		  
		  theNewBarScript = demo.getBarScript(theBarID)
		  theNewBarScript = ScriptWriter.AddScriptHeaders(theNewBarScript, demo.getBarData(theBarID))
		  
		  if left(theNewBarScript, 2) = "[]" then return
		  
		  // Send the message for all the engines
		  Engine.updateBar(theBarID, theNewBarScript)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		Engine As classEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private hash As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		netSeparator As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private updateTimer As classUpdateTimer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="netSeparator"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
