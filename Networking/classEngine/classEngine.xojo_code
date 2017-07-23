#tag Class
Protected Class classEngine
	#tag Method, Flags = &h0
		Sub Constructor(demotype as string)
		  type = demoType
		  
		  myConnector = new classConnector
		  
		  myConnector.Address = IP
		  myConnector.Port = Port
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub createBar(theBarScript as String)
		  myConnector.SendMessage "section::new::" + theBarScript
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteBar(theBarID as String)
		  myConnector.SendMessage "section::delete::" + theBarID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub launch()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pause()
		  myConnector.SendMessage "command::pause"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Ping()
		  myConnector.SendMessage "command::ping"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Play()
		  myConnector.SendMessage "command::play"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Restart()
		  myConnector.SendMessage "command::restart"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCurrentTime(theTime as single)
		  myConnector.SendMessage "command::currentTime::" + str(theTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setEndTime(theTime as single)
		  myConnector.SendMessage "command::endTime::" + str(theTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSectionLayer(theSectionID as string, theLayer as single)
		  myConnector.SendMessage "section::setLayer::" + str(theLayer) + "::" + theSectionID
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSectionsEndTime(theSectionIDs as string, theTime as single)
		  myConnector.SendMessage "section::setEndTime::" + str(theTime) + "::" + theSectionIDs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSectionsStartTime(theSectionIDs as string, theTime as single)
		  myConnector.SendMessage "section::setStartTime::" + str(theTime) + "::" + theSectionIDs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStartTime(theTime as single)
		  myConnector.SendMessage "command::startTime::" + str(theTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ToggleBars(BarIDs as String)
		  myConnector.SendMessage "section::toggle::" + BarIDs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateBar(theBarID as String, theNewSectionScript as String)
		  myConnector.SendMessage "section::update::" + theBarID + "::" + theNewSectionScript
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		fps As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IP As String = "127.0.0.1"
	#tag EndProperty

	#tag Property, Flags = &h0
		myConnector As classConnector
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String = "Localhost"
	#tag EndProperty

	#tag Property, Flags = &h0
		Port As integer = 28000
	#tag EndProperty

	#tag Property, Flags = &h0
		runTime As double = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		state As String = "Unknown"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private type As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="fps"
			Group="Behavior"
			InitialValue="0"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IP"
			Group="Behavior"
			InitialValue="127.0.0.1"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="Port"
			Group="Behavior"
			InitialValue="28000"
			Type="integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="runTime"
			Group="Behavior"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="state"
			Group="Behavior"
			InitialValue="Unknown"
			Type="String"
			EditorType="MultiLineEditor"
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
End Class
#tag EndClass
