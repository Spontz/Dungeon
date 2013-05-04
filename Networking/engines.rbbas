#tag Module
Protected Module engines
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
		  dim i as integer
		  dim theBarScript as String
		  
		  theBarScript = demo.getBarScript(theBarID)
		  theBarScript = ScriptWriter.AddScriptHeaders(theBarScript, demo.getBarData(theBarID))
		  
		  if left(theBarScript, 2) = "[]" then return
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).createBar(theBarScript)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteBar(theBarID as integer)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).deleteBar(cstr(theBarID))
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineIP(engineID as integer) As String
		  return EnginesList(engineID).IP
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineName(engineID as integer) As String
		  return EnginesList(engineID).Name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEnginesCount() As integer
		  return UBound(EnginesList) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineState(engineID as integer) As String
		  return EnginesList(engineID).state
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
		    engines.TogglePlayPause
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  // Assign the demo
		  demo = theDemo
		  
		  // Check if the engine is already inited
		  if UBound(EnginesList) > -1 then return
		  
		  // This method creates the default engine (localhost)
		  Redim EnginesList(0)
		  
		  // All the engines are created with default properties, this means:
		  // Name: Localhost
		  // IP: 127.0.0.1
		  // Port: 28000
		  
		  EnginesList(0) = new classEngine
		  
		  updateTimer = new classUpdateTimer
		  updateTimer.Period = 1 // As soon as possible
		  updateTimer.Mode = 2  // Multiple
		  updateTimer.Enabled = true // Activate the timer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LaunchLocal()
		  dim VisualsEngine as FolderItem
		  dim result as string
		  
		  //We locate the Visuals Engine
		  #if TargetMacOS
		    result = "open /Volumes/" + ReplaceAll(ReplaceAllB(demo.GetEnginesFolder.child("Inferno").AbsolutePath, " ", "\ "), ":", "/") + "Inferno.app"
		    result = executeShell (result)
		    
		    if result <>"" then notify ("The engine could not be located", "the shell manager said: " + result)
		  #endif
		  
		  #if targetWin32
		    VisualsEngine = GetFolderItem("Engines").child("Inferno").child("Inferno.exe")
		    
		    //And launch it
		    if VisualsEngine.exists then
		      VisualsEngine.launch
		    else
		      Notify("The engine could not be located","The engine executable must be named Inferno.exe and be located inside the Engines/Inferno folder")
		    end if
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ping()
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).Ping
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetEngine(engineID as integer)
		  EnginesList(engineID).myConnector.resetConnector
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarEndTime(sectionIDs as String, endTime as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetSectionsEndTime(sectionIDs, endTime)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarLayer(sectionID as String, theLayer as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetSectionLayer(sectionID, theLayer)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub setBarStartTime(sectionIDs as string, startTime as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetSectionsStartTime(sectionIDs, startTime)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCurrentTime(currentTime as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetCurrentTime(currentTime)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setEndTime(endTime as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetEndTime(endTime)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPause()
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).Pause
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPlay()
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).Play
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setRestart()
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).Restart
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setStartTime(startTime as single)
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).SetStartTime(startTime)
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleBars(engineBarIDs() as integer)
		  dim i as integer
		  dim theMessage as string
		  
		  for i=0 to UBound(engineBarIDs)
		    theMessage = theMessage + str(engineBarIDs(i)) + ","
		  next
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).ToggleBars theMessage
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TogglePlayPause()
		  // If the engine is in Pause mode we put it in Play mode, and vice-versa
		  dim i as integer
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    if EnginesList(i).state = "Play" then
		      EnginesList(i).Pause
		    else
		      EnginesList(i).Play
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateBar(theBarID as string)
		  dim i as integer
		  dim theNewBarScript as String
		  
		  theNewBarScript = demo.getBarScript(theBarID)
		  theNewBarScript = ScriptWriter.AddScriptHeaders(theNewBarScript, demo.getBarData(theBarID))
		  
		  if left(theNewBarScript, 2) = "[]" then return
		  
		  // Send the message for all the engines
		  for i=0 to Ubound(EnginesList)
		    EnginesList(i).updateBar(theBarID, theNewBarScript)
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h0
		EnginesList(-1) As classEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private hash As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		mainEngine As Integer = 0
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
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mainEngine"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
