#tag Class
Protected Class TextPlaceholder
Inherits SyntaxArea.TextSegment
	#tag CompatibilityFlags = ( TargetConsole and ( Target32Bit or Target64Bit ) ) or ( TargetWeb and ( Target32Bit or Target64Bit ) ) or ( TargetDesktop and ( Target32Bit or Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) ) or ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 52657475726E73206120636C6F6E65206F662074686973207465787420706C616365686F6C6465722E
		Function Clone() As SyntaxArea.TextSegment
		  /// Returns a clone of this text placeholder.
		  
		  Var tmp As New SyntaxArea.TextPlaceholder(Offset, Length, TextRange.Offset, TextRange.Length, Self.TextColor, BackgroundColor, Bold, Italic, Underline)
		  tmp.LastFont = Self.LastFont
		  tmp.LastSize = Self.LastSize
		  tmp.Type = Self.Type
		  tmp.width = Self.Width
		  tmp.PlaceholderBackgroundColor = Self.PlaceholderBackgroundColor
		  
		  Return tmp
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(offset As Integer, length As Integer, labelOffset As Integer, labelLength As Integer, highlightColor As Color, backgroundColor As Color, bold As Boolean = False, italic As Boolean = False, underline As Boolean = false, hasBackColor As Boolean = False)
		  Super.Constructor(offset, length, TextSegment.TYPE_PLACEHOLDER, highlightColor, Color.Black, bold, italic, underline, hasBackColor)
		  
		  Self.PlaceholderBackgroundColor = backgroundColor
		  If Self.PlaceholderBackgroundColor = Color.Black Then
		    Self.PlaceholderBackgroundColor = &ce9effa
		  End If
		  
		  TextRange = New SyntaxArea.DataRange(labelOffset, labelLength)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InRange(offset As Integer) As Boolean
		  Return offset > Self.Offset And offset < Self.Offset + Self.Length
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		PlaceholderBackgroundColor As Color = &c0
	#tag EndProperty

	#tag Property, Flags = &h0
		TextRange As SyntaxArea.DataRange
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlaceholderBackgroundColor"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
