#tag Class
Protected Class popBlending
Inherits PopupMenu
	#tag Event
		Sub Open()
		  //We add the rows to the menu
		  me.addrow "Zeroes"
		  me.addrow "Ones"
		  me.addrow "Source Color"
		  me.addrow "One minus Source Color"
		  me.addrow "Destination Color"
		  me.addrow "One minus Destination Color"
		  me.addrow "Source Alpha"
		  me.addrow "One minus Source Alpha"
		  me.addrow "Destination Alpha"
		  me.addrow "One minus Destination Alpha"
		  me.addrow "Source Alpha Saturate"
		  
		  //We select the primer index to avoid blank selections
		  me.listindex = 0
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataField"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataField"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSource"
			Visible=true
			Group="Database Binding"
			Type="String"
			EditorType="DataSource"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="20"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialValue"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ListIndex"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="FontUnits"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Pixel"
				"2 - Point"
				"3 - Inch"
				"4 - Millimeter"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="80"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
