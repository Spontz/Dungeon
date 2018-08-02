#tag Class
Protected Class classUpdateTimer
Inherits timer
	#tag Event
		Sub Action()
		  Dim state As String
		  
		  if not controller.Engine.myConnector.IsConnected then
		    
		    controller.Engine.fps = val(NthField(controller.Engine.myConnector.Response, controller.Engine.myConnector.paramSeparator, 3))
		    state = NthField(controller.Engine.myConnector.Response, controller.Engine.myConnector.paramSeparator, 4)
		    
		    select case state
		      
		    case "0"
		      controller.Engine.state = "Play"
		    case "1"
		      controller.Engine.state = "Pause"
		    case "2"
		      controller.Engine.state = "Rewind"
		    case "3"
		      controller.Engine.state = "Fast Forward"
		    end
		    
		    controller.Engine.runTime = val(NthField(controller.Engine.myConnector.Response, controller.Engine.myConnector.paramSeparator, 5))
		    
		    if Ubound(controller.Engine.myConnector.messageQueue) > -1  then controller.Engine.myConnector.Connect
		    
		  end if
		  
		  If Microseconds - lastPingTime > 500000 Then
		    lastPingTime = Microseconds
		    controller.ping
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
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="Integer"
			EditorType="Enum"
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
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
