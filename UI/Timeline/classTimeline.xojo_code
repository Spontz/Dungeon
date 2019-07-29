#tag Class
Protected Class classTimeline
Inherits Canvas
	#tag Event
		Sub EnableMenuItems()
		  select case demo.countSelectedBars
		    
		  case 0
		    EditReplace.Enabled = false
		    EditCopy.Enabled = false
		    
		    ElementsMenu.Enabled = false
		  else
		    EditCopy.Enabled = true
		    EditReplace.Enabled = true
		    
		    ElementsSubdivide.Enabled = true
		    ElementsMenu.Enabled = true
		    ElementsBringStarttoMarker.Enabled = true
		    ElementsBringEndtoMarker.Enabled = true
		    ElementsToggleEnable.Enabled = true
		    
		  end
		  
		  // Enable the paste menu if we have items to paste
		  if copiedBarIDs.Ubound > -1 then
		    EditPaste.enabled = true
		  else
		    EditPaste.Enabled = false
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  dim i as integer
		  dim selectedBarIDs() as String
		  
		  if key.Asc = 8 or key.Asc = 127 then
		    // The user pressed backspace or SUPR
		    selectedBarIDs = demo.getSelectedBarIDs
		    
		    // Remove the selected bars from the demoengines
		    for i=0 to UBound(selectedBarIDs)
		      if demo.getBarType(selectedBarIDs(i)) <> "" then
		        // The bar has been already sent to the demoengine, order its deletion
		        controller.deleteBar(selectedBarIDs(i))
		      end if
		    next
		    
		    // Erase the selected sections
		    demo.deleteSelectedBars
		    
		    me.Invalidate
		    
		  else
		    return controller.HandleKey(key)
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  // Store the mouse position
		  me.XdragStart = x
		  me.YdragStart = y
		  
		  // Store the layer we are using
		  if Coordinate2layer (y) >= 0 then selectedLayer = Coordinate2layer (y)
		  
		  // If the user has the ALT (Windows) or OPTION (Mac) key pressed and clicks in a section we duplicate the selection
		  dim i as integer
		  dim barID as string
		  dim NewSectionList(-1) as integer
		  dim tempinteger as integer
		  
		  time = coordinate2time(x)
		  
		  // A click can't be performed before the time origin
		  if time < 0 then time = 0
		  if x < 16 then x = 16
		  
		  // Get the clicked item
		  clickedItem = getClickedItem(x, y)
		  
		  if clickedItem = "horizontalRuler" then
		    if Keyboard.AsyncAltKey or Keyboard.AsyncOptionKey then
		      // The user is adjusting the demoengine time
		      controller.setCurrentTime(time)
		      
		    elseif time <= demo.getDemoStartTime or time <= controller.Engine.runTime then
		      // The user clicked before the start time marker or between the start time and the current time, so he/she is adjusting the start time
		      SetDemoStartTime(time)
		      
		    elseif time >= demo.getDemoEndTime or time >= controller.Engine.runTime then
		      // The user clicked after the end time or between the current time and the end time so he/she is adjusting the end time
		      SetDemoEndTime(time)
		      
		    end if
		    
		  elseif  clickedItem = "emptyArea" then
		    if not Keyboard.ShiftKey then
		      // The SHIFT key is not pressed. Deselect all selected items
		      demo.clearBarSelection
		      
		      // The user is drawing a bar so we create a new one
		      barID = demo.addBar("", selectedLayer, coordinate2time(x), coordinate2time(x), "", "ONE", "ONE", "", "")
		      
		      // We find the bar limits and store them for a later use
		      XrightTimeLimit = demo.getNextBarStartTime(coordinate2time(x), selectedLayer)
		      
		      action = "drawingBar " + str(barID)
		      
		      demo.clearBarSelection
		      demo.addBarToSelection str(barID)
		      
		      Trace("classTimeline:MouseDown: User clicked in an empty area, so a new bar was created with ID " + str(barID), cstTraceLevelLog)
		    else
		      // The SHIFT key is pressed, so the user is selecting bars with the selection rectangle
		      action = "selecting"
		      
		      Trace("classTimeline:MouseDown: User clicked in an empty area with the SHIFT key pressed, so the selection rectangle was enabled.", cstTraceLevelLog)
		    end if
		    
		  elseif NthField(clickedItem, " ", 1) = "BarID" and val(NthField(clickedItem, " ", 2)) > 0  then
		    // The user performed a click inside a bar
		    if Keyboard.ShiftKey then
		      if demo.getBarSelectedStatus(val(NthField(clickedItem, " ", 2))) then
		        // The bar is selected, so remove it from the selection
		        demo.removeBarFromSelection(val(NthField(clickedItem, " ", 2)))
		        
		        // Set the mouse cursor
		        MouseCursor = System.Cursors.StandardPointer
		      else
		        // The bar is not selected, add it to the selection
		        demo.addBarToSelection(NthField(clickedItem, " ", 2))
		        
		        // Set the mouse cursor
		        MouseCursor = System.Cursors.ArrowAllDirections
		      end if
		      
		    elseif demo.getBarSelectedStatus(val(NthField(clickedItem, " ", 2))) then
		      // The clicked bar is selected so the user wants to move the selected bar
		      action = "draggingBar"
		      
		    elseif  keyboard.OptionKey and demo.countSelectedbars > 0 then
		      // The user wants to duplicate the selection using the pointer and the option key
		      
		      // TODO
		      '//We create a new section for each one of the current selected sections
		      'ReDim NewSectionList(Ubound(SelectedSections,1))
		      'for i = 0 to Ubound(SelectedSections,1)
		      'NewSectionList(i) = demo.sections.create(SelectedSections(i,5), SelectedSections(i,1), SelectedSections(i,2))
		      'next
		      '
		      '//Now copy the original contents to the new sections
		      'for i = 0 to Ubound(NewSectionList)
		      'demo.sections.CopyContents(SelectedSections(i,0), NewSectionList(i))
		      'next
		      
		      // And inform the demoengine about the creation of the new sections
		      'for i = 0 to Ubound(NewSectionList)
		      'controller.createSection(NewSectionList(i))
		      'next
		      
		    else
		      // Remove all the other selected bars and select the clicked bar
		      demo.clearBarSelection
		      demo.addBarToSelection(NthField(clickedItem, " ", 2))
		      
		      //***************************************
		      //* The user wants to move the selection *
		      //***************************************
		      
		      
		      //If the user has the shift key down, it means that he is currently performing a selection
		      'if not keyboard.AsyncShiftKey then
		      //If the currently being dragged section was not selected, we deselect all the other sections
		      //And select only this one for dragging (Only if Shift is not pressed)
		      'if not SectionIsSelected(GetInUseSection) then
		      'demo.clearBarSelection
		      'AddSectionToSelection(GetInUseSection)
		      
		      // Edit the section
		      'EditSection (GetInUseSection)
		      'end if
		      'end if
		    end if
		  end if
		  
		  // Window refreshing
		  me.Invalidate
		  
		  // We return true to allow the MouseDrag event to happen
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  dim i as integer
		  dim tempInteger as integer
		  dim tempSingle as single
		  dim sectionID as integer
		  dim success as boolean
		  
		  time = coordinate2time(x)
		  
		  if clickedItem = "endTimeMarker" and time > demo.getDemoTime then
		    if x < 16 then x = 16
		    
		    SetDemoEndTime(coordinate2time(x))
		    
		    me.refresh
		    
		  elseif clickedItem = "startTimeMarker" then
		    if x < 16 then x = 16
		    
		    SetDemoStartTime(coordinate2time(x))
		    
		    me.refresh
		    
		  elseif clickedItem = "horizontalRuler" then
		    // The user clicked in the Horizontal Ruler *
		    if x < 16 then x = 16
		    
		    if Keyboard.AsyncAltKey or Keyboard.AsyncOptionKey then
		      // The user is adjusting the demoengine time
		      // To avoid a lot of current time change requests we will only send a message in the mousedown event
		      // controller.setCurrentTime(time)
		      
		    elseif time <= demo.getDemoStartTime or time <= controller.Engine.runTime then
		      // The user clicked before the start time marker or between the start time and the current time, so he/she is adjusting the start time
		      if time < 0 then time = 0
		      SetDemoStartTime(time)
		      
		    elseif time >= demo.getDemoEndTime or time >= controller.Engine.runTime then
		      // The user clicked after the end time or between the current time and the end time so he/she is adjusting the end time
		      if time < 0 then time = 0
		      SetDemoEndTime(time)
		      
		    end if
		    
		    me.refresh
		    
		  elseif clickedItem = "lessZoom" then
		    //******************************************
		    //* The user clicked in the less zoom Button *
		    //******************************************
		    
		    //This is handled in the mouse up event
		    //Therefore, nothing to do here
		    
		  elseif NthField(clickedItem, " ", 1) = "BarID" and val(NthField(clickedItem, " ", 2)) > 0  then
		    // The user clicked in a bar and now he is dragging the mouse, so the user wants to move the selection
		    
		    // We inform the user of the new Start and End times of selected bars (if any)
		    if demo.countSelectedBars > 0 then DragSections
		    
		    // original layer in which dragging started
		    selectedLayer = floor((YdragStart -16) / elementHeight)
		    
		    dim startTime as integer = val(demo.getSelectedBarsStartTime)
		    
		    if startTime + coordinate2time(x) < 0 then
		      // Avoid moving the bars before t=0
		      x = time2coordinate(0)
		    end if
		    
		    if keyboard.AsyncShiftKey then
		      // The SHIFT key is pressed so we limit the start and end times to the original ones
		      success = demo.MoveSelectedBars(0, coordinate2layer(y) - selectedLayer)
		    else
		      // The SHIFT key is not pressed so the bars will freely move in the time scale also
		      success = demo.MoveSelectedBars(coordinate2time(x) - coordinate2time(XdragStart), coordinate2layer(y) - selectedLayer)
		    end if
		    
		    if success then
		      XdragStart = x
		      YdragStart = y
		    end if
		    
		    me.refresh
		    
		    //Now we check for time and layer inconsistences
		    //tempSingle = 0
		    //tempInteger = 0
		    
		    'for i = 0 to Ubound(SelectedSections,1)
		    
		    //In time
		    'if SelectedSections(i,3) < 0 then
		    'if SelectedSections(i,3) < tempSingle then
		    'tempSingle = SelectedSections(i,3)
		    'end if
		    'end if
		    
		    //InLayer
		    'if SelectedSections(i,6) < 0 then
		    'if SelectedSections(i,6) < tempInteger then
		    'tempInteger = SelectedSections(i,6)
		    'end if
		    'end if
		    'next
		    
		    //We store the final times and layers in the corresponding sections after performing the correction
		    'for i = 0 to Ubound(SelectedSections,1)
		    //Start and End times
		    'demo.setBarStartTime(SelectedSections(i,0), SelectedSections(i,3) - tempSingle)
		    'demo.setBarEndTime(SelectedSections(i,0),SelectedSections(i,4) - tempSingle)
		    
		    //And Layers
		    'demo.setBarLayer(SelectedSections(i,0), SelectedSections(i,6) - tempInteger)
		    'next
		    
		    
		  elseif clickedItem = "emptyArea" then
		    if NthField(action, " ", 1) = "drawingBar" then
		      
		      Trace("classTimeline:MouseDrag: User is drawing bar ID " + NthField(action, " ", 2) + ". New end time: " + str(coordinate2time(x)), cstTraceLevelLog)
		      
		      // Check that we are not drawing the section backwards
		      if x <= me.XdragStart then
		        x = me.XdragStart
		        Trace("classTimeline:MouseDrag: The user is trying to draw a section backwards, so the bar duration was set to 0", cstTraceLevelLog)
		      end if
		      
		      // Check that our section does not overlap the following one
		      if coordinate2time(x) > XrightTimeLimit and XrightTimeLimit <> -1 then
		        x = time2coordinate(XrightTimeLimit)
		        Trace("classTimeline:MouseDrag: The user is trying to draw a bar over an existing one, so the bar duration was limited in order to avoid overlapping", cstTraceLevelLog)
		      end if
		      
		      // Set the bar end time
		      demo.setBarEndTime(val(NthField(action, " ", 2)), coordinate2time(x)) //End Time
		      
		      // Send this event in order to update the start and end times in the interface
		      AddBarToSelection
		      
		      
		    elseif action = "selecting" then
		      // The user is selecting bars with the selection rectangle
		      SetSelectionSquare (xdragStart, ydragStart, x, y)
		    end if
		    
		    me.refresh
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  dim clickeditem as string
		  
		  clickeditem = getClickedItem(x,y)
		  
		  select case NthField(clickeditem, " ", 1)
		    
		  case "startTimeMarker"
		    MouseCursor = System.Cursors.SplitterEastWest
		    
		  case "endTimeMarker"
		    MouseCursor = System.Cursors.SplitterEastWest
		    
		  case "BarID"
		    // We are over a bar. If the bar is selected, set the pointer to a cross
		    if demo.getBarSelectedStatus(val(NthField(clickedItem, " ", 2))) then MouseCursor = System.Cursors.ArrowAllDirections
		    
		  else
		    MouseCursor = System.Cursors.StandardPointer
		    
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  dim i as integer
		  
		  if keyboard.AsyncShiftKey then
		    //*************************************
		    //* The user is modifying the selection *
		    //*************************************
		    //If the section is in the current selection, we remove it from the selection
		    'if GetInUseSection > -1 then
		    'if SectionIsSelected(GetInUseSection) and (coordinate2layer(y) = layer) then
		    //We have not clicked in the background and the element has not been moved
		    //So we remove the element from the selection
		    'RemoveSectionFromSelection(GetInUseSection)
		    'else
		    //If not, we add it to the selection
		    'AddSectionToSelection(GetInUseSection)
		    
		    'EditSection (GetInUseSection)
		    'end if
		    'end if
		    
		    
		    
		  elseif NthField(clickedItem, " ", 1) = "barID" then
		    // A bar has been clicked. If this is the only selected bar, show the bar script in the script editor
		    if demo.countSelectedBars = 1 then EditBar(NthField(clickedItem, " ", 2))
		    
		    // Notify that this section is selected
		    AddBarToSelection
		    
		    
		  elseif clickedItem = "lessZoom" then
		    me.pixelsPerSecond = me.pixelsPerSecond * 0.8
		    
		  elseif clickedItem = "emptyArea" then
		    if NthField(action, " ", 1) = "drawingBar" then
		      // The user was drawing a bar, so check for zero duration
		      dim barData as dictionary
		      
		      barData = demo.getBarData(NthField(action, " ", 2))
		      
		      if time2coordinate(barData.Value("endTime").SingleValue) - time2coordinate(barData.Value("startTime").SingleValue) < 2 then
		        Trace("classTimeline:MouseUp: The drawn bar had a duration of zero so it was deleted", cstTraceLevelLog)
		        demo.deleteBar(NthField(action, " ", 2))
		        selectedTime = barData.Value("endTime").SingleValue
		        selectedLayer = barData.Value("layer").IntegerValue
		        
		      else
		        // Send a new bar event
		        NewBar (NthField(action, " ", 2))
		        
		      end if
		    end if
		  end if
		  
		  //We update the selected sections start and end times, and the layer
		  for each ID as string in demo.getSelectedBarIDs
		    controller.setBarStartTime ID, demo.getBarStartTime(ID)
		    controller.setBarEndTime   ID, demo.getBarEndTime  (ID)
		    controller.setBarLayer     ID, demo.getBarLayer    (ID)
		  next
		  
		  //We clean the variables used to store the initial dragging point
		  me.XdragStart = -1
		  me.YdragStart = -1
		  
		  //And the ones used to check the overlapping
		  me.XrightTimeLimit = -1
		  me.XleftTimeLimit = -1
		  
		  // Reset the action
		  action = ""
		  
		  // No bars remain selected, clear the edition area
		  if demo.countSelectedBars = 0 then SelectionCleared
		  
		  me.Invalidate
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  if demo = nil then return
		  
		  dim startTicks as integer = ticks
		  
		  me.drawBackground(g)
		  me.drawTimeRule(g)
		  me.drawBars(g)
		  me.drawTrackRule(g)
		  me.drawEndMarker(g)
		  me.drawTimeMarker(g)
		  me.drawStartMarker(g)
		  me.drawSelectionSquare(g)
		  me.drawUsedTimes(g)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditCopy() As Boolean Handles EditCopy.Action
			copiedBarIDs = demo.getSelectedBarIDs
			
			me.Invalidate
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditPaste() As Boolean Handles EditPaste.Action
			// The paste process requires some steps
			
			// Calculate the start time and top layerof the copied bars
			dim firstBarStartTime as single = -1
			dim topLayer as integer = -1
			dim pastedSections() as string
			
			for each barID as string in copiedBarIDs
			dim barStartTime as single = demo.getBarStartTime(barID)
			if barStartTime < firstBarStartTime or firstBarStartTime = -1 then firstBarStartTime = barStartTime
			
			dim barLayer as integer = demo.getBarLayer(barID)
			if barLayer < topLayer or topLayer = -1 then topLayer = barLayer
			next
			
			dim timeIncrement as single = selectedTime - firstBarStartTime
			dim layerIncrement as single = selectedLayer - topLayer
			
			// Mark the pasted sections as selected
			demo.clearBarSelection
			
			// Add a copy of the copied sections with time increments
			for each barID as string in copiedBarIDs
			dim barData as dictionary = demo.getBarData(barID)
			
			dim newBarID as string = demo.addBar( _
			bardata.value("type"), _
			bardata.value("layer").IntegerValue + layerIncrement, _
			bardata.value("startTime").SingleValue + timeIncrement, _
			bardata.value("endTime").SingleValue + timeIncrement, _
			bardata.value("script"), _
			bardata.value("srcBlending"), _
			bardata.value("dstBlending"), _
			bardata.value("srcAlpha"), _
			bardata.value("dstAlpha") _
			)
			
			demo.addBarToSelection(newBarID)
			pastedSections.Append(NewBarID)
			next
			
			me.Invalidate
			
			PasteSections(pastedSections)
			
			Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			//First we clear the selection
			demo.clearBarSelection
			
			//And Select all the sections
			dim i as integer
			
			// TODO
			'for i=0 to demo.sections.Count - 1
			'AddSectionToSelection i
			'next
			
			//We create the undo item
			AddUndoAction
			
			me.Invalidate
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsBringEndtoMarker() As Boolean Handles ElementsBringEndtoMarker.Action
			SetSelectionEndTime demo.getDemoEndTime
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsBringStarttoMarker() As Boolean Handles ElementsBringStarttoMarker.Action
			SetSelectionStartTime demo.getDemoStartTime
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsSubdivide() As Boolean Handles ElementsSubdivide.Action
			//wndElementSubdivide.init demo, SelectedSections(0,0)
			
			demo.clearBarSelection
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ElementsToggleEnable() As Boolean Handles ElementsToggleEnable.Action
			elementsToggleEnable
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Function coordinate2layer(y as single) As single
		  return floor((y -16) / elementHeight) + me.ruleStartLayer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function coordinate2time(x as integer) As single
		  return me.ruleStartTime + (x - 16) / me.pixelsPerSecond
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBackground(g as graphics)
		  dim usedBackground, unusedBackground as color//Color theme
		  
		  usedBackground = &cffffff
		  unusedBackground = &ceeeeee
		  
		  //Rect background
		  g.foreColor = UsedBackground
		  g.FillRect (16,0,time2coordinate(demo.getDemoEndTime) - 16,me.height)
		  
		  g.foreColor = UnusedBackground
		  g.FillRect (time2coordinate(demo.getDemoEndTime),0,me.width - 16,me.height)
		  g.FillRect (16,0,time2coordinate(demo.getDemoStartTime) - 16,me.height)
		  
		  //Less zoom button
		  g.drawpicture lesszoom,0,0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBar(g as graphics, barID as string)
		  Dim barData As Dictionary
		  dim EffectBorderColor, EffectFillColor as Color
		  dim EffectTextColor as Color
		  dim selected as boolean
		  dim startTime, endTime, layer, duration as single
		  
		  barData = demo.getBarData(barID)
		  
		  startTime = time2coordinate(barData.Value("startTime").SingleValue)
		  endTime = time2coordinate(barData.Value("endTime").SingleValue)
		  layer = layer2coordinate(barData.Value("layer").SingleValue)
		  selected = barData.Value("selected").BooleanValue
		  
		  // If the element is out of the time scope then exit
		  if startTime > me.width or endTime < 16 then exit
		  
		  duration = endTime - startTime
		  
		  // If the element is out of the layer scope then exit
		  if  layer < 16 or layer > me.height  then exit
		  
		  // Don't paint bars or zero duration
		  if duration = 0 then exit
		  
		  //Color Theme
		  If selected Then
		    If Not demo.getBarEnabled(barID) Then
		      ' Disabled bars (Selected)
		      EffectBorderColor = RGB(0,84,121)
		      EffectFillColor = RGB(32,36,102)
		      
		    Else
		      ' Disabled bars (Selected)
		      EffectBorderColor = RGB(0,168,243)
		      EffectFillColor = RGB(63,72,204)
		      
		    End If
		  Else
		    If Not demo.getBarEnabled(barID) Then
		      ' Disabled bars (Unselected)
		      EffectBorderColor = RGB(190,190,190)
		      EffectFillColor = RGB(200,200,200)
		      
		    Else
		      ' Enabled bars (Unselected)
		      EffectBorderColor = RGB(140,140,140)
		      EffectFillColor = RGB(150,150,150)
		      
		    end if
		  end if
		  
		  g.ForeColor = EffectFillColor
		  g.FillRoundRect (startTime, layer, duration, elementHeight - 1, 5 ,5)
		  g.ForeColor = EffectBorderColor
		  g.DrawRoundRect (startTime, layer, duration, elementHeight - 1, 5, 5)
		  
		  //Text writting
		  g.TextFont = "Helvetica"
		  g.TextSize = 10
		  
		  //We choose the text to write depending of the section type
		  dim theString as string
		  
		  if demo.getBarType(barID) = "" then
		    theString = "New Bar"
		  else
		    theString = demo.getBarType(barID)
		  end if
		  
		  if showBarIDs then theString = theString + " " + str(barID)
		  
		  if endTime - startTime > 16 then
		    // There is space for the text, so draw it
		    EffectTextColor = &cFFFFFF
		    g.ForeColor = EffectTextColor
		    g.DrawString (theString, startTime + 2, 11 + layer, duration - 4, true)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawBars(g as graphics)
		  dim barIDs() as string
		  dim i as integer
		  
		  // Get the list of bars to draw
		  barIDs = demo.GetBarsToDraw(ruleStartTime, coordinate2time(g.Width))
		  
		  // And draw them
		  for i=0 to UBound(barIDs)
		    drawBar(g, barIDs(i))
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawEndMarker(g as graphics)
		  dim positionX as single
		  dim LineColor as color
		  
		  LineColor = &c006600
		  positionX = time2coordinate(demo.getDemoEndTime)
		  
		  g.foreColor = LineColor
		  g.drawline (positionX,0,positionX,me.height)
		  g.drawpicture (markergreenright, positionX - 5, 5)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawSelectionSquare(g as graphics)
		  If XdragStart > -1 And YdragStart > -1 and action = "selecting" Then
		    g.drawRect XdragStart, YdragStart, MouseX - XdragStart - Me.Left, MouseY - YdragStart - me.Top
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawStartMarker(g as graphics)
		  dim positionX as single
		  dim LineColor as color
		  
		  LineColor = &c006600
		  positionX = time2coordinate(demo.getDemoStartTime)
		  
		  if positionX >= 16 then
		    g.foreColor = LineColor
		    g.drawline (positionX,0,positionX,me.height)
		    g.drawpicture (markergreenleft, positionX - 5, 5)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawTimeMarker(g as Graphics)
		  dim positionX as single
		  dim LineColor as color
		  
		  if demo.GetDataFolder() = nil then return
		  
		  if demo.GetDataFolder.Name = "data" then
		    
		    LineColor = &c660000
		    positionX = time2coordinate(controller.Engine.runTime)
		    
		    if positionX >= 16 then
		      g.foreColor = LineColor
		      g.drawline (positionX,0,positionX,me.height)
		      g.drawpicture (markerred, positionX - 5, 5)
		    end if
		    
		    SetCurrentTime controller.Engine.runTime
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawTimeRule(g as graphics)
		  dim RuleBackgroundLines as Color
		  dim RuleBackground, RuleDivisionsColor, RuleBorderColor as Color
		  
		  // Color theme
		  // RuleBackground = RGB(255,157,0)
		  RuleBackground = RGB(240,240,240)
		  RuleDivisionsColor = RGB(0,0,0)
		  // RuleBorderColor = RGB(189,117,0)
		  RuleBorderColor = RGB(175,175,175)
		  
		  RuleBackgroundLines = RGB(220,220,220)
		  
		  // TimeLine Background
		  g.foreColor = RuleBackground
		  g.FillRect (16,0,me.width - 16, 16)
		  
		  // TimeLine Rectangle
		  g.foreColor = RuleBorderColor
		  g.DrawRect (16,0,me.width - 16, 16)
		  
		  // TimeLine Time Divisions and timing (text)
		  dim x as integer
		  dim i as integer
		  
		  x = time2coordinate(me.RulestartTime)
		  g.textSize = 9
		  g.textFont = "Helvetica"
		  
		  while x < me.width
		    g.foreColor = RuleDivisionsColor
		    g.DrawLine (x, 1, x, 5)
		    
		    g.drawstring (cstr(round(100 * coordinate2time(x)) / 100), x, 13)
		    
		    g.foreColor = RuleBackgroundLines
		    g.DrawLine (x, 16, x, me.height)
		    x = x + 25
		  wend
		  
		  x = time2coordinate(me.RulestartTime)
		  while x < me.width
		    g.foreColor = RuleDivisionsColor
		    g.DrawLine (x, 1, x, 3)
		    
		    x = x + 5
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawTrackRule(g as graphics)
		  dim x as integer
		  
		  dim RuleBackgroundLines as Color
		  dim RuleBackground, RuleDivisionsColor, RuleBorderColor as Color
		  
		  // Color theme
		  // RuleBackground = RGB(255,157,0)
		  RuleBackground = RGB(200,200,200)
		  RuleDivisionsColor = RGB(0,0,0)
		  // RuleBorderColor = RGB(189,117,0)
		  RuleBorderColor = RGB(175,175,175)
		  
		  RuleBackgroundLines = RGB(220,220,220)
		  
		  // TrackLine Background
		  g.foreColor = RuleBackground
		  g.FillRect (0,16,16, me.height)
		  
		  // TrackLine Rectangle
		  g.foreColor = RuleBorderColor
		  g.drawRect (0,16,16, me.height)
		  
		  // Track separators
		  x = 16
		  while x < me.height
		    g.foreColor = RuleBackgroundLines
		    g.DrawLine (16, x, me.width, x)
		    x = x + elementHeight
		  wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawUsedTimes(g as graphics)
		  if selectedLayer < 0 then return
		  if copiedBarIDs.Ubound < 0 then return
		  
		  // Selected layer
		  g.drawpicture (markeryellowhorizontal, 3, 19 + elementHeight*selectedLayer)
		  
		  // Selected time
		  g.drawpicture (markeryellowvertical, time2coordinate(selectedTime) - 5, 5)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub elementsToggleEnable()
		  dim i as integer
		  dim selection() as string
		  
		  // Get the list of selected bars
		  selection = demo.getSelectedBarIDs
		  
		  // Toggle the state of the selected bars
		  for i=0 to UBound(selection)
		    demo.toggleBar selection(i)
		  next
		  
		  controller.ToggleBars selection
		  
		  me.Invalidate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getClickedItem(x as integer, y as integer) As string
		  dim position as integer
		  dim i as integer
		  dim bar as string
		  
		  if  y < 16 and x > 16 then
		    //**************************************
		    //* We are in the horizontal upper ruler  *
		    //**************************************
		    
		    //Check if the user clicked in the StartTime marker
		    position = time2coordinate(demo.getDemoStartTime)
		    if x > (position - 5) and x < (position + 5) then
		      return "startTimeMarker" // -2
		    end if
		    
		    //Check if the user clicked in the EndTime marker
		    position = time2coordinate(demo.getDemoEndTime)
		    if x > (position - 5) and x < (position + 5) then
		      return "endTimeMarker" // -1
		    end if
		    
		    //The user has clicked in the ruler
		    return "horizontalRuler" // -3
		    
		  elseif y > 16 and x < 16 then
		    //*********************************
		    //* We are in the vertical left ruler *
		    //*********************************
		    return "verticalRuler"
		    
		  elseif x >16 and y > 16 then
		    //*****************************
		    //* We are in the bars region *
		    //*****************************
		    bar = demo.getBarID(coordinate2time(x), coordinate2layer(y))
		    
		    if bar = "0" then
		      return "emptyArea"
		    else
		      return "barID " + bar
		    end if
		    
		  else
		    //*********************************
		    //* We are in the less zoom button *
		    //*********************************
		    
		    return "lessZoom" // -4
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  // Variable initialization
		  me.RuleStartTime = 0
		  me.pixelsPerSecond = 25
		  
		  // Dragging-related variables initialization
		  me.XdragStart = -1
		  me.YdragStart = -1
		  
		  // Store the pointer to the demo class
		  demo = theDemo
		  
		  showBarIDs = false
		  
		  me.Invalidate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function layer2coordinate(theLayer as integer) As Integer
		  return 16 + 1 + (theLayer - me.ruleStartLayer) * elementHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RemoveSectionFromSelection(section as integer)
		  demo.removeBarFromSelection(section)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetDemoEndTime(newTime as single)
		  dim oldTime as single
		  
		  oldTime = demo.getDemoEndTime
		  
		  if NewTime < demo.getDemoStartTime then
		    // The demo can't end before starting, so let's make both times (start and end) equal
		    demo.setDemoEndTime (demo.getDemoStartTime)
		    
		  elseif NewTime < 0 then
		    // The demo end time can't be less than zero
		    demo.setDemoEndTime (0)
		    
		  else
		    demo.setDemoEndTime (newTime)
		    
		  end if
		  
		  SetEndTime newTime
		  
		  // Send the New end time signal to the demoengines if it has changed
		  if oldTime <> demo.getDemoEndTime then controller.setEndTime demo.getDemoEndTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetDemoStartTime(NewTime as single)
		  dim oldTime as single
		  
		  oldTime = demo.getDemoStartTime
		  
		  if NewTime > demo.getDemoEndTime then
		    // The demo can't start after ending, so let's make both times (start and end) equal
		    demo.setDemoStartTime (demo.getDemoEndTime)
		    
		  elseif NewTime < 0 then
		    // Start time can't be less than zero
		    demo.setDemoStartTime (0)
		    
		  else
		    demo.setDemoStartTime (newTime)
		    
		  end if
		  
		  SetStartTime newTime
		  
		  // Send the New start time signal to the demoengines if it has changed
		  if oldTime <> demo.getDemoStartTime then controller.setStartTime demo.getDemoStartTime
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectionEndTime(theTime as single)
		  dim selectedSectionIDs() as string = demo.getSelectedBarIDs
		  dim IDsList() as string
		  
		  for each num as string in selectedSectionIDs
		    IDsList.Append num
		  next
		  
		  demo.setSelectedBarsEndTime(theTime)
		  
		  // Update the demo engine
		  controller.setBarEndTime (join(IDsList, ","), theTime)
		  
		  me.Invalidate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetSelectionSquare(x0 as double, y0 as double, x1 as double, y1 as double)
		  Dim i As Integer
		  dim temp as single
		  dim startTime, endTime, startLayer, endLayer as single
		  
		  //Check for boundary inconsistencies
		  if x0 <= 16 then x0 = 16
		  if x1 <= 16 then x1 = 16
		  if y0 <= 16 then y0 = 16
		  if y1 <= 16 then y1 = 16
		  
		  StartTime = Coordinate2time(x0)
		  EndTime = Coordinate2time(x1)
		  
		  //We order the time, if necessary
		  if StartTime > EndTime then
		    temp = EndTime
		    EndTime = StartTime
		    StartTime = temp
		    
		    temp = x0
		    x0 = x1
		    x1 = temp
		  end if
		  
		  StartLayer = coordinate2layer(y0)
		  EndLayer = coordinate2layer(y1)
		  
		  //We order the layers, if necessary
		  if StartLayer > EndLayer then
		    temp = EndLayer
		    EndLayer = StartLayer
		    StartLayer = temp
		    
		    temp = y0
		    y0 = y1
		    y1 = temp
		  end if
		  
		  //We add the bar to the current selection if it is within the limits of the defined rectangle.
		  demo.clearBarSelection
		  demo.AddBarsToSelection (startTime, endTime, startLayer, endLayer)
		  
		  AddBarToSelection
		  
		  me.Invalidate
		  
		  me.Refresh false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectionStartTime(theTime as single)
		  dim selectedSectionIDs() as string = demo.getSelectedBarIDs
		  dim IDsList() as string
		  
		  for each num as string in selectedSectionIDs
		    IDsList.Append num
		  next
		  
		  demo.setSelectedBarsStartTime(theTime)
		  
		  // Update the demo engine
		  controller.setBarEndTime (join(IDsList, ","), theTime)
		  
		  me.Invalidate
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function time2coordinate(time as single) As integer
		  return elementHeight + (time - me.ruleStartTime) * me.pixelsPerSecond
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event AddBarToSelection()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event DragSections()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event EditBar(barID as string)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NewBar(BarID as string)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event PasteSections(sectionIDs() as string)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SelectionCleared()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SetCurrentTime(newTime as Single)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SetEndTime(newTime as single)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SetStartTime(newTime as single)
	#tag EndHook


	#tag Property, Flags = &h21
		Private action As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private clickedItem As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private copiedBarIDs() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected elementHeight As integer = 16
	#tag EndProperty

	#tag Property, Flags = &h0
		pixelsPerSecond As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ruleStartLayer As single
	#tag EndProperty

	#tag Property, Flags = &h0
		ruleStartTime As single
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected selectedLayer As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected selectedTime As single
	#tag EndProperty

	#tag Property, Flags = &h0
		showBarIDs As boolean = false
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected time As single = 0
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected XdragStart As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected XleftTimeLimit As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private XrightTimeLimit As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected YdragStart As integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
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
			Name="Left"
			Visible=true
			Group="Position"
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
			Name="pixelsPerSecond"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ruleStartLayer"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ruleStartTime"
			Group="Behavior"
			InitialValue="0"
			Type="single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="showBarIDs"
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
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
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
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
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
