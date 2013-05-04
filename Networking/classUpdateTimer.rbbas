#tag Class
Protected Class classUpdateTimer
Inherits timer
	#tag Event
		Sub Action()
		  dim i as integer
		  dim state as string
		  
		  for i=0 to UBound(Engines.EnginesList)
		    if not Engines.EnginesList(i).myConnector.IsConnected then
		      
		      Engines.EnginesList(i).fps = val(NthField(Engines.EnginesList(i).myConnector.Response, Engines.EnginesList(i).myConnector.paramSeparator, 3))
		      state = NthField(Engines.EnginesList(i).myConnector.Response, Engines.EnginesList(i).myConnector.paramSeparator, 4)
		      
		      select case state
		        
		      case "0"
		        engines.EnginesList(i).state = "Play"
		      case "1"
		        engines.EnginesList(i).state = "Pause"
		      case "2"
		        engines.EnginesList(i).state = "Rewind"
		      case "3"
		        engines.EnginesList(i).state = "Fast Forward"
		      end
		      
		      Engines.EnginesList(i).runTime = val(NthField(Engines.EnginesList(i).myConnector.Response, Engines.EnginesList(i).myConnector.paramSeparator, 5))
		      
		      if Ubound(Engines.EnginesList(i).myConnector.messageQueue) > -1  then Engines.EnginesList(i).myConnector.Connect
		      
		    end if
		  next
		  
		  if Microseconds - lastPingTime > 500000 then
		    lastPingTime = Microseconds
		    engines.ping
		  end if
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private lastPingTime As double = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="timer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InheritedFrom="timer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
			InheritedFrom="timer"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="timer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
			InheritedFrom="timer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="timer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InheritedFrom="timer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
