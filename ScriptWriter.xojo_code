#tag Module
Protected Module ScriptWriter
	#tag Method, Flags = &h1
		Protected Function AddScriptHeaders(script as string, bar as Dictionary) As String
		  dim theScript as string
		  dim i as integer
		  
		  // Section Name
		  theScript = "[" + bar.value("type") + "]" + EndOfLine.Windows
		  
		  theScript = theScript + "id " + bar.value("id") + EndOfLine.Windows
		  
		  // Start and Ending times
		  theScript = theScript + "start " + str(round(bar.value("startTime").DoubleValue * 1000)/1000) + EndOfLine.Windows
		  theScript = theScript + "end "   + str(round(bar.value("endTime"  ).DoubleValue * 1000)/1000) + EndOfLine.Windows
		  
		  // Visibility
		  if bar.value("enabled").BooleanValue then
		    theScript = theScript + "enabled 1" + EndOfLine.Windows
		  else
		    theScript = theScript + "enabled 0" + EndOfLine.Windows
		  end if
		  
		  // Layer
		  theScript = theScript + "layer " + bar.value("layer") + EndOfLine.Windows
		  
		  // Blending mode
		  if bar.value("srcBlending") <> "" and bar.value("dstBlending") <> "" then
		    theScript = theScript + "blend " + bar.value("srcBlending") + " " + bar.value("dstBlending") + EndOfLine.Windows
		  end if
		  
		  // Blending equation
		  if bar.value("blendingEQ") <> "" then
		    theScript = theScript + "blendequation " + bar.value("blendingEQ") + EndOfLine.Windows
		  end if
		  
		  // Rest of the script
		  // We make the line separator CR + LF (13 + 10)
		  theScript = theScript + EndOfLine.Windows + ReplaceLineEndings(script, EndOfLine.Windows)
		  
		  return theScript
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CreateConfiguration(theDemo as classdemo)
		  // Generate configuration scripts
		  ScriptWriter.WriteControlSPO (theDemo)
		  ScriptWriter.WriteGraphicsSPO(theDemo)
		  ScriptWriter.WriteLoaderSPO  (theDemo)
		  
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    // Copy fonts texture
		    dim destination as folderitem = theDemo.GetDataFolder.child("fonts")
		    
		    dim f as new FolderItem
		    
		    f = f.child("Engines")
		    f = f.child("Dragon")
		    f = f.child("fonts")
		    f = f.Child("font.tga")
		    
		    destination.CreateAsFolder
		    f.CopyFileTo(destination.child("font.tga"))
		    
		  case theDemo.phoenix
		    // Copy resources texture
		    dim f as new FolderItem
		    
		    f = f.child("Engines")
		    f = f.child("Phoenix")
		    f = f.child("resources")
		    
		    CopyFileOrFolder(f, theDemo.GetDataFolder)
		    
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteControlSPO(theDemo as classDemo)
		  dim file as TextOutputStream
		  dim contents as String
		  
		  contents = contents + "demo_name " + theDemo.GetDemoName + EndOfLine.Windows
		  contents = contents + "debug 1" + EndOfLine.Windows
		  
		  //Loop mode
		  if theDemo.GetDemoLoopMode then
		    contents = contents + "loop 1" + EndOfLine.Windows
		  else
		    contents = contents + "loop 0" + EndOfLine.Windows
		  end if
		  
		  contents = contents + "sound 1" + EndOfLine.Windows
		  
		  contents = contents + "demo_start " + str(theDemo.getDemoStartTime) + EndOfLine.Windows
		  contents = contents + "demo_end "   + Str(theDemo.getDemoEndTime) + EndOfLine.Windows
		  
		  contents = contents + "slave 1" + EndOfLine.Windows
		  
		  // Write the file to disk
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    file = theDemo.GetDataFolder().child("control.spo").CreateTextFile
		    
		  case theDemo.phoenix
		    contents = contents + "log_detail 4" + EndOfLine.Windows
		    
		    if not theDemo.GetDataFolder().child("config").Exists then
		      theDemo.GetDataFolder.child("config").CreateAsFolder
		    end if
		    
		    file = theDemo.GetDataFolder().child("config").child("control.spo").CreateTextFile
		    
		  end
		  
		  file.Write contents
		  file.Close
		  
		  Trace("ScriptWriter:WriteControlSPO: Control configuration written successfuly.", cstTraceLevelLog)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteGraphicsSPO(theDemo as classDemo)
		  Dim file As TextOutputStream
		  dim contents as String
		  dim i as integer
		  
		  if theDemo.GetVideoFullScreen then
		    contents = contents + "gl_fullscreen 1" + EndOfLine.Windows
		  else
		    contents = contents + "gl_fullscreen 0" + EndOfLine.Windows
		  end if
		  
		  contents = contents + "gl_accum 0" + EndOfLine.Windows
		  
		  // screen attributes
		  contents = contents + "gl_width " + str(theDemo.GetVideoScreenWidth) + EndOfLine.Windows
		  contents = contents + "gl_height " + Str(theDemo.GetVideoScreenHeight) + EndOfLine.Windows
		  
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    contents = contents + "gl_bpp 32" + EndOfLine.Windows
		    contents = contents + "gl_zbuffer 16" + EndOfLine.Windows
		    contents = contents + "gl_multisampling 0" + EndOfLine.Windows
		    contents = contents + "gl_info 0" + EndOfLine.Windows
		    
		  case thedemo.phoenix
		    contents = contents + "gl_aspect " + str(theDemo.GetVideoScreenWidth / theDemo.GetVideoScreenHeight) + EndOfLine.Windows
		    contents = contents + "gl_vsync 0" + EndOfLine.Windows
		    contents = contents + "gl_vsync " + str(theDemo.getVideoVerticalSync) + EndOfLine.Windows
		    
		  end select
		  
		  contents = contents + "gl_stencil 0" + EndOfLine.Windows
		  
		  dim theFBOs() as string
		  theFBOs = theDemo.getFBOsList
		  // FBOs configuration
		  
		  For i=0 To UBound(theFBOs)
		    contents = contents + EndOfLine.Windows
		    
		    If NthField(theFBOs(i), " ", 1) = "0" Then
		      // Fixed size FBO
		      contents = contents + "fbo_" + Str(i) + "_width "  + NthField(theFBOs(i), " ", 3) + EndOfLine.Windows
		      contents = contents + "fbo_" + Str(i) + "_height " + NthField(theFBOs(i), " ", 4) + EndOfLine.Windows
		      
		    Else
		      // Scaled FBO
		      contents = contents + "fbo_" + Str(i) + "_ratio "  + NthField(theFBOs(i), " ", 1) + EndOfLine.Windows
		      
		    End If
		    
		    contents = contents + "fbo_" + Str(i) + "_format "           + NthField(theFBOs(i), " ", 2) + EndOfLine.Windows
		    contents = contents + "fbo_" + Str(i) + "_colorAttachments " + NthField(theFBOs(i), " ", 5) + EndOfLine.Windows
		    
		  Next
		  
		  // Write the file to disk
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    file = theDemo.GetDataFolder().child("graphics.spo").CreateTextFile
		    
		  case theDemo.phoenix
		    if not theDemo.GetDataFolder().child("config").Exists then
		      theDemo.GetDataFolder.child("config").CreateAsFolder
		    end if
		    
		    file = theDemo.GetDataFolder().child("config").child("graphics.spo").CreateTextFile
		    
		  end
		  
		  file.Write contents
		  file.Close
		  
		  Trace("ScriptWriter:WriteGraphicsSPO: Graphics configuration written successfuly.", cstTraceLevelLog)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteLoaderSPO(theDemo as classDemo)
		  dim contents as String
		  
		  dim file as TextOutputStream
		  
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    file = theDemo.GetDataFolder().child("loader.spo").CreateTextFile
		    
		    dim LoaderBarCoords(3) as single
		    
		    dim loaderInitialGraphicPath as string
		    dim loaderFinalGraphicPath as string
		    
		    loaderInitialGraphicPath = theDemo.GetLoaderInitialGraphic
		    loaderFinalGraphicPath = theDemo.GetLoaderFinalGraphic
		    
		    if loaderInitialGraphicPath <> "" and loaderFinalGraphicPath <> "" then
		      contents = contents + "[loading]" + EndOfLine.Windows
		      contents = contents + "string data/pool/" + loaderInitialGraphicPath + EndOfLine.Windows
		      contents = contents + "string data/pool/" + loaderFinalGraphicPath + EndOfLine.Windows
		      
		      // Progress bar color
		      contents = contents + "fProgressBarColor " + _
		      str(round(1000 * theDemo.GetLoaderBarColor.red / 255) / 1000) + " " + _
		      str(round(1000 * theDemo.GetLoaderBarColor.green / 255) / 1000) + " " + _
		      str(round(1000 * theDemo.GetLoaderBarColor.blue / 255) / 1000) + " " + _
		      str(theDemo.GetLoaderBarAlpha) + EndOfLine.Windows
		      
		      // Progress bar position
		      // file.WriteLine "fProgressBarPosition 0.42 0.29 0.61 0.332" + EndOfLine.Windows
		      LoaderBarCoords = theDemo.getLoaderBarCoords
		      contents = contents + "fProgressBarPosition " + _
		      str(round(1000 * LoaderBarCoords(0)) / 1000) + " " + _
		      str(round(1000 * LoaderBarCoords(1)) / 1000) + " " + _
		      str(round(1000 * LoaderBarCoords(2)) / 1000) + " " + _
		      str(round(1000 * LoaderBarCoords(0)) / 1000) + " " + EndOfLine.Windows
		      
		      // progress bar border color
		      contents = contents + "fProgressBarBorderColor 0 0 0 0" + EndOfLine.Windows
		      
		      // Progress bar border position
		      contents = contents + "fProgressBarBorderPosition 0.25 0.10 0.75 0.12" + EndOfLine.Windows
		      
		      // Progress bar border width
		      contents = contents + "fBorderWidth 0.002" + EndOfLine.Windows
		      
		      file.Write contents
		      
		      Trace("ScriptWriter:WriteLoaderSPO: Loader configuration written successfuly.", cstTraceLevelLog)
		      
		    else
		      Trace("ScriptWriter:WriteLoaderSPO: Loader configuration not defined. File was not written.", cstTraceLevelWarning)
		      
		    end if
		    
		  case theDemo.phoenix
		    if not theDemo.GetDataFolder().child("config").Exists then
		      theDemo.GetDataFolder.child("config").CreateAsFolder
		    end if
		    
		    file = theDemo.GetDataFolder().child("config").child("loader.spo").CreateTextFile
		    
		    contents = contents + "[loading]" + EndOfLine.Windows
		    contents = contents + "id loader" + EndOfLine.Windows
		    contents = contents + "string /pool/loadingback.jpg" + EndOfLine.Windows
		    contents = contents + "string /pool/loadingfront.jpg" + EndOfLine.Windows
		    contents = contents + "string /pool/loadingbar.jpg" + EndOfLine.Windows
		    contents = contents + "fProgressBarPositionX 0" + EndOfLine.Windows
		    contents = contents + "fProgressBarPositionY -0.4" + EndOfLine.Windows
		    contents = contents + "fBorderWidth 0.1" + EndOfLine.Windows
		    
		    file.Write contents
		    
		  end select
		  
		  file.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WriteScriptsSPO(theDemo as classDemo)
		  dim file as TextOutputStream
		  dim scriptFolderItem as FolderItem
		  
		  dim barName as string
		  
		  dim allBars() as dictionary
		  allBars = thedemo.getAllBarsData
		  
		  // Create the new script files
		  
		  for i as integer = 0 to UBound(allBars)
		    // Don't export a bar if the type has not been set
		    if allBars(i).Value("type") = "" then continue
		    
		    //We decide the bar name
		    barName = format(allBars(i).Value("id").IntegerValue, "000000") + "_" + allBars(i).Value("type") + ".spo"
		    
		    //We create the script file
		    file = theDemo.GetDataFolder.child(barName).CreateTextFile
		    
		    //We write the contents
		    file.write AddScriptHeaders(allBars(i).Value("script"), allBars(i))
		    
		    //We close the script file
		    file.close
		  next
		End Sub
	#tag EndMethod


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
	#tag EndViewBehavior
End Module
#tag EndModule
