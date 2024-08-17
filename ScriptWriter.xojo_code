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
		  
		  // screen attributes
		  contents = contents + "gl_width " + str(theDemo.GetVideoScreenWidth) + EndOfLine.Windows
		  contents = contents + "gl_height " + Str(theDemo.GetVideoScreenHeight) + EndOfLine.Windows
		  
		  select case theDemo.engine
		    
		  case theDemo.dragon
		    contents = contents + "gl_accum 0" + EndOfLine.Windows
		    contents = contents + "gl_bpp 32" + EndOfLine.Windows
		    contents = contents + "gl_zbuffer 16" + EndOfLine.Windows
		    contents = contents + "gl_multisampling 0" + EndOfLine.Windows
		    contents = contents + "gl_info 0" + EndOfLine.Windows
		    
		  case thedemo.phoenix
		    contents = contents + "gl_aspect " + str(theDemo.GetVideoScreenWidth / theDemo.GetVideoScreenHeight) + EndOfLine.Windows
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
		    
		    if NthField(theFBOs(i), " ", 6) = "Bilinear" then
		      contents = contents + "fbo_" + Str(i) + "_useFilter 1" + EndOfLine.Windows
		    else
		      contents = contents + "fbo_" + Str(i) + "_useFilter 0" + EndOfLine.Windows
		    end if
		    
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
		  
		  if not theDemo.GetDataFolder().child("config").Exists then
		    theDemo.GetDataFolder.child("config").CreateAsFolder
		  end if
		  
		  file = theDemo.GetDataFolder().child("config").child("loader.spo").CreateTextFile
		  
		  contents = contents + "[loading]" + EndOfLine.Windows
		  contents = contents + theDemo.GetLoaderCode
		  
		  file.Write contents
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
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
