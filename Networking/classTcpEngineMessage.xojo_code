#tag Class
Protected Class classTcpEngineMessage
Inherits TCPSocket
	#tag Event
		Sub DataAvailable()
		  dim theMessage as string = me.readAll
		  
		  me.purge
		  
		  RaiseEvent MessageReceived(theMessage)
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event MessageReceived(theMessage as string)
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
