#tag Class
Protected Class classConnector
Inherits TCPSocket
	#tag Event
		Sub Connected()
		  if UBound(messageQueue) < 0 then
		    // RaiseError ("Bad connection","The connection manager tried to connect without a proper order to send")
		  else
		    dim Message as dictionary = messageQueue(0)
		    
		    trace ("Sent: " + Message.value("content"), cstTraceLevelCommunication)
		    
		    me.write Message.value("content")
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub DataAvailable()
		  Response = me.readall
		  
		  trace(response, cstTraceLevelCommunication)
		  
		  if NthField(response, paramSeparator, 2) = "OK" or not messageQueue(0).Value("retry") then
		    // Remove the message from the queue
		    messageQueue.Remove(0)
		  end if
		  
		  // Pass the event
		  DataAvailable Response
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function getID() As uint64
		  ID = ID + 1
		  return ID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub resetConnector()
		  // Cancel all messages
		  me.Disconnect
		  Response = ""
		  Redim messageQueue(-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendMessage(theMessage as String, optional retry as boolean = true)
		  dim theSizer as String
		  dim theID as String
		  dim dataLength as integer
		  
		  theID = CStr(Me.getID)
		  dataLength = len(theID + me.paramSeparator + theMessage )
		  
		  dim binaryForm as variant
		  binaryForm = bin(dataLength)
		  
		  while len(binaryForm) < 32
		    binaryForm = "0" + binaryForm
		  wend
		  
		  theSizer = chr(val("&b" + binaryForm.StringValue.Left   (8))) + _
		  chr(val("&b" + binaryForm.StringValue.Mid   (9,8))) + _
		  chr(val("&b" + binaryForm.StringValue.Mid   (17,8))) + _
		  chr(val("&b" + binaryForm.StringValue.Right (8)))
		  
		  theSizer = ""
		  
		  // Add the message to the message queue
		  dim Message as new dictionary
		  
		  Message.value("content") = theSizer + theID + me.paramSeparator + theMessage + chr(val("&b00000000"))
		  Message.value("retry"  ) = retry
		  
		  messageQueue.Append Message
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event DataAvailable(theData as String)
	#tag EndHook


	#tag Property, Flags = &h21
		Private Shared ID As uint64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		messageQueue(-1) As dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Response As String
	#tag EndProperty


	#tag Constant, Name = paramSeparator, Type = String, Dynamic = False, Default = \"::", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Address"
			Visible=true
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Response"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
