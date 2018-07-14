#tag Module
Protected Module DebugTrace
	#tag Method, Flags = &h0
		Sub trace(text as String, optional level as integer)
		  dim isOpenTrace as boolean
		  dim i as integer
		  dim lastRow as integer
		  
		  if UBound(traceLog) >= 0 then
		    if traceLog(UBound(traceLog), 2) = text then
		      // The last line of the trace log is the same that the line that we want to add so modify the last line
		    end if
		  else
		    // Write the sentence to the trace log
		    Redim traceLog(UBound(traceLog) + 1, UBound(tracelog, 2))
		  end if
		  
		  tracelog(UBound(traceLog), 0) = cstr(ticks / 60)
		  
		  if level = 0 then
		    tracelog(UBound(traceLog), 1) = "Undefined"
		  else
		    select case level
		    case cstTraceLevelCritical
		      tracelog(UBound(traceLog), 1) = "Critical"
		    case cstTraceLevelError
		      tracelog(UBound(traceLog), 1) = "Error"
		    case cstTraceLevelWarning
		      tracelog(UBound(traceLog), 1) = "Warning"
		    case cstTraceLevelLog
		      tracelog(UBound(traceLog), 1) = "Log"
		    case cstTraceLevelDebug
		      tracelog(UBound(traceLog), 1) = "Debug"
		    case cstTraceLevelCommunication
		      tracelog(UBound(traceLog), 1) = "Comm"
		    else
		      tracelog(UBound(traceLog), 1) = str(level)
		    end
		  end if
		  
		  tracelog(UBound(traceLog), 2) = text
		  
		  for i=0 to windowcount-1
		    if window(i) isa wndTrace then
		      // If the trace window is open, add the last traced line to it
		      wndTrace(window(i)).append(tracelog(UBound(traceLog), 0), text, tracelog(UBound(traceLog), 1))
		      exit
		    end if
		  next
		  
		  // Always write the trace to the temporary directory
		  // *** TO DO***
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected traceLog(-1,2) As String
	#tag EndProperty


	#tag Constant, Name = cstTraceLevelCommunication, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstTraceLevelCritical, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstTraceLevelDebug, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstTraceLevelError, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstTraceLevelLog, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstTraceLevelWarning, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant


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
