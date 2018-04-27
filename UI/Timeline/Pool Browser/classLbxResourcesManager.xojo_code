#tag Class
Protected Class classLbxResourcesManager
Inherits listbox
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  dim parent as string
		  dim theFolderitem as folderitem
		  
		  if column = cstColumnName then
		    if renaming then
		      dim f as FolderItem
		      
		      // Change of name
		      if me.cell(row, me.cstColumnType) = "Folder" then
		        // If the folder is in the disk, rename it in the filesystem
		        f = demo.getFolderPath(me.cell(row, me.cstColumnID))
		        if f <> nil then
		          f = f.Child(demo.getFolderName(me.cell(row, me.cstColumnID)))
		          if f.exists then f.Name = me.cell(row, me.cstColumnName)
		        end if
		        
		        // Rename the folder in the DB
		        demo.renameResourceFolder (me.cell(row, me.cstColumnName), me.cell(row, me.cstColumnID))
		        
		      elseif me.cell(me.ListIndex, me.cstColumnType) = "File" then
		        // If the file is in the disk, rename it in the filesystem
		        f = demo.getFilePath(me.cell(row, me.cstColumnID))
		        if f <> nil then
		          f = f.Child(demo.getFile(me.cell(row, me.cstColumnID)).Value("name"))
		          if f.exists then f.Name = me.cell(row, me.cstColumnName)
		        end if
		        
		        // Rename the item in the DB
		        demo.renameResourceItem (me.cell(row, me.cstColumnName), me.cell(row, me.cstColumnID))
		      end if
		      
		      // The renaming has been completed
		      renaming = false
		      
		    else
		      // Checkbox has been pressed
		      if me.CellCheck(row, column) then
		        // The cell is now enabled so copy the resource to the data folder
		        if me.cell(row, me.cstColumnType) = "Folder" then
		          demo.checkResourceFolder (me.cell(row, me.cstColumnID))
		          
		          // Save the folder under the pool folder
		          dim result as folderitem = demo.saveFolder(me.cell(row, me.cstColumnID), demo.getFolderPath(me.cell(row, me.cstColumnID)))
		        end if
		        
		        if me.cell(row, me.cstColumnType) = "File" then
		          demo.checkResource (me.cell(row, me.cstColumnID))
		          
		          // Save the resource under the pool folder
		          dim result as folderitem = demo.saveResource(me.cell(row, me.cstColumnID), demo.getFilePath(me.cell(row, me.cstColumnID)))
		          
		        end if
		        
		        // Put a checkmark in the resource's parent folders
		        parent = me.cell(row, me.cstColumnParent)
		        for i as integer = row-1 DownTo 0
		          if me.cell(i, cstColumnType) = "Folder" and me.cell(i, cstColumnID) = parent then
		            me.CellCheck(i, me.cstColumnName) = true
		            parent = me.cell(i, me.cstColumnParent)
		            
		            if parent = "0" then exit // We are in the root folder
		          end if
		        next
		        
		      else
		        // The cell is now disabled so delete thefiles from the data folder
		        if me.cell(row, me.cstColumnType) = "Folder" then
		          demo.uncheckResourceFolder (me.cell(row, me.cstColumnID))
		          
		          // Remove the resource from the data folder
		          files.deleteFolder(demo.getFolderPath(me.cell(row, me.cstColumnID)).Child(me.cell(row, me.cstColumnName)))
		          
		          // If the folder is expanded, remove the check from all the childs
		          if me.Expanded(row) then
		            for i as integer = row to me.ListCount - 1
		              if me.cell(i, cstColumnDepth) > me.cell(row, cstColumnDepth) then
		                me.CellCheck(i, cstColumnName) = false
		              end if
		            next
		          end if
		        end if
		        
		        if me.cell(row, me.cstColumnType) = "File" then
		          demo.uncheckResource (me.cell(row, me.cstColumnID))
		          
		          // Remove the resource from the pool folder
		          theFolderitem = demo.getFilePath(me.cell(row, me.cstColumnID)).Child(me.cell(row, me.cstColumnName))
		          
		          if theFolderitem <> nil then theFolderitem.Delete
		        end if
		        
		      end if
		    end if
		    
		    me.CellType(row, me.cstColumnName) = 2
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2=0 then
		    g.foreColor=RGB(255,255,255)
		  else
		    g.foreColor=RGB(240,240,240)
		  end if
		  
		  g.FillRect 0,0,g.width,g.height
		End Function
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  base.Append (New MenuItem("New Root Folder"))
		  
		  if me.ListIndex > -1 then
		    if me.cell(me.ListIndex, me.cstColumnType) = "Folder" then base.Append (New MenuItem("New Folder Inside"))
		    
		    base.Append (New MenuItem("-"))
		    
		    if me.cell(me.ListIndex, me.cstColumnType) = "File" then base.Append (New MenuItem("Open Resource"))
		    
		    base.Append (New MenuItem("-"))
		    
		    base.Append (New MenuItem("Delete"))
		    base.Append (New MenuItem("Duplicate"))
		    base.Append (New MenuItem("Rename"))
		    
		    base.Append (New MenuItem("-"))
		  end if
		  
		  base.Append (New MenuItem("Open Data Folder"))
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim f as folderitem
		  dim confirmed as boolean
		  dim row as integer
		  dim id as string
		  dim i as integer
		  dim finalName as string
		  
		  row = me.ListIndex
		  
		  select case hitItem.Text
		    
		  case "New Root Folder"
		    id = demo.createResourceFolder(demo.getUniqueName("New Folder", "0"), "0")
		    
		    // Locate the end of the folders list
		    for i=0 to me.ListCount - 1
		      if me.cell(i, me.cstColumnParent) = "0" and me.cell(i, me.cstColumnType) = "File" then
		        exit
		      end if
		    next
		    
		    // Get the final name of the created folder
		    finalName = demo.getFolderName(id)
		    
		    // Insert the folder
		    me.InsertFolder(i, finalName, 0)
		    me.cell(me.LastIndex, me.cstColumnID) = id
		    me.cell(me.LastIndex, me.cstColumnType) = "Folder"
		    me.cell(me.LastIndex, me.cstColumnParent) = "0"
		    me.cell(me.LastIndex, me.cstColumnDepth) = "0"
		    me.CellType(me.LastIndex, me.cstColumnName) = 2
		    me.CellCheck(me.LastIndex, me.cstColumnName) = false
		    me.RowPicture(me.LastIndex) = folderblue
		    
		    // Select the recently created folder
		    me.ListIndex = i
		    
		  case "New Folder Inside"
		    id = demo.createResourceFolder(demo.getUniqueName("New Folder", me.cell(row, me.cstColumnID)), me.cell(row, me.cstColumnID))
		    
		    // If the parent folder is collapsed, then expand it
		    if not me.expanded(row) then
		      me.Expanded(row) = true
		      me.selectRow(id, "Folder")
		      
		    else
		      // Locate the end of the folders list inside the expanded folder
		      for i=row to me.ListCount - 1
		        if me.cell(i, me.cstColumnParent) = me.cell(row, me.cstColumnID) and me.cell(i, me.cstColumnType) = "File" then
		          exit
		        elseif me.cell(i, me.cstColumnDepth) = me.cell(row, cstColumnDepth) then
		          exit
		        end if
		      next
		      
		      // Get the final name of the created folder
		      finalName = demo.getFolderName(id)
		      
		      // Insert the folder
		      me.InsertFolder(i+1, finalName, val(me.cell(row, me.cstColumnDepth)) + 1)
		      me.cell(me.LastIndex, me.cstColumnID) = id
		      me.cell(me.LastIndex, me.cstColumnType) = "Folder"
		      me.cell(me.LastIndex, me.cstColumnParent) = me.cell(row, me.cstColumnID)
		      me.cell(me.LastIndex, me.cstColumnDepth) = str(val(me.cell(row, me.cstColumnDepth)) + 1)
		      me.CellType(me.LastIndex, me.cstColumnName) = 2
		      me.CellCheck(me.LastIndex, me.cstColumnName) = false
		      me.RowPicture(me.LastIndex) = folderblue
		      
		      // Select the recently created folder
		      me.ListIndex = me.LastIndex
		    end if
		    
		  case "Delete"
		    // Delete the selected item
		    confirmed = Messages.GetConfirmation("Are you sure to delete the item?")
		    if confirmed then
		      if me.cell(row, cstColumnType) = "Folder" then
		        // If the folder is published on disk, remove it
		        deleteFolder(demo.getFolderPath(me.cell(row, me.cstColumnID)).Child(me.cell(row, me.cstColumnName)))
		        
		        // Collapse the folder in the listbox and remove it from the database
		        me.Expanded(row) = false
		        demo.deleteFolder(me.cell(row, me.cstColumnID))
		        
		      else
		        // If the file is published on disk, remove it
		        f = demo.getFilePath(me.cell(row, me.cstColumnID)).Child(me.cell(row, me.cstColumnName))
		        
		        if f.Exists then f.Delete
		        
		        // Remove the resource from the database
		        demo.deleteResource(me.cell(row, me.cstColumnID))
		        
		      end if
		      
		      // Finally, remove the row from the listbox
		      me.RemoveRow(row)
		    end if
		    
		  case "Open Resource"
		    // TODO: Open the file with the default editor
		    
		  case "Open Data Folder"
		    // Open the Pool folder in the Finder
		    demo.GetDataFolder.Launch
		    
		  case "Duplicate"
		    // Duplicates the selected item
		    // lbxFileList.Duplicate row
		    
		  case "Rename"
		    renaming = true
		    me.CellType(row, cstColumnName) = 3
		    me.EditCell(row, cstColumnName)
		    
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub DoubleClick()
		  // Toggle the expanded / collapsed status of a row
		  if me.ListIndex > -1 then me.Expanded(me.ListIndex) = not me.Expanded(me.ListIndex)
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  dim theRow as integer
		  
		  theRow = me.RowFromXY(x,y)
		  
		  if theRow = -1 then
		    // The user is dragging over an empty area
		    me.ListIndex = -1
		    
		  elseif me.Cell(theRow, me.cstColumnType) = "Folder" then
		    // The user is dragging over a folder so select the row
		    me.ListIndex = theRow
		    
		  else
		    // The user is dragging over an item so select the parent folder
		    selectRow(me.cell(theRow, me.cstColumnParent), "Folder")
		    
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Function DragRow(drag As DragItem, row As Integer) As Boolean
		  // Create a draggable item that could be dropped
		  // in the desktop or in orther place of the listbox
		  
		  if me.cell(row, cstColumnType) = "File" then
		    // it's a file!
		    drag.FolderItem = demo.saveResource(me.cell(row, cstColumnID), SpecialFolder.Temporary)
		    drag.PrivateRawData("????") = "File " + me.cell(row, cstColumnID)
		    
		  elseif me.cell(row, cstColumnType) = "Folder" then
		    // it's a folder!
		    drag.FolderItem = demo.saveFolder(me.cell(row, cstColumnID), SpecialFolder.Temporary)
		    drag.PrivateRawData("????") = "Folder " + me.cell(row, cstColumnID)
		    
		  end if
		  
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  dim id as string
		  dim depth as integer
		  dim parentID as String
		  dim type as string
		  dim icon as picture
		  
		  if me.ListIndex > -1 then
		    depth = val(me.cell(me.ListIndex, me.cstColumnDepth)) + 1
		    parentID = me.cell(me.ListIndex, me.cstColumnID)
		    
		    if not me.Expanded(me.ListIndex) then me.Expanded(me.ListIndex) = true
		    
		    if obj.FolderItemAvailable then
		      // The user dragged a folderitem from the filesystem
		      id = demo.createResourceFromFolderItem(obj.FolderItem, me.cell(me.ListIndex, me.cstColumnID))
		      type = "Folder"
		      icon = folderblue
		      
		    elseif obj.TextAvailable then
		      // The user is moving an element to a new position
		      id = demo.moveResource(obj.Text, me.cell(me.ListIndex, me.cstColumnID))
		      type = "File"
		      icon = icoDocument
		      
		    end if
		    
		    
		  else
		    parentID = "0"
		    depth = 0
		    
		    if obj.FolderItemAvailable then
		      // The user dragged a folderitem from the filesystem to the root
		      if obj.FolderItem.Directory then
		        id = demo.createResourceFolderFromFolderItem(obj.FolderItem, parentID)
		        type = "Folder"
		        icon = folderblue
		        
		      else
		        id = demo.createResourceFromFolderItem(obj.FolderItem, parentID)
		        type = "File"
		        icon = icoDocument
		        
		      end if
		      
		    elseif obj.TextAvailable then
		      // The user is moving an element to the root
		      id = demo.moveResource(obj.text, parentID)
		      
		    end if
		    
		    
		  end if
		  
		  
		  // Insert the item
		  if id <> "" then
		    if type = "Folder" then
		      me.InsertFolder(me.ListIndex+1, obj.FolderItem.Name, depth)
		      
		    else
		      me.InsertRow(me.ListIndex+1, obj.FolderItem.Name, depth)
		      me.cell(me.LastIndex, me.cstColumnSize) = str(obj.FolderItem.Length)
		      
		    end if
		    
		    me.cell(me.LastIndex, me.cstColumnID) = id
		    me.cell(me.LastIndex, me.cstColumnName) = obj.FolderItem.name
		    me.cell(me.LastIndex, me.cstColumnType) = type
		    me.cell(me.LastIndex, me.cstColumnDepth) = str(depth)
		    me.cell(me.LastIndex, me.cstColumnParent) = parentID
		    me.CellType(me.LastIndex, me.cstColumnName) = 2
		    me.CellCheck(me.LastIndex, me.cstColumnName) = false
		    me.RowPicture(me.LastIndex) = icon
		    
		    // Select the inserted item
		    me.ListIndex = me.LastIndex
		    
		  else
		    // The item could not be inserted because the name
		    Notify("An item with the same name already exists in this location", "Either rename the new item before adding it to this location or remove the item that already uses the name in conflict from the demofiles")
		    
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Sub ExpandRow(row As Integer)
		  dim newitems() as dictionary
		  dim depth as string
		  dim parentID as string
		  
		  depth = str(val(me.cell(row, me.cstColumnDepth)) + 1)
		  parentID = me.cell(row, me.cstColumnID)
		  
		  newItems = demo.getFiles(parentID)
		  
		  for i as integer = 0 to UBound(newitems)
		    if newitems(i).Value("type") = "Folder" then
		      me.AddFolder(newitems(i).Value("name"))
		      me.RowPicture(me.LastIndex) = folderblue
		    else
		      dim nombre as string
		      
		      nombre = newitems(i).Value("name")
		      me.AddRow(nombre)
		      me.RowPicture(me.LastIndex) = icoDocument
		    end if
		    
		    me.CellType(me.LastIndex, me.cstColumnName) = 2
		    if newitems(i).Value("enabled") then me.CellCheck(me.LastIndex, me.cstColumnName) = true
		    
		    me.cell(me.LastIndex, me.cstColumnID) = newitems(i).Value("id")
		    me.cell(me.LastIndex, me.cstColumnType) = newitems(i).Value("type")
		    me.cell(me.LastIndex, me.cstColumnSize) = newitems(i).Value("size")
		    me.cell(me.LastIndex, me.cstColumnDepth) = depth
		    me.cell(me.LastIndex, me.cstColumnParent) = parentID
		  next
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.ColumnCount = 6
		  
		  'if DebugBuild then
		  'me.ColumnWidths = "*,50,30,50,50,50,50"
		  'me.ColumnsResizable = true
		  'else
		  me.ColumnsResizable = false
		  'end if
		  
		  // Me.AcceptFileDrop(FileTypes.Png + FileTypes.Jpeg)
		  if TargetMacOS then
		    me.acceptfileDrop("Any")
		  elseif TargetWindows then
		    Me.AcceptFileDrop("special/any;")
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub init(theDemo as classDemo)
		  demo = theDemo
		  
		  me.Enabled = true
		  
		  RefreshContents
		  
		  // Finally, init the data folder copying there all the checked demo files
		  demo.CompilePoolFolder
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RefreshContents()
		  // Retrieve all the files and folders with parent = 0 (root items) and paint them
		  me.DeleteAllRows
		  me.ColumnType(cstColumnName) = Listbox.TypeCheckbox
		  
		  dim Resources() as dictionary = demo.getFiles("0") // We ask for all thefiles
		  
		  for i as integer = 0 to UBound(Resources)
		    select case Resources(i).value("type")
		      
		    case "Folder"
		      me.AddFolder(Resources(i).value("name"))
		      me.RowPicture(me.LastIndex) = folderblue
		      
		    case "File"
		      me.AddRow(Resources(i).value("name").stringValue)
		      me.RowPicture(me.LastIndex) = icoDocument
		      
		    else
		      Trace("classLbxResourcesManager:RefreshCOntents: Unknown item of type " + Resources(i).value("type") + " was not added to the tree", cstTraceLevelError)
		      continue
		      
		    end
		    
		    // Add the remaining properties (shared amongst all the items)
		    me.cell(me.LastIndex, cstColumnSize  ) = Resources(i).value("size")
		    me.cell(me.LastIndex, cstColumnID    ) = Resources(i).value("id")
		    me.cell(me.LastIndex, cstColumnType  ) = Resources(i).value("type")
		    me.cell(me.LastIndex, cstColumnParent) = "0" // Because this is a root folder
		    me.cell(me.LastIndex, cstColumnDepth ) = "0" // Because this is a root folder
		    
		    // Finally mark the item as checked if necessary
		    if Resources(i).value("enabled") then
		      me.CellCheck(me.LastIndex, cstColumnName) = true
		    end if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectRow(id as string, type as String)
		  dim i as integer
		  
		  for i=0 to me.ListCount - 1
		    if me.cell(i, cstColumnType) = type and me.cell(i, cstColumnID) = id then
		      me.ListIndex = i
		      exit
		    end if
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private demo As classDemo
	#tag EndProperty

	#tag Property, Flags = &h21
		Private renaming As boolean = false
	#tag EndProperty


	#tag Constant, Name = cstColumnDepth, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnFormat, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnID, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnName, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnParent, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnSize, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstColumnType, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant


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
			Name="AutoHideScrollbars"
			Visible=true
			Group="Behavior"
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
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnCount"
			Visible=true
			Group="Appearance"
			InitialValue="1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnsResizable"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColumnWidths"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="DefaultRowHeight"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDrag"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableDragReorder"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesHorizontal"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="GridLinesVertical"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - ThinDotted"
				"3 - ThinSolid"
				"4 - ThickSolid"
				"5 - DoubleThinSolid"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasHeading"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeadingIndex"
			Visible=true
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
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
			Name="Hierarchical"
			Visible=true
			Group="Behavior"
			Type="Boolean"
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
			Name="RequiresSelection"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollbarHorizontal"
			Visible=true
			Group="Appearance"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollBarVertical"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionType"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Single"
				"1 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowDropIndicator"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
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
		#tag ViewProperty
			Name="_ScrollOffset"
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ScrollWidth"
			Group="Appearance"
			InitialValue="-1"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
