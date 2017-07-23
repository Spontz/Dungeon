#tag Module
Protected Module CopyPaste
	#tag Method, Flags = &h0
		Sub CopySections(IDs() as integer, origin as classSections)
		  dim i,j as integer
		  
		  sections = new classSections
		  
		  // Make space for the incoming sections
		  Redim sections.IDs(UBound(IDs))
		  Redim sections.blendings(UBound(IDs), UBound(origin.blendings, 2))
		  Redim sections.parameters(UBound(IDs), UBound(origin.parameters, 2))
		  Redim sections.script(UBound(IDs), UBound(origin.script, 2))
		  Redim sections.strings(UBound(IDs), UBound(origin.strings, 2))
		  
		  for i=0 to UBound(IDs)
		    // Section IDs
		    sections.IDs(i) = i
		    
		    // Section blendings
		    for j=0 to UBound(origin.blendings, 2)
		      sections.blendings(i, j) = origin.blendings(IDs(i), j)
		    next
		    
		    // Section parameters
		    for j=0 to UBound(origin.parameters, 2)
		      sections.parameters(i, j) = origin.parameters(IDs(i), j)
		    next
		    
		    // Section script
		    for j=0 to UBound(origin.script, 2)
		      sections.script(i, j) = origin.script(IDs(i), j)
		    next
		    
		    // Section strings
		    for j=0 to UBound(origin.strings, 2)
		      sections.strings(i, j) = origin.strings(IDs(i), j)
		    next
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Count() As integer
		  if sections = nil then
		    return 0
		  else
		    Return UBound(sections.IDs) + 1
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PasteSections(destination as classSections, startTime as single, newLayer as integer)
		  // Exit, if no sections were copied
		  if sections = nil then return
		  
		  dim i,j as integer
		  dim updatedSection as integer
		  dim firstTime as single
		  dim topLayer as double
		  
		  // First section that will be updated
		  updatedSection = destination.Count
		  
		  // Make space for the incoming sections
		  Redim destination.IDs(UBound(destination.IDs) + sections.count)
		  Redim destination.blendings(UBound(destination.blendings) + sections.count, max(UBound(destination.blendings, 2), UBound(sections.blendings, 2)))
		  Redim destination.parameters(UBound(destination.parameters) + sections.count, max(UBound(destination.parameters, 2), UBound(sections.parameters, 2)))
		  Redim destination.script(UBound(destination.script) + sections.count, max(UBound(destination.script, 2), UBound(sections.script, 2)))
		  Redim destination.strings(UBound(destination.strings) + sections.count, max(UBound(destination.strings, 2), UBound(sections.strings, 2)))
		  
		  // Calculate the first (in time) and top (in layer) section
		  firstTime = sections.script(0,1)
		  topLayer = sections.script(0,3)
		  for i=1 to sections.Count - 1
		    if sections.script(i,1) < firstTime then firstTime = sections.script(i,1)
		    if sections.script(i, 3) < topLayer then topLayer = sections.script(i,3)
		  next
		  
		  for i=0 to sections.Count - 1
		    // Section IDs
		    destination.IDs(updatedSection) = destination.lastsectionID + 1
		    destination.lastsectionID = destination.IDs(updatedSection)
		    
		    // Section blendings
		    for j=0 to UBound(sections.blendings, 2)
		      destination.blendings(updatedSection, j) = sections.blendings(i,j)
		    next
		    
		    // Section parameters
		    for j=0 to UBound(sections.parameters, 2)
		      destination.parameters(updatedSection, j) = sections.parameters(i,j)
		    next
		    
		    // Section strings
		    for j=0 to UBound(sections.strings, 2)
		      destination.strings(updatedSection, j) = sections.strings(i,j)
		    next
		    
		    // Section script
		    for j=0 to UBound(sections.script, 2)
		      destination.script(updatedSection, j) = sections.script(i,j)
		    next
		    
		    // Adjust start and end times
		    destination.script(updatedSection, 1) = destination.script(updatedSection, 1) - firstTime + startTime
		    destination.script(updatedSection, 2) = destination.script(updatedSection, 2) - firstTime + startTime
		    
		    // Adjust the layer
		    destination.script(updatedSection, 3) = destination.script(updatedSection, 3) - topLayer + newLayer
		    
		    updatedSection = updatedSection + 1
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private sections As classSections
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
