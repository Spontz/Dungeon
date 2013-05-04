#tag Module
Protected Module DebugTrace
	#tag Method, Flags = &h0
		Sub append(count as integer)
		  dim LastRow as integer
		  dim i as integer
		  
		  for i=count to UBound(traceLog)
		    // Write the trace to the tracing window
		    LastRow = wndTrace.lbxTrace.appendRow(tracelog(i, 0))
		    wndTrace.lbxTrace.contents(LastRow, 1) = (tracelog(i, 1))
		    wndTrace.lbxTrace.contents(LastRow, 2) = (tracelog(i, 2))
		  next
		  
		  wndTrace.lbxTrace.refreshContents
		  
		  // Select the last line of the trace (if there isn't a selected line)
		  if wndTrace.lbxTrace.SelCount = 0 then
		    wndTrace.lbxTrace.ScrollPosition = 1 + wndTrace.lbxTrace.ListCount - ceil((wndTrace.lbxTrace.Height - 16) / wndTrace.lbxTrace.DefaultRowHeight)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub trace(text as String, optional level as integer)
		  dim isOpenTrace as boolean
		  dim i as integer
		  
		  if UBound(traceLog) >= 0 then
		    if traceLog(UBound(traceLog), 2) = text then
		      // The last line of the trace log is the same that the line that we want to add so don't add the new line
		      return
		    end if
		  end if
		  
		  // Write the sentence to the trace log
		  Redim traceLog(UBound(traceLog) + 1, UBound(tracelog, 2)) 
		  
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
		  
		  isOpenTrace=false
		  
		  for i=0 to windowcount-1
		    if window(i) isa wndTrace then
		      // If the trace window is open, add the last traced line to it
		      append(UBound(traceLog))
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
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
