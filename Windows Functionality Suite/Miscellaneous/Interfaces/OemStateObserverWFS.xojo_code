#tag Interface
Protected Interface OemStateObserverWFS
	#tag Method, Flags = &h0
		Function CancelOemRemove(id as Integer, support as Integer) As Boolean
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OemAdded(id as Integer, support as Integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OemRemoved(id as Integer, support as Integer)
		  
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
End Interface
#tag EndInterface
