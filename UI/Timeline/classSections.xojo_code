#tag Class
Protected Class classSections
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyContents(Origin as integer, Destination as integer)
		  dim j as integer
		  
		  
		  //Blending
		  SetBlending(Destination, 1, GetBlending(Origin,1))
		  SetBlending(Destination, 2, GetBlending(Origin,2))
		  
		  //Parameters
		  //for j = 1 to GetParametersCount(GetType(Origin))
		  //SetParameter(Destination, j, GetParameter(Origin,j))
		  //next
		  
		  //Strings
		  SetString(Destination, 1, GetString(Origin,1))
		  SetString(Destination, 2, GetString(Origin,2))
		  // SetString(Destination, 3, GetString(Origin,3))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As integer
		  return Ubound(script,1) + 1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Create(Layer as integer, startTime as single, endTime as single) As integer
		  dim sectionID as integer
		  dim parametersID as integer
		  
		  // We add a new section to the script
		  ReDim script(Ubound(script,1) + 1,7)
		  sectionID = Ubound(script,1)
		  
		  script(sectionID,0) = 5 //Effect type, hardcoded to 5 (Custom effect) -- TODO: Remove this parmeter
		  script(sectionID,1) = startTime //Start time
		  script(sectionID,2) = endTime //End time
		  script(sectionID,3) = Layer //Layer
		  
		  // We allocate room for storing the ID shared with the demoengine
		  Redim IDs(UBound(IDs) + 1)
		  
		  // Populate the unique section identificator
		  IDs(UBound(IDs)) = lastsectionID
		  lastsectionID = lastsectionID + 1
		  
		  // We allocate room for storing the parameters
		  ReDim parameters(Ubound(parameters,1) + 1, Ubound(parameters,2))
		  script(sectionID,4) = 0 //Number of parameters in the section
		  
		  // Blending initing
		  ReDim blendings(Ubound(blendings,1) + 1, Ubound(blendings,2))
		  script(sectionID,5) = 2 //Number of blendings
		  
		  // We allocate room to store the Strings
		  ReDim strings(Ubound(strings,1) + 1, Ubound(strings,2))
		  
		  script(sectionID,6) = 3 //Number of Strings in the section
		  
		  // Visibility (in editor): default = 0 (visible)
		  script(sectionID, 7) = 0
		  
		  //We return the sectionID
		  return sectionID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetAlphaMode(mode as integer) As string
		  if mode = 0 then
		    Return "NEVER"
		  elseif mode = 1 then
		    return "LESS"
		  elseif mode = 2 then
		    return "EQUAL"
		  elseif mode = 3 then
		    return "LEQUAL"
		  elseif mode = 4 then
		    return "GREATER"
		  elseif mode = 5 then
		    return "NOTEQUAL"
		  elseif mode = 6 then
		    return "GEQUAL"
		  elseif mode = 7 then
		    return "ALWAYS"
		  else
		    return "Invalid alpha mode"
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBlending(Section as integer, NumBlending as integer) As integer
		  return blendings(Section,NumBlending - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBlendingMode(mode as integer) As String
		  if mode = 0 then
		    Return "ZERO"
		  elseif mode = 1 then
		    return "ONE"
		  elseif mode = 2 then
		    return "SRC_COLOR"
		  elseif mode = 3 then
		    return "ONE_MINUS_SRC_COLOR"
		  elseif mode = 4 then
		    return "DST_COLOR"
		  elseif mode = 5 then
		    return "ONE_MINUS_DST_COLOR"
		  elseif mode = 6 then
		    return "SRC_ALPHA"
		  elseif mode = 7 then
		    return "ONE_MINUS_SRC_ALPHA"
		  elseif mode = 8 then
		    return "DST_ALPHA"
		  elseif mode = 9 then
		    return "ONE_MINUS_DST_ALPHA"
		  elseif mode = 10 then
		    return "SRC_ALPHA_SATURATE"
		  else
		    return "Invalid blending mode"
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEndTime(section as integer) As single
		  return script(section,2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetID(theSection as integer) As integer
		  return IDs(theSection)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLayer(section as integer) As integer
		  return script(section,3)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetName(section as single) As String
		  if GetString(section, 1) ="" then
		    return "New Bar"
		  else
		    return GetString(section, 1)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetParameter(section as integer, NumParam as integer) As single
		  return parameters(section, NumParam - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSections() As integer
		  return Ubound(script,1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetStartTime(section as integer) As single
		  return script(section,1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetString(section as integer, NumString as integer) As string
		  return strings(section, NumString - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVisibility(section as integer) As boolean
		  if UBound(script, 2) = 7 then
		    // 0 -> Visible (default)
		    // 1 -> Invisible
		    
		    if script(section, 7) = 0 then
		      return true
		    else
		      return false
		    end if
		    
		  else
		    return true
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBlending(Section as integer, NumParameter as integer, Mode as integer)
		  blendings(Section,NumParameter - 1) = Mode
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetEndTime(section as integer, endTime as single)
		  script(section,2) = endTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLayer(section as integer, layer as integer)
		  script(section,3) = layer
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetParameter(section as integer, NumParameter as integer, value as single)
		  parameters(section, NumParameter - 1) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetStartTime(section as integer, startTime as single)
		  script(section,1) = startTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetString(section as integer, NumString as integer, text as string)
		  strings(section, NumString - 1) = text
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetVisibility(section as integer, visibility as boolean)
		  if UBound(script, 2) < 7 then
		    ReDim script(UBound(script, 1), 7)
		  end if
		  
		  if visibility then
		    script(section,7) = 0
		  else
		    script(section,7) = 1
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		blendings(-1,1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		IDs(-1) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		lastsectionID As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		parameters(-1,-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		script(-1,-1) As single
	#tag EndProperty

	#tag Property, Flags = &h0
		strings(-1,-1) As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastSectionID"
			Group="Behavior"
			InitialValue="1"
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
End Class
#tag EndClass
