#tag Class
Protected Class ClassCanvasPreview
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  'Dim d as DragItem
		  
		  dim theOrigin(2) as integer
		  theOrigin = getOrigin
		  
		  // if there is a stored image
		  if me.StoredImage <> nil then
		    
		    'if Keyboard.OptionKey then
		    '// The user is dragging the image out of the canvas,
		    '// let's create the drag item
		    'd=NewDragItem(Me.left,Me.top,Me.width,Me.height)
		    'd.picture=Me.StoredImage
		    'd.Drag //Allow the drag
		    '
		    'else
		    '// The user is moving the image inside the canvas
		    'if Self.MouseCursor = System.Cursors.HandOpen then Self.MouseCursor = System.Cursors.HandClosed
		    '
		    '// Save the dragging start position for a later use
		    'setDragStart (x, y)
		    'end if
		    
		  end if
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  if Self.MouseCursor = System.Cursors.HandClosed then
		    
		    dim startPosition(2) as integer
		    startPosition = getDragStart
		    
		    dim theOrigin(2) as integer
		    theOrigin = getOrigin()
		    
		    setOrigin (theOrigin(0) + x - startPosition(0), theOrigin(1) + y - startPosition(1))
		    
		    setDragStart (x, y)
		    
		    refreshPicture
		  end if
		  
		  MouseDrag (X, Y)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  if x > me.width or y > me.Height then
		    Self.MouseCursor = System.Cursors.StandardPointer
		  else
		    Self.MouseCursor = System.Cursors.HandOpen
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  clearPicture
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = getBackgroundColor
		  g.FillRect 0, 0, me.width, me.height
		  
		  // The Canvas Frame
		  g.forecolor=RGB(140, 140, 140) // gray
		  g.drawline 0,0,me.width-1,0
		  g.drawline 0,me.height-1,0,0
		  
		  g.forecolor=RGB(255,255,255) // white
		  g.drawline me.width-1,1,me.width-1,me.height-1
		  g.drawline 1,me.height-1,me.width-1,me.height-1
		  
		  dim theOrigin(2) as integer
		  theOrigin = getOrigin
		  
		  if StoredImage <> nil then
		    dim buffer as picture = new Picture(StoredImage.Width, StoredImage.Height, screen(0).Depth)
		    buffer.Graphics.DrawPicture (StoredImage, 0, 0, StoredImage.Width, StoredImage.Height)
		    
		    g.DrawPicture buffer, theOrigin(0), theOrigin(1)
		    
		    StoredImage = nil
		  end if
		  
		  
		  // Pass the event
		  refreshed
		  
		  Paint(g)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub clearPicture()
		  
		  refreshPicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub drawBackground()
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBackgroundColor() As color
		  return BackgroundColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDragStart() As integer()
		  dim result(2) as integer
		  
		  result(0) = StartX
		  result(1) = StartY
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getHeight() As integer
		  if storedImage <> nil then
		    return storedImage.height
		  else
		    return 0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getImageHeight() As integer
		  if StoredImage = nil then
		    return -1
		  else
		    return StoredImage.Height
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getImageWidth() As integer
		  if StoredImage = nil then
		    return -1
		  else
		    return StoredImage.Width
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getOrigin() As Integer()
		  dim result(2) as integer
		  
		  result(0) = OriginX
		  result(1) = OriginY
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getWidth() As integer
		  if storedImage <> nil then
		    return storedImage.width
		  else
		    return 0
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub refreshPicture()
		  me.Invalidate
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBackgroundColor(theColor as color)
		  BackgroundColor = theColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDragStart(theX as integer, theY as integer)
		  StartX = theX
		  StartY = theY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setOrigin(theX as integer, theY as integer)
		  OriginX = theX
		  OriginY = theY
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setPicture(thePicture as Picture)
		  StoredImage = thePicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub showPicture(thePicture as picture)
		  setPicture thePicture
		  refreshPicture
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event MouseDown(X as Integer, Y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDrag(X as integer, Y as Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint(g as graphics)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Refreshed()
	#tag EndHook


	#tag Property, Flags = &h21
		Private BackgroundColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OriginX As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OriginY As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartX As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartY As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StoredImage As picture
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
