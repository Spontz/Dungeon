#tag Module
Protected Module RSCodecs
	#tag Method, Flags = &h0
		Function Md5hex(s as String) As String
		  // This function converts the passed string to a md5 hash, hich is returned
		  
		  dim source, result as MemoryBlock
		  dim k, r as Integer
		  
		  source = NewMemoryBlock(16)
		  source.StringValue(0,16) = Md5(s)
		  
		  result = NewMemoryBlock(32)
		  
		  for k = 0 to 15
		    r = Bitwise.BitAnd(source.Byte(k), &hF)
		    select case r
		    case 0 to 9
		      result.Byte((k*2)+1) = r + 48
		    case 10 to 15
		      result.Byte((k*2)+1) = r + 87
		    end select
		    
		    r = Bitwise.BitAnd(Bitwise.ShiftRight(source.Byte(k), 4), &hF)
		    select case r
		    case 0 to 9
		      result.Byte(k*2) = r + 48
		    case 10 to 15
		      result.Byte(k*2) = r + 87
		    end select
		  next
		  
		  return result.StringValue(0,32)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Text2Hex(s as string) As String
		  dim m0,m1,m2 as memoryBlock
		  dim c,i,j,k as integer
		  
		  //build a small table 0-F
		  m0=newMemoryBlock(17)
		  m0.cstring(0)="0123456789ABCDEF"
		  
		  //build a larger table 00-FF
		  m1=newMemoryBlock(512)
		  for i=0 to 15
		    for j=0 to 15
		      m1.byte(k)=m0.byte(i)
		      m1.byte(k+1)=m0.byte(j)
		      k=k+2
		    next
		  next
		  
		  //translate text with the help of the table
		  j=len(s)
		  k=0
		  m2=newMemoryBlock(j*2+1)
		  for i=1 to j
		    c=asc(mid(s,i,1))*2
		    m2.byte(k)=m1.byte(c)
		    m2.byte(k+1)=m1.byte(c+1)
		    k=k+2
		  next
		  
		  return m2.cString(0)
		End Function
	#tag EndMethod


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
