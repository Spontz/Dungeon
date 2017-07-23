#tag Module
Protected Module Files
	#tag Method, Flags = &h0
		Sub AddUndoAction()
		  // The undo is disabled because the realtime engine does not support undo actions yet
		  
		  'dim undoFolder as folderitem
		  'dim filename as string
		  '
		  '//if the undo folder does not exist, we create it
		  'undoFolder = GetProjectFolder.child("undo")
		  'if not undoFolder.exists then
		  'undoFolder.createAsFolder
		  'filename = "0"
		  'else
		  '//We choose the new filename
		  'filename = cstr(undoFolder.Count)
		  'end if
		  '
		  'SaveProject GetFolderItem(GetProjectFolder.AbsolutePath).child("undo").child(filename)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ChooseProject() As FolderItem
		  dim dialog as FolderItemDialog
		  dim file as FolderItem
		  
		  dialog = new OpenDialog
		  dialog.promptText = "Select a project to open"
		  
		  #if targetCarbon
		    dialog.filter = "SVEditor/project"
		  #endif
		  
		  #if TargetWin32
		    dialog.filter = "*.sqlite"
		  #endif
		  
		  file = dialog.showModal()
		  
		  return file
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub cleanDataFolders()
		  dim tempString as string
		  dim file as new folderitem
		  dim i as integer
		  
		  file = file.Child("Engines").Child("openGL")
		  
		  if file <> nil then
		    for i = file.count downto 1
		      if file.item(i).directory then
		        tempString = left(file.item(i).name, 4)
		        if tempString = "data" then
		          deleteFolder(file.item(i))
		        end if
		      end if
		    next
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyFileOrFolder(source as FolderItem, destination as FolderItem, optional destinationName as String)
		  Dim newFolder as FolderItem
		  
		  //We check for the existence of the file first
		  if source = nil then
		    Notify ("A needed file could not be located", "Your demo editor installation may be corrupt. Please reinstall it.")
		    exit
		  end if
		  
		  if not source.exists then
		    Notify ("The file '" + source.Name + "' could not be located", "Your project may be corrupt")
		    exit
		  end if
		  
		  If source.directory  then //it's a folder
		    
		    if left(source.name, 1) <> "." then // Avoid directories starting with "." like .svn or MacOS X folders
		      if destinationName = "" then
		        newFolder = destination.child(source.name)
		      else
		        newFolder = destination.Child(destinationName)
		      end if
		      
		      newFolder.createAsFolder
		      
		      For i as integer = 1 to source.count //go through each item
		        If source.item(i).directory then
		          //it's a folder
		          CopyFileOrFolder source.item(i), newFolder
		          //recursively call this routine passing it the folder
		        else
		          source.item(i).CopyFileTo newFolder
		          //it's a file so copy it
		        end if
		      next
		    end if
		    
		  else //it's not a folder, so copy the item
		    if destinationName = "" then
		      destination.Delete
		      source.CopyFileTo destination
		    else
		      source.CopyFileTo destination.Child(destinationName)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteFile(target as folderitem)
		  // Function to delete a single file
		  if not target.Directory then
		    target.Delete
		  else
		    Trace("Files: deleteFile: Passed folderitem (" + target.AbsolutePath + ") is not a file", cstTraceLevelWarning)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteFilesOfExtension(theFolder as folderitem, extension as string)
		  dim result as string
		  dim command as string
		  
		  if TargetMacOS then
		    command = "rm " + theFolder.ShellPath + "/" + "*." + extension
		    result = executeShell(command)
		    
		  elseif TargetWin32 then
		    command = "del " + theFolder.ShellPath + "\" + "*." + extension
		    result = executeShell(command)
		    
		  end if
		  
		  Trace("Command: " + command + " Result: " + result, cstTraceLevelDebug)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteFolder(target as folderitem)
		  //Recursive function to erase a directory
		  for i as integer = target.count downto 1
		    if target.trueitem(i) <> nil and target.trueitem(i).Exists then deleteFolder(target.trueitem(i))
		  next
		  
		  if target.exists then target.delete
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExecuteShell(command as string) As string
		  //This method execute a shell command
		  Dim s As new Shell
		  
		  s.execute (command)
		  
		  return s.Result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fileExists(theFilePath as String) As boolean
		  dim f as folderitem
		  
		  f = GetFolderItem(theFilePath)
		  
		  if f = nil then return false
		  
		  return f.Exists
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub GetFileList(extension as String, byRef fileList() as FolderItem, startPath as FolderItem)
		  dim i, j as integer
		  dim fileExtension as String
		  
		  // We repeat for each item inside the current directory:
		  for i=1 to startPath.count
		    if startPath.item(i).Directory then
		      // If the file is a directory we scan it (using recursiveness)
		      GetFileList(extension, fileList(), startPath.Child(startPath.item(i).name))
		    else
		      
		      
		      // The file is not a directory so we check if it is of the searched type
		      for j=1 to CountFields(extension, ",")
		        
		        fileExtension = lowercase(NthField(startPath.item(i).name, ".", CountFields(startPath.item(i).name, ".")))
		        
		        if NthField(extension, ",", j) = fileExtension then
		          //We add the item to the array
		          ReDim fileList(UBound(fileList) + 1)
		          fileList(UBound(fileList)) = startPath.item(i)
		          exit
		        end if
		      next
		      
		      
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetForcedFolderItem(theShellPath as String) As FolderItem
		  // This function returns a folderitem for the given shellpath.
		  // If the route to the sellpath does not exist, it creates it
		  // The Shell Path must be a file path, but the return path will be a folder path
		  
		  dim i as integer
		  dim myFolderItem as FolderItem
		  dim folderDepth as integer
		  
		  if TargetMacOS then
		    folderDepth = CountFields(theShellPath, "/") - 1
		    theShellPath = ReplaceAll(theShellPath, "\ ", " ")
		    
		    myFolderItem = GetFolderItem("/" + NthField(theShellPath, "/", 1), FolderItem.PathTypeShell)
		  else
		    theShellPath = ReplaceAll(theShellPath, "/", "\")
		    folderDepth = CountFields(theShellPath, "\") - 1
		    myFolderItem = Volume(0)
		  end if
		  
		  for i=2 to folderDepth
		    #if TargetMacOS then
		      if not myFolderItem.Child(NthField(theShellPath, "/", i)).Exists then
		    #else
		      if not myFolderItem.Child(NthField(theShellPath, "\", i)).Exists then
		    #endif
		    
		    if TargetMacOS then
		      myFolderItem.Child(NthField(theShellPath, "/", i)).CreateAsFolder
		    else
		      myFolderItem.Child(NthField(theShellPath, "\", i)).CreateAsFolder
		    end if
		    end if
		    
		    if TargetMacOS then
		      myFolderItem = myFolderItem.Child(NthField(theShellPath, "/", i))
		    else
		      myFolderItem = myFolderItem.Child(NthField(theShellPath, "\", i).DefineEncoding(Encodings.UTF8))
		    end if
		  next
		  
		  return myFolderItem
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetRelativePathName(file as FolderItem) As String
		  dim theRelativePath as String
		  dim elementName as String
		  
		  // We get the root file name
		  elementName = file.name
		  
		  // And get the relative path
		  if InStr(0, file.AbsolutePath, "pool") = 0 then return ""
		  
		  while elementName <> "pool"
		    theRelativePath = elementName + "/" + theRelativePath
		    file = file.parent
		    elementName = file.name
		  wend
		  
		  // And return the result, trimming the last character (a "/")
		  return left(theRelativePath, len(theRelativePath) - 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub getUsedFileSystem(ByRef fileList() as String, startFolder as FolderItem, prefix as String)
		  dim i as integer
		  dim filePath as String
		  
		  for i=1 to startFolder.Count
		    // If the item we are looking for is a directory, recursively add it
		    if startFolder.child(startfolder.item(i).name).Directory then
		      getUsedFileSystem (fileList(), startFolder.child(startfolder.item(i).name), prefix + startFolder.child(startfolder.item(i).Name).name + "/")
		    else
		      filePath = prefix + startFolder.child(startFolder.item(i).Name).name
		      fileList.Append filePath
		    end if
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub rewriteFile(source as folderitem, destination as FolderItem)
		  Dim inputStream as BinaryStream = BinaryStream.Open(source, false)
		  
		  If destination <> Nil Then
		    Try
		      dim outputStream as BinaryStream = BinaryStream.Create(destination, true)
		      outputStream.LittleEndian = not inputStream.LittleEndian
		      
		      Do Until inputStream.EOF
		        outputStream.WriteUInt8 inputStream.ReadUInt8
		      Loop
		      
		    Catch exc as IOException
		      MsgBox "Oops - failed to create the output file."
		      
		    End Try
		  End If
		  
		End Sub
	#tag EndMethod


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
