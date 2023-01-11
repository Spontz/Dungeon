#tag Module
Protected Module Pictures
	#tag Method, Flags = &h0
		Function ResizeToFit(extends p as picture, maxWidth as integer, maxHeight as integer, scaleMode as pictureScaleMode = pictureScaleMode.toFit, onlyShrink as boolean = false) As Picture
		  Dim nSize as xojo.core.size
		  
		  select case scaleMode
		    
		  case picturescaleMode.toFit, picturescaleMode.toFill // Scale to fit & Scale to fill
		    dim scale as Double = if( scaleMode = picturescaleMode.toFit, _
		    min( maxHeight / p.height, maxWidth / p.width ), _
		    max( maxHeight / p.height, maxWidth / p.width ))
		    
		    if onlyShrink then scale = min( scale, 1.0 )
		    
		    nSize = new xojo.core.size( floor( p.width * scale ), floor( p.height * scale ))
		    
		  case picturescaleMode.stretchToFill // Stretch to fill.
		    nSize = new xojo.Core.size( maxWidth, maxHeight )
		    
		  end select
		  
		  // Now create the target image and draw our image into the center.
		  Dim rvalue as new picture( min( nSize.width, maxWidth ), min( nSize.height, maxHeight ) )
		  rvalue.graphics.drawPicture( p, ( rvalue.width - nSize.width ) * 0.5, ( rvalue.height - nSize.height ) * 0.5, _
		  nSize.width, nSize.height, 0, 0, p.width, p.height )
		  
		  return rvalue
		End Function
	#tag EndMethod


	#tag Enum, Name = pictureScaleMode, Type = Integer, Flags = &h0
		toFit
		  toFill
		stretchToFill
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
