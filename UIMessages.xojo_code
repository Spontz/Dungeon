#tag Module
Protected Module UIMessages
	#tag Method, Flags = &h0
		Function GetConfirmation(Question as string) As boolean
		  dim answer as integer
		  
		  // Yes / no dialog box with the question
		  answer = msgbox(Question,36)
		  
		  // Let's check the pressed button
		  if answer = 6 then
		    // Yes button pressed
		    return true
		  else
		    // No button pressed
		    return false
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSaveConfirmation(Question as String) As integer
		  // Yes / no / Cancel dialog box with the question
		  return msgbox(Question,51)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Notify(Title as string, detail as string)
		  beep
		  msgBox Title + EndOfLine + EndOfLine + detail
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
