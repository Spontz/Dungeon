#tag Class
Protected Class classDemo
	#tag Method, Flags = &h0
		Function addBar(type as string, layer as integer, startTime as single, endTime as single, script as string, srcBlending as string, dstBlending as string, srcAlpha as string, dstAlpha as string, blendingEQ as string) As string
		  dim rec as New DatabaseRecord
		  
		  rec.Column       ("type"       ) = type
		  rec.IntegerColumn("layer"      ) = layer
		  rec.DoubleColumn ("startTime"  ) = startTime
		  rec.DoubleColumn ("endTime"    ) = endTime
		  rec.BooleanColumn("enabled"    ) = true
		  rec.Column       ("script"     ) = script
		  rec.Column       ("srcBlending") = srcBlending
		  rec.Column       ("dstBlending") = dstBlending
		  rec.Column       ("blendingEQ" ) = blendingEQ
		  
		  demoDB.InsertRecord ("BARS", rec)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  // Return the ID of the added bar
		  dim result as string = demoDB.SQLSelect("SELECT id FROM BARs ORDER BY id DESC LIMIT 1").Field("id").StringValue
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addBarsToSelection(startTime as double, endTime as double, startlayer as integer, endLayer as integer)
		  ExecuteSQL("UPDATE BARs SET selected = 1 WHERE layer >= " + str(startLayer) + " AND layer <= " + str(endLayer) + " AND (" + _
		  "(startTime >= " + str(startTime) + " AND endTime <= " + str(endTime) + ") OR " + _
		  "(startTime <= " + str(startTime) + " AND endTime >= " + str(startTime) + ") OR " + _
		  "(startTime <= " + str(endTime) + " AND endTime >= " + str(endTime) + "))" _
		  )
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub addBarToSelection(barID as string)
		  ExecuteSQL("UPDATE BARs SET selected = 1 WHERE id = '" + barID + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function addFBO(width as integer, height as integer, ratio as integer, format as string, colorAttachments as integer, filter as string) As integer
		  Dim myRatio As String
		  Dim myWidth As String
		  Dim myHeight As String
		  
		  If ratio = 0 Then
		    myRatio = "NULL"
		  Else
		    myRatio = Str(ratio)
		  End If
		  
		  If width = 0 Then
		    myWidth = "NULL"
		  Else
		    myWidth = Str(width)
		  End If
		  
		  If height = 0 Then
		    myHeight = "NULL"
		  Else
		    myHeight = str(width)
		  End If
		  
		  dim result as integer
		  
		  myRatio = str(ratio)
		  
		  demoDB.sqlexecute ("INSERT INTO FBOs (width, height, ratio, format, colorAttachments, filter) Values (" + myWidth + "," + myHeight + "," + myRatio + ",'" + Format + "'," + str(colorAttachments) + ",'" + filter + "')")
		  
		  If demoDB.error Then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  result = demoDB.SQLSelect("SELECT id FROM FBOs ORDER BY id LIMIT 1").Field("id").IntegerValue
		  
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub checkResource(id as string)
		  ExecuteSQL("UPDATE FILES SET enabled = 1 WHERE id = " + id)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub checkResourceFolder(id as string)
		  ExecuteSQL("UPDATE FOLDERS SET enabled = 1 WHERE id = " + id)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function checkVersion() As boolean
		  ' Check the current database version
		  dim currentVersion as integer = getDatabaseVersion
		  dim latestVersion as integer = cstLatestDBversion
		  
		  if currentVersion < latestVersion then
		    Notify("This project needs to be updated in order to continue", "You can preserve the project contents if you don't save it")
		    
		  elseif currentVersion > latestVersion then
		    Notify("The database has an unknown version number (" + str(currentVersion) + ").", "This could mean that the database is corrupt. This version of the editor could corrupt the project if you save it. Proceed at your own risk!")
		    return true
		    
		  end if
		  
		  if currentVersion = 1 then
		    ' Add the filter column to the FBOs table with default value "Bilinear"
		    ExecuteSQL("ALTER TABLE FBOs ADD COLUMN Filter VARCHAR DEFAULT 'Bilinear'")
		    
		    If demoDB.error then
		      MsgBox demoDB.errormessage
		      return false
		    end if
		    
		    demoDB.Commit
		    
		    ' Set the version
		    setDatabaseVersion(2)
		  end if
		  
		  if currentVersion = 2 then
		    ' Add the sections table to the database
		    ExecuteSQL(cstQueryNewTableSections)
		    
		    If demoDB.error then
		      MsgBox demoDB.errormessage
		      return false
		    end if
		    
		    demoDB.Commit
		    
		    ' Set the version
		    setDatabaseVersion(3)
		  end if
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub clearBarSelection()
		  ExecuteSQL("UPDATE BARs SET selected = 0")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub clearFBOs()
		  ExecuteSQL("DELETE FROM FBOs WHERE 1")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  Else
		    demoDB.Commit
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CompileDataFolder()
		  // We create the data folder, if it does not exists
		  if GetDataFolder.exists then
		    Trace ("classDemo:CompileDataFolder: deleted " + GetDataFolder.ShellPath + " folder.", cstTraceLevelLog)
		    deleteFolder (GetDataFolder)
		  end if
		  
		  // And create a new empty one
		  GetDataFolder.createAsFolder
		  
		  // Create the pool folder in the data folder
		  GetDataFolder.child("pool").CreateAsFolder
		  
		  // TODO: Copy the usedfiles to the pool folder
		  CompilePoolFolder
		  
		  // Create the configuration scripts and copy needed files to the data folder
		  Scriptwriter.CreateConfiguration(me)
		  
		  // Create the section scripts
		  ScriptWriter.WriteScriptsSPO(Me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CompilePoolFolder()
		  dim checkedFileIDs() as string = getCheckedFilesIDs
		  dim fi as FolderItem
		  dim size as UInt64
		  
		  for i as integer = 0 to UBound(checkedFileIDs)
		    fi = saveResource(checkedFileIDs(i), getFilePath(checkedFileIDs(i)))
		    size = size + fi.Length
		  next
		  
		  Trace("classDemo:CompilePoolFolder: The pool folder has been created. Size: " + str(size/1024/1024) + "MB", cstTraceLevelLog)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countBars() As integer
		  dim barRS as RecordSet
		  
		  barRS = demoDB.SQLSelect("SELECT COUNT(*) AS Total FROM BARs")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  end if
		  
		  return barRS.Field("Total").IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countFBOs() As integer
		  dim result as Integer
		  
		  result = demoDB.SQLSelect("SELECT COUNT(*) AS FBOsCount FROM 'FBOs'").Field("FBOsCount").IntegerValue
		  
		  return (result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function countSelectedBars() As integer
		  dim barRS as RecordSet
		  
		  barRS = demoDB.SQLSelect("SELECT COUNT(*) AS Total FROM BARs where selected = 1")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  end if
		  
		  return barRS.Field("Total").IntegerValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createResourceFolder(name as string, parentID as string) As string
		  dim id as string
		  
		  if nameConflict(name, parentID) then
		    // There is a folder or a file with the same name in the same location
		    return ""
		  end if
		  
		  demoDB.sqlexecute ("INSERT INTO FOLDERS (name, parent) Values ('" + name + "', '" + parentID + "')")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		    
		    // Mark the project as not saved
		    saved = false
		  End if
		  
		  // Return the ID of the added folder
		  id = demoDB.SQLSelect("SELECT id FROM FOLDERS ORDER BY id DESC LIMIT 1").Field("id").StringValue
		  
		  return id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createResourceFolderFromFolderItem(f as folderitem, parentID as string) As string
		  dim id as string
		  dim result as string
		  
		  if not f.Directory then
		    Trace("classDemo:createResourceFolder: a file has been passed to this function, instead of a folder", cstTraceLevelWarning)
		    return createResourceFromFolderItem(f, parentID)
		  end if
		  
		  if nameConflict(f.name, parentID) then
		    // There is a folder or a file with the same name in the same location
		    return ""
		  end if
		  
		  demoDB.sqlexecute ("INSERT INTO FOLDERS (name, parent) Values ('" + f.name + "', '" + parentID + "')")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		    
		    // Mark the project as not saved
		    saved = false
		  End if
		  
		  // Return the ID of the added folder
		  id = demoDB.SQLSelect("SELECT id FROM FOLDERS ORDER BY id DESC LIMIT 1").Field("id").StringValue
		  
		  // Recursively add the folder contents
		  for i as integer = 1 to f.Count
		    if f.item(i).Directory then
		      result = createResourceFolderFromFolderItem(f.item(i), id)
		      
		    else
		      result = createResourceFromFolderItem(f.item(i), id)
		      
		    end if
		  next
		  
		  return id
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function createResourceFromFolderItem(f as FolderItem, parentID as string) As string
		  Dim b As BinaryStream
		  Dim rec As DatabaseRecord
		  Dim file as string
		  dim id as string
		  
		  If f <> Nil then
		    // Let's calculate the file name in order to avoid two files with the same name in the same folder
		    dim newName as string = f.name
		    
		    if nameConflict(f.Name, parentID) then
		      dim counter as integer
		      dim shortName as string = Strings.shortName(f.name)
		      dim extension as string = Strings.extension(f.name)
		      
		      newName = ShortName + " Copy." + extension
		      
		      while nameConflict(newName, parentID)
		        counter = counter + 1
		        newName = shortName + " Copy " + str(counter) + "." + extension
		      wend
		    end if
		    
		    if not f.Directory then
		      // A file has been dragged
		      b = BinaryStream.Open(f,False)
		      file = b.Read(b.Length)
		      b.Close
		      
		      rec = New DatabaseRecord
		      
		      rec.Column       ("name"   ) = newName
		      rec.IntegerColumn("parent" ) = val(parentID)
		      rec.IntegerColumn("bytes"  ) = f.Length
		      rec.BlobColumn   ("data"   ) = file
		      rec.Column       ("format" ) = f.Type
		      rec.Column       ("enabled") = "0"
		      rec.column       ("type"   ) = "File"
		      
		      demoDB.InsertRecord ("FILES", rec)
		      
		      If demoDB.error then
		        demoDB.Rollback
		        MsgBox demoDB.errormessage
		        
		      else
		        demoDB.Commit
		        
		        // Mark the project as not saved
		        saved = false
		      end if
		      
		      // Return the ID of the added file
		      id = demoDB.SQLSelect("SELECT id FROM FILES ORDER BY id DESC LIMIT 1").Field("id").StringValue
		      
		      return id
		      
		    else
		      Trace ("classDemo:createResource: a folder has been passed to this function, instead of a file", cstTraceLevelWarning)
		      id = createResourceFolderFromFolderItem(f, parentID)
		      
		      return id
		      
		    end if
		    
		  else
		    Trace("classDemo:createResouce: The dropped file could not be located in the filesystem", cstTraceLevelError)
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteBar(barID as string)
		  // Remove the bar from the database
		  ExecuteSQL("DELETE FROM BARs WHERE id = '" + barID + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    // Remove the .spo file (if it still exists)
		    Files.deleteFile dataFolder.Child(str(barID) + ".spo")
		    
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteFolder(folderID as string)
		  // Remove the folder from the database included all the containedFILESand folders
		  dim totalFolders as integer
		  dim totalFiles as integer
		  dim folderIDs as RecordSet
		  dim i as integer
		  
		  totalFolders = demoDB.SQLSelect("SELECT COUNT(*) as total FROM FOLDERS WHERE parent = " + folderID).Field("total").IntegerValue
		  totalFiles = demoDB.SQLSelect("SELECT COUNT(*) as total FROM FILES WHERE parent = " + folderID).Field("total").IntegerValue
		  
		  if totalFiles > 0 then
		    ExecuteSQL("DELETE FROM FILES WHERE parent=" + folderID)
		  end if
		  
		  if totalFolders > 0 then
		    folderIDs =  demoDB.SQLSelect("SELECT ID FROM FOLDERS WHERE parent=" + folderID)
		    
		    while not folderIDs.EOF
		      deleteFolder(folderIDs.Field("ID").StringValue)
		      folderIDs.MoveNext
		    wend
		  end if
		  
		  // Finally delete the top parent folder
		  ExecuteSQL("DELETE FROM FOLDERS WHERE id=" + folderID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteResource(resourceID as string)
		  // Remove the resource from the database
		  ExecuteSQL("DELETE FROM FILES WHERE id=" + resourceID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub deleteSelectedBars()
		  // Remove the resource from the database
		  ExecuteSQL("DELETE FROM BARs WHERE selected = 1")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function duplicateFile(fileID as string, optional parentID as string) As string
		  // Let's calculate the file name in order to avoid two files with the same name in the same folder
		  dim file as dictionary = getFile(fileID)
		  
		  dim newName  as string = file.Value("name")
		  
		  dim shortName as string = Strings.shortName(newName) + " Copy"
		  dim extension as string = Strings.extension(newName)
		  
		  newName = shortName + "." + extension
		  
		  if parentID = "" then parentID = file.value("parentID")
		  
		  if nameConflict(newName, parentID) then
		    dim counter as integer
		    
		    while nameConflict(newName, parentID)
		      counter = counter + 1
		      newName = shortName + " " + str(counter) + "." + extension
		    wend
		  end if
		  
		  Dim rec As new DatabaseRecord
		  
		  rec.Column       ("name"   ) = newName
		  rec.IntegerColumn("parent" ) = val(parentID)
		  rec.IntegerColumn("bytes"  ) = file.Value("size")
		  rec.BlobColumn   ("data"   ) = file.Value("data")
		  rec.Column       ("format" ) = file.Value("format")
		  rec.Column       ("enabled") = "0"
		  
		  demoDB.InsertRecord ("FILES", rec)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    
		  else
		    demoDB.Commit
		    
		    // Mark the project as not saved
		    saved = false
		  end if
		  
		  // Return the ID of the added file
		  return demoDB.SQLSelect("SELECT id FROM FILES ORDER BY id DESC LIMIT 1").Field("id").StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function duplicateFolder(folderID as string, optional parentID as string) As string
		  // Let's calculate the new folder name in order to avoid two folder with the same name in the same folder
		  dim folder as dictionary = getFolder(folderID)
		  
		  dim newName  as string = folder.Value("name")
		  
		  dim shortName as string = Strings.shortName(newName) + " Copy"
		  
		  newName = shortName
		  
		  if parentID = "" then parentID = folder.value("parentID")
		  
		  if nameConflict(newName, parentID) then
		    dim counter as integer
		    
		    while nameConflict(newName, parentID)
		      counter = counter + 1
		      newName = shortName + " " + str(counter)
		    wend
		  end if
		  
		  Dim rec As new DatabaseRecord
		  
		  rec.Column       ("name"   ) = newName
		  rec.IntegerColumn("parent" ) = val(parentID)
		  rec.Column       ("enabled") = "0"
		  
		  demoDB.InsertRecord ("FOLDERS", rec)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    
		  else
		    demoDB.Commit
		    
		    ' Mark the project as not saved
		    saved = false
		  end if
		  
		  ' Return the ID of the added folder
		  dim newFolderID as string = demoDB.SQLSelect("SELECT id FROM FOLDERS ORDER BY id DESC LIMIT 1").Field("id").StringValue
		  
		  ' Also duplicate the files (and folders) inside the original folder
		  dim resources() as Dictionary = getFiles(folderID)
		  
		  for each entry as dictionary in resources
		    if entry.value("type") = "File" then
		      ' Duplicate file
		      call duplicateFile(entry.value("id"), newFolderID)
		      
		    else
		      ' Duplicate folder
		      call duplicateFolder(entry.value("id"), newFolderID)
		      
		    end if
		  next
		  
		  return newFolderID
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExecuteSQL(theQuery as string)
		  demoDB.SQLExecute(theQuery)
		  
		  // Mark the project as not saved
		  saved = false
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FileInScope(theFile as folderitem, theScope() as integer) As boolean
		  'dim i,j as integer
		  'dim filepath as string
		  '
		  '// A file starting with a point is not valid
		  'if left(theFile.Name, 1) = "." then return false
		  '
		  '// Get the path of the file
		  'filepath = Replace(theFile.ShellPath, GetPoolFolder.ShellPath, "")
		  '
		  'if TargetMacOS then
		  'filePath = ReplaceAll(filepath, ":", "/")
		  'else
		  'filePath = ReplaceAll(filepath, "\", "/")
		  'end if
		  '
		  '// Case-insensitive comparison
		  'if inStr(right(filePath, 4),".3ds") > 0 or inStr(right(filePath, 4),".lwo") > 0 then
		  '// In case of a 3ds or lwo  file, the path is the name of the file only
		  'filepath = NthField(filepath, "/", CountFields(filepath, "/"))
		  'end if
		  '
		  '// TODO
		  ''// We take a look to all the strings in the scope. If the file is referenced there, then it's in the scope
		  ''for i=0 to Ubound(theScope)
		  ''for j=1 to 3
		  ''if InStr(sections.GetString(theScope(i), j), filepath) > 0 then return true
		  ''next
		  ''next
		  '
		  '// We shouldn't include the file in the data folder
		  'return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateScripts()
		  ScriptWriter.WriteScriptsSPO(me)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getAllBarsData() As Dictionary()
		  dim result() as Dictionary
		  dim barsRS as RecordSet
		  dim counter as integer
		  
		  barsRS = demoDB.SQLSelect("SELECT * FROM BARs")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return result
		  end if
		  
		  while not barsRS.EOF
		    result.Append new Dictionary
		    
		    result(counter).Value("id"         ) = barsRS.Field("id"         ).IntegerValue
		    result(counter).Value("type"       ) = barsRS.Field("type"       ).StringValue
		    result(counter).Value("layer"      ) = barsRS.Field("layer"      ).IntegerValue
		    result(counter).Value("startTime"  ) = barsRS.Field("startTime"  ).DoubleValue
		    result(counter).Value("endTime"    ) = barsRS.Field("endTime"    ).DoubleValue
		    result(counter).Value("enabled"    ) = barsRS.Field("enabled"    ).BooleanValue
		    result(counter).Value("selected"   ) = barsRS.Field("selected"   ).BooleanValue
		    result(counter).Value("script"     ) = barsRS.Field("script"     ).StringValue
		    result(counter).Value("srcBlending") = barsRS.Field("srcBlending").StringValue
		    result(counter).Value("dstBlending") = barsRS.Field("dstBlending").StringValue
		    result(counter).value("blendingEQ" ) = barsRS.Field("blendingEQ" ).StringValue
		    result(counter).Value("srcAlpha"   ) = barsRS.Field("srcAlpha"   ).StringValue
		    result(counter).Value("dstAlpha"   ) = barsRS.Field("dstAlpha"   ).StringValue
		    
		    counter = counter + 1
		    
		    barsRS.MoveNext
		  wend
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarBlendingEquation(barID as string) As string
		  dim result as string
		  dim query as string
		  
		  query = "SELECT blendingEQ FROM BARs where id = '" + barID + "' LIMIT 1"
		  result = demoDB.SQLSelect(query).Field("blendingEQ").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarData(barID as string) As Dictionary
		  dim result as new Dictionary
		  dim barRS as RecordSet
		  
		  barRS = demoDB.SQLSelect("SELECT * FROM BARs where id = '" + barID + "' LIMIT 1")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return result
		  end if
		  
		  result.Value("id"         ) = barRS.Field("id"         ).IntegerValue
		  result.Value("type"       ) = barRS.Field("type"       ).StringValue
		  result.Value("layer"      ) = barRS.Field("layer"      ).IntegerValue
		  result.Value("startTime"  ) = barRS.Field("startTime"  ).DoubleValue
		  result.Value("endTime"    ) = barRS.Field("endTime"    ).DoubleValue
		  result.Value("enabled"    ) = barRS.Field("enabled"    ).BooleanValue
		  result.Value("selected"   ) = barRS.Field("selected"   ).BooleanValue
		  result.Value("script"     ) = barRS.Field("script"     ).StringValue
		  result.Value("srcBlending") = barRS.Field("srcBlending").StringValue
		  result.Value("dstBlending") = barRS.Field("dstBlending").StringValue
		  result.Value("srcAlpha"   ) = barRS.Field("srcAlpha"   ).StringValue
		  result.Value("dstAlpha"   ) = barRS.Field("dstAlpha"   ).StringValue
		  result.Value("blendingEQ" ) = barRS.Field("blendingEQ" ).StringValue
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarDstAlpha(barID as string) As string
		  dim result as string
		  dim query as string
		  
		  query = "SELECT dstAlpha FROM BARs where id = '" + barID + "' LIMIT 1"
		  
		  result = demoDB.SQLSelect(query).Field("dstAlpha").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarDstBlending(barID as string) As string
		  dim result as string
		  dim query as string
		  
		  query = "SELECT dstBlending FROM BARs where id = '" + barID + "' LIMIT 1"
		  
		  result = demoDB.SQLSelect(query).Field("dstBlending").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarEnabled(barID as string) As boolean
		  dim result as Boolean
		  
		  result = demoDB.SQLSelect("SELECT enabled FROM BARs where id = '" + barID + "' LIMIT 1").Field("enabled").BooleanValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return false
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarEndTime(barID as string) As single
		  dim result as Single
		  
		  result = demoDB.SQLSelect("SELECT endTime FROM BARs where id = '" + barID + "' LIMIT 1").Field("endTime").DoubleValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarID(time as double, layer as integer) As string
		  dim result as string
		  dim barRS as RecordSet
		  
		  dim query as string = "SELECT id FROM BARs where layer = '" + str(layer) + "' AND startTime < '" + str(time) + "' AND endTime > '" + str(time) + "'"
		  barRS = demoDB.SQLSelect(query)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  end if
		  
		  if barRS.RecordCount = 0 then
		    // No bars found (empty space in the timeline)
		    return "0"
		    
		  elseif barRS.RecordCount = 1 then
		    // A single bar was found (normal case)
		    return barRS.Field("id").StringValue
		    
		  else
		    // Multiple bars found (overlapping)
		    return barRS.Field("id").StringValue
		    Trace("classDemo:getBarID: Multiple bars returned for time = " + str(time) + "sg. and layer = " + str(layer), cstTraceLevelError)
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarLayer(barID as string) As integer
		  dim result as integer
		  
		  result = demoDB.SQLSelect("SELECT layer FROM BARs where id = '" + barID + "' LIMIT 1").Field("layer").DoubleValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarScript(barID as string) As string
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT script FROM BARs where id = '" + barID + "' LIMIT 1").Field("script").StringValue
		  
		  result = result.DefineEncoding(Encodings.UTF8)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarSelectedStatus(barID as string) As Boolean
		  dim result as Boolean
		  
		  result = demoDB.SQLSelect("SELECT selected FROM BARs where id = '" + barID + "' LIMIT 1").Field("selected").BooleanValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return false
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarSrcAlpha(barID as string) As string
		  dim result as string
		  dim query as string
		  
		  query = "SELECT srcAlpha FROM BARs where id = '" + barID + "' LIMIT 1"
		  
		  result = demoDB.SQLSelect(query).Field("srcAlpha").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarSrcBlending(barID as string) As string
		  dim result as string
		  dim query as string
		  
		  query = "SELECT srcBlending FROM BARs where id = '" + barID + "' LIMIT 1"
		  
		  result = demoDB.SQLSelect(query).Field("srcBlending").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarStartTime(barID as string) As single
		  dim result as Single
		  
		  result = demoDB.SQLSelect("SELECT startTime FROM BARs where id = '" + barID + "' LIMIT 1").Field("startTime").DoubleValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBarsToDraw(startTime as double, endTime as double) As string()
		  dim result as RecordSet
		  dim IDs() as string
		  
		  result = demoDB.SQLSelect("SELECT id FROM BARs where endTime >= " + str(startTime) + " AND startTime <= " + str(endTime))
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    while not result.EOF
		      IDs.Append(result.Field("id").stringValue)
		      result.MoveNext
		    wend
		    
		    return IDs
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarsWithText(content as string) As String()
		  // Get a list of sections containing the passed string
		  dim barIDs() as String
		  
		  dim result as recordset = demoDB.SQLSelect("SELECT id FROM BARS where script LIKE '%" + content + "%'")
		  
		  while not result.EOF
		    barIDs.Append(result.Field("id").StringValue)
		    result.MoveNext
		  wend
		  
		  return barIDs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBarType(barID as string) As string
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT type FROM BARs where id = '" + barID + "' LIMIT 1").Field("type").StringValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return ""
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getBlendingEquation(mode as integer) As string
		  select case mode
		    
		  case 0
		    Return "ADD"
		    
		  case 1
		    return "SUBTRACT"
		    
		  case 2
		    return "REVERSE_SUBTRACT"
		    
		  else
		    return "Invalid blensdng equation"
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBlendingEquationID(mode as string) As integer
		  select case mode
		    
		  case "ADD"
		    Return 0
		    
		  case "SUBTRACT"
		    return 1
		    
		  case "REVERSE_SUBTRACT"
		    return 2
		    
		  else
		    return -1
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getBlendingID(mode as string) As integer
		  select case mode
		    
		  case "ZERO"
		    Return 0
		    
		  case "ONE"
		    return 1
		    
		  case "SRC_COLOR"
		    return 2
		    
		  case "ONE_MINUS_SRC_COLOR"
		    return 3
		    
		  case "DST_COLOR"
		    return 4
		    
		  case "ONE_MINUS_DST_COLOR"
		    return 5
		    
		  case "SRC_ALPHA"
		    return 6
		    
		  case "ONE_MINUS_SRC_ALPHA"
		    return 7
		    
		  case "DST_ALPHA"
		    return 8
		    
		  case "ONE_MINUS_DST_ALPHA"
		    return 9
		    
		  case "SRC_ALPHA_SATURATE"
		    return 10
		    
		  else
		    return -1
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getBlendingMode(mode as integer) As string
		  select case mode
		    
		  case 0
		    Return "ZERO"
		    
		  case 1
		    return "ONE"
		    
		  case 2
		    return "SRC_COLOR"
		    
		  case 3
		    return "ONE_MINUS_SRC_COLOR"
		    
		  case 4
		    return "DST_COLOR"
		    
		  case 5
		    return "ONE_MINUS_DST_COLOR"
		    
		  case 6
		    return "SRC_ALPHA"
		    
		  case 7
		    return "ONE_MINUS_SRC_ALPHA"
		    
		  case 8
		    return "DST_ALPHA"
		    
		  case 9
		    return "ONE_MINUS_DST_ALPHA"
		    
		  case 10
		    return "SRC_ALPHA_SATURATE"
		    
		  else
		    return "Invalid blending mode"
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getCheckedFilesIDs() As string()
		  dim files as RecordSet
		  dim result() as string
		  
		  Files = demoDB.SQLSelect("SELECT * FROM FILES where enabled=1")
		  
		  // Build the response array with the found IDs
		  while not files.EOF
		    result.Append(files.Field("id").StringValue)
		    Files.MoveNext
		  wend
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getDatabaseVersion() As integer
		  ' Return the current databse version
		  dim result as integer
		  
		  result = demoDB.SQLSelect("SELECT value FROM VARIABLES where variable = 'DBversion'").Field("value").IntegerValue
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return 0
		  else
		    return result
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDataFolder() As FolderItem
		  return dataFolder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDataFolderItem(theFilePath as String) As FolderItem
		  dim i as integer
		  dim f as folderItem
		  
		  f = GetDataFolder().child("pool")
		  
		  for i=1 to countFields(theFilePath, "/")
		    f = f.child(nthField(theFilePath, "/", i))
		  next
		  
		  return f
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDemoEndTime() As Single
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='endTime' LIMIT 1").Field("value").StringValue
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDemoLoopMode() As boolean
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='demoLoop' LIMIT 1").Field("value").StringValue
		  
		  if result = "1" then
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDemoName() As string
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='demoName' LIMIT 1").Field("value").StringValue
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDemoStartTime() As single
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='startTime' LIMIT 1").Field("value").StringValue
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getDemoTime() As Single
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='time' LIMIT 1").Field("value").StringValue
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDemoType() As string
		  dim result as string = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='type' LIMIT 1").Field("value").StringValue
		  
		  if result = "" then result = dragon
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEnabledBarsData() As Dictionary()
		  dim result() as Dictionary
		  dim barsRS as RecordSet
		  dim counter as integer
		  
		  barsRS = demoDB.SQLSelect("SELECT * FROM BARs where enabled = 1")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return result
		  end if
		  
		  while not barsRS.EOF
		    result.Append new Dictionary
		    
		    result(counter).Value("id") = barsRS.Field("id").IntegerValue
		    result(counter).Value("type") = barsRS.Field("type").StringValue
		    result(counter).Value("layer") = barsRS.Field("layer").IntegerValue
		    result(counter).Value("startTime") = barsRS.Field("startTime").DoubleValue
		    result(counter).Value("endTime") = barsRS.Field("endTime").DoubleValue
		    result(counter).Value("enabled") = barsRS.Field("enabled").BooleanValue
		    result(counter).Value("selected") = barsRS.Field("selected").BooleanValue
		    result(counter).Value("script") = barsRS.Field("script").StringValue
		    result(counter).Value("srcBlending") = barsRS.Field("srcBlending").StringValue
		    result(counter).Value("dstBlending") = barsRS.Field("dstBlending").StringValue
		    result(counter).Value("srcAlpha") = barsRS.Field("srcAlpha").StringValue
		    result(counter).Value("dstAlpha") = barsRS.Field("dstAlpha").StringValue
		    
		    counter = counter + 1
		    
		    barsRS.MoveNext
		  wend
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetEnginesFolder() As Folderitem
		  return enginesFolder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getEngineType() As string
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='engine' LIMIT 1").Field("value").StringValue
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFBOsList() As string()
		  Dim result() As String
		  dim theRecordset as RecordSet
		  
		  Redim result(countFBOs - 1)
		  
		  theRecordset = demoDB.SQLSelect("SELECT * FROM FBOs")
		  
		  If demoDB.error then MsgBox demoDB.errormessage
		  
		  dim i as integer
		  
		  For i=0 To theRecordset.RecordCount - 1
		    Dim params() As String
		    
		    params.Append(theRecordset.Field("ratio"           ).StringValue)
		    params.Append(theRecordset.Field("format"          ).StringValue)
		    params.Append(theRecordset.Field("width"           ).StringValue)
		    params.Append(theRecordset.Field("height"          ).StringValue)
		    params.append(theRecordset.Field("colorAttachments").StringValue)
		    params.append(theRecordset.Field("filter"          ).StringValue)
		    
		    result(i) = Join(params, " ")
		    
		    theRecordSet.MoveNext
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFile(ID as string) As dictionary
		  dim files as RecordSet
		  dim result as new Dictionary
		  
		  Files = demoDB.SQLSelect("SELECT * FROM FILES where id='" + ID + "'")
		  
		  // Build the response dictionary
		  if files.RecordCount > 0 then
		    result.Value("id"      ) = files.Field("id"     ).StringValue
		    result.Value("name"    ) = files.Field("name"   ).StringValue
		    result.Value("size"    ) = files.Field("bytes"  ).StringValue
		    result.Value("data"    ) = files.Field("data"   ).NativeValue
		    result.value("enabled" ) = files.field("enabled").BooleanValue
		    result.value("parentID") = files.field("parent" ).IntegerValue
		    result.Value("format"  ) = files.Field("format" ).StringValue
		    
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFilePath(ID as string) As FolderItem
		  dim path() as string
		  dim ids() as string
		  dim ident as string
		  dim parent as string
		  dim name as string
		  dim result as new FolderItem
		  dim queryResult as Recordset
		  
		  // Check if the resource is published
		  dim published as boolean
		  published = demoDB.SQLSelect("SELECT enabled FROM FILES where id='" + ID + "'").Field("enabled").BooleanValue
		  if not published then return nil
		  
		  // The resource is published, so let's construct its path
		  parent = demoDB.SQLSelect("SELECT parent FROM FILES where id='" + ID + "'").Field("parent").StringValue
		  
		  while parent <> "0"
		    queryResult = demoDB.SQLSelect("SELECT id, parent, name FROM FOLDERS where id='" + parent + "'")
		    
		    parent = queryResult.Field("parent").StringValue
		    name = queryResult.Field("name").StringValue
		    ident = queryResult.Field("id").StringValue
		    
		    path.Append(name)
		    ids.append(ident)
		  wend
		  
		  // Create a folderitem following the path
		  result = dataFolder
		  result = result.Child("pool")
		  
		  for i as integer = UBound(path) downto 0
		    result = result.Child(path(i))
		    
		    // Create and mark the folder as created
		    if not result.Exists then
		      result.CreateAsFolder
		    end if
		    
		    checkResourceFolder (ids(i))
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFiles(parentFolder as string) As dictionary()
		  dim Files as RecordSet
		  dim folders as RecordSet
		  dim row as Dictionary
		  dim result() as Dictionary
		  
		  Files   = demoDB.SQLSelect("SELECT * FROM FILES where parent='"   + parentFolder + "'")
		  folders = demoDB.SQLSelect("SELECT * FROM FOLDERS where parent='" + parentFolder + "'")
		  
		  // Build the response dictionary
		  if folders.RecordCount > 0 then
		    Redim result(folders.RecordCount - 1)
		    
		    for i as integer = 0 to folders.RecordCount - 1
		      result(i) = new Dictionary
		      
		      result(i).Value("id"     ) = folders.Field("id").StringValue
		      result(i).Value("name"   ) = folders.Field("name").StringValue
		      result(i).Value("type"   ) = "Folder"
		      result(i).Value("enabled") = folders.Field("enabled").BooleanValue
		      result(i).Value("size"   ) = "" // TODO: Recursively calculate the size of the enclosed items
		      
		      folders.MoveNext
		    next
		  end
		  
		  if files.RecordCount > 0 then
		    Redim result(Ubound(result) + files.RecordCount)
		    
		    for i as integer = 0 to files.RecordCount - 1
		      result(i + folders.RecordCount) = new Dictionary
		      result(i + folders.RecordCount).Value("id"     ) = files.Field("id").StringValue
		      result(i + folders.RecordCount).Value("name"   ) = files.Field("name").StringValue
		      result(i + folders.RecordCount).Value("type"   ) = "File"
		      result(i + folders.RecordCount).Value("size"   ) = files.Field("bytes").StringValue
		      result(i + folders.RecordCount).Value("enabled") = files.Field("enabled").BooleanValue
		      
		      Files.MoveNext
		    next
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFolder(ID as string) As dictionary
		  dim files as RecordSet
		  dim result as new Dictionary
		  
		  Files = demoDB.SQLSelect("SELECT * FROM FOLDERS where id='" + ID + "'")
		  
		  // Build the response dictionary
		  if files.RecordCount > 0 then
		    result.Value("type"    ) = "Folder"
		    result.Value("id"      ) = files.Field("id"     ).StringValue
		    result.Value("name"    ) = files.Field("name"   ).StringValue
		    result.value("enabled" ) = files.field("enabled").BooleanValue
		    result.value("parentID") = files.field("parent" ).IntegerValue
		    
		  end if
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFolderName(ID as string) As String
		  dim name as string
		  
		  name = demoDB.SQLSelect("SELECT name FROM FOLDERS where id='" + ID + "'").Field("name").StringValue
		  
		  return name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFolderPath(ID as string) As FolderItem
		  dim path() as string
		  dim ids() as string
		  dim ident as string
		  dim parent as string
		  dim name as string
		  dim result as new FolderItem
		  dim queryResult as Recordset
		  
		  queryResult = demoDB.SQLSelect("SELECT parent FROM FOLDERS where id='" + ID + "'")
		  
		  parent = queryResult.Field("parent").getString
		  
		  while parent <> "0"
		    queryResult = demoDB.SQLSelect("SELECT id, parent, name FROM FOLDERS where id='" + parent + "'")
		    
		    parent = queryResult.Field("parent").StringValue
		    name = queryResult.Field("name").StringValue
		    ident = queryResult.Field("id").StringValue
		    
		    if parent = "" then
		      Trace("classDemo:getFolderPath: Error looking for parent for item ID " + ID, cstTraceLevelError)
		      exit
		    end if
		    
		    path.Append(name)
		    ids.append(ident)
		  wend
		  
		  result = dataFolder.Child("pool")
		  
		  for i as integer = UBound(path) downto 0
		    result = result.Child(path(i))
		    
		    // Create and mark the folder as created
		    if not result.Exists then
		      result.CreateAsFolder
		    end if
		    
		    checkResourceFolder (ids(i))
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLoaderCode() As string
		  dim result as String
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='loaderCode' LIMIT 1").Field("value").StringValue
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getNewDataFolderName() As string
		  // Explore
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetNextBarStartTime(t as double, layer as integer) As double
		  dim result as RecordSet
		  dim time as double
		  dim query as string
		  
		  query = "SELECT startTime FROM BARs where layer = " + str(layer) + " AND startTime > " + str(t) + " ORDER BY startTime ASC LIMIT 1"
		  
		  // trace(query, cstTraceLevelDebug)
		  
		  result = demoDB.SQLSelect(query)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return -1
		  end if
		  
		  if result.EOF = true then
		    // No results were obtained
		    return -1
		    
		  end if
		  
		  time = result.Field("startTime").DoubleValue
		  
		  return time
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetProjectFolder() As FolderItem
		  return projectFolder
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSelectedBarIDs() As String()
		  dim selectedBarIDs() as String
		  dim result as RecordSet
		  
		  result = demoDB.SQLSelect("SELECT id FROM BARs where selected = 1")
		  
		  while not result.EOF
		    selectedBarIDs.Append(result.Field("id").StringValue)
		    result.MoveNext
		  wend
		  
		  return selectedBarIDs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSelectedBarsEndTime() As string
		  dim selectedBarIDs() as Integer
		  dim result as RecordSet
		  
		  result = demoDB.SQLSelect("SELECT MAX(endTime) AS maxEndTime FROM BARs where selected = 1")
		  
		  return result.Field("maxEndTime").StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSelectedBarsStartTime() As string
		  dim selectedBarIDs() as Integer
		  dim result as RecordSet
		  
		  result = demoDB.SQLSelect("SELECT MIN(startTime) AS minStartTime FROM BARs where selected = 1")
		  
		  return result.Field("minStartTime").StringValue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTemporalDBFolderItem() As FolderItem
		  if demoDB <> nil then
		    return demoDB.DatabaseFile
		  else
		    return nil
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getUniqueName(proposedName as string, parentID as String) As string
		  dim counter as integer
		  dim currentName as string
		  
		  currentName = proposedName
		  
		  // Check if the proposed name exists. If it exists, iterate creating different names
		  // in order to get a name that does not exist within the designated parent folder
		  while nameConflict(currentName, parentID)
		    counter = counter + 1
		    currentName = proposedName + " " + str(counter)
		  wend
		  
		  return currentName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getVideoFullScreen() As boolean
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='fullScreen' LIMIT 1").Field("value").StringValue
		  
		  if result = "1" then
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVideoScreenHeight() As integer
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='screenHeight' LIMIT 1").Field("value").StringValue
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVideoScreenWidth() As integer
		  dim result as string
		  
		  result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='screenWidth' LIMIT 1").Field("value").StringValue
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetVideoVerticalSync() As integer
		  dim result as string
		  
		  select case engine
		    
		  case dragon
		    result = "0"
		    
		  case phoenix
		    result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='vsync' LIMIT 1").Field("value").StringValue
		    
		  end
		  
		  return val(result)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function init(optional demoFile as folderitem) As Boolean
		  ' Create the demo database in the temporary folder
		  Dim f as FolderItem = GetTemporaryFolderItem()
		  
		  demoDB = New SQLiteDatabase
		  demoDB.databaseFile = f
		  
		  ' There is an existing demofile so copy it to the temp folder
		  me.projectFolder = demoFile
		  CopyFileOrFolder(demoFile, f)
		  
		  if not demoDB.Connect then
		    Notify("Could not connect to the database", f.ShellPath)
		    return false
		  end if
		  
		  engine = me.getEngineType
		  
		  ' Connect to the database
		  If not demoDB.Connect() then
		    MsgBox "Could not connect to the project database."
		    return false
		  end if
		  
		  ' Check the version of the file and update it if needed
		  if not checkVersion then
		    return false
		  end if
		  
		  ' The engine localization
		  me.SetEnginesFolder GetFolderItem("Engines")
		  
		  ' Set the data folder
		  select case engine
		    
		  case dragon
		    me.SetDataFolder(GetFolderItem("Engines").child("Dragon").child("data_" + controller.getHash))
		    
		  case phoenix
		    me.SetDataFolder(GetFolderItem("Engines").child("Phoenix").child("data_" + controller.getHash))
		    
		  end
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub initDefaultFBOs()
		  select case me.engine
		    
		  case me.phoenix
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 2, "Bilinear")
		    
		    Call addFBO(0, 0, 1, "RGBA_16F", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA_16F", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA_16F", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA_16F", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    
		    Call addFBO(512, 512, 0, "RGB", 1, "Bilinear")
		    Call addFBO(256, 256, 0, "RGB", 1, "Bilinear")
		    Call addFBO(128, 128, 0, "RGB", 1, "Bilinear")
		    Call addFBO( 64,  64, 0, "RGB", 1, "Bilinear")
		    Call addFBO( 32,  32, 0, "RGB", 1, "Bilinear")
		    
		  else
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 2, "Bilinear")
		    
		    Call addFBO(0, 0, 1, "RGBA16F", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA16F", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA16F", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA16F", 2, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGBA", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    Call addFBO(0, 0, 1, "RGB", 1, "Bilinear")
		    
		    Call addFBO(512, 512, 0, "RGB", 1, "Bilinear")
		    Call addFBO(256, 256, 0, "RGB", 1, "Bilinear")
		    Call addFBO(128, 128, 0, "RGB", 1, "Bilinear")
		    Call addFBO( 64,  64, 0, "RGB", 1, "Bilinear")
		    Call addFBO( 32,  32, 0, "RGB", 1, "Bilinear")
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub initDemoDB(type as string)
		  // Creates the structure for a project
		  demoDB.SQLExecute ("CREATE TABLE VARIABLES (variable TEXT PRIMARY KEY, value TEXT);")
		  
		  // Database version
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('DBversion','2')")
		  
		  // Demo type
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('type','" + type + "')")
		  
		  // Insert the default values for a project
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('startTime','0')")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('time'     ,'0')")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('endTime'  ,'30')")
		  
		  // Video defaults initialization
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('fullScreen'  ,'0')")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('screenWidth' ,'640')")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('screenHeight','400')")
		  
		  // Default demo Settings
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('demoName','Untitled')")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('demoLoop','" + str(cstLatestDBVersion) + "')")
		  
		  // Default loader configuration
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarCoordx0','0.4' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarCoordy0','0.3' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarCoordx1','0.6' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarCoordy1','0.35')")
		  
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarBorderCoordx0','0.4' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarBorderCoordy0','0.3' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarBorderCoordx1','0.6' )")
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderBarBorderCoordy1','0.35')")
		  
		  demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('engine','" + type + "')")
		  
		  // Default FBOs
		  demoDB.SQLExecute ("CREATE TABLE FBOs (id INTEGER PRIMARY KEY, ratio INTEGER, width INTEGER, height INTEGER, format TEXT, colorAttachments INTEGER, filter TEXT default 'Bilinear');")
		  
		  initDefaultFBOs
		  initLoaderCode
		  
		  // Creates the structure for bars
		  demoDB.SQLExecute ("CREATE TABLE BARS (id INTEGER PRIMARY KEY, type TEXT, layer INTEGER, startTime DECIMAL(12,3), endTime DECIMAL(12,3), enabled BOOLEAN, selected BOOLEAN, script TEXT, srcBlending VARCHAR(50), dstBlending VARCHAR(50), blendingEQ VARCHAR(50), srcAlpha VARCHAR(50), dstAlpha VARCHAR(50));")
		  
		  // Creates the structure for the files
		  ExecuteSQL("CREATE TABLE FILES (id INTEGER PRIMARY KEY, name TEXT, parent INTEGER, bytes INTEGER, type TEXT, data BLOB, format TEXT, enabled BOOLEAN);")
		  ExecuteSQL("CREATE TABLE FOLDERS (id INTEGER PRIMARY KEY, name TEXT, parent INTEGER, enabled BOOLEAN);")
		  
		  // Creates the structure for the sections
		  ExecuteSQL(cstQueryNewTableSections)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  // Open the database window if in debug mode
		  if DebugBuild then
		    wndDBShow.init demoDB
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub initLoaderCode()
		  select case me.engine
		    
		  case me.phoenix
		    demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderCode',cstLoaderPhoenix)")
		    
		  else
		    demoDB.sqlexecute ("INSERT into VARIABLES (variable,value) Values ('loaderCode',cstLoaderDragon)")
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub moveFile(fileID as string, parentFolderID as string)
		  // Save a reference to the file
		  dim fileData as dictionary = getFile(fileID)
		  
		  if fileData.value("parentID") = parentFolderID then
		    ' We are moving the file to the actual file location no nothing to do
		    return
		  end if
		  
		  dim origFile as folderitem = getFilePath(fileID)
		  
		  if nameConflict(fileData.value("name"), parentFolderID) then
		    Notify("Can't complete move", "There is already a folder or a file with the same name in the destination.")
		    return
		  end if
		  
		  dim query as string = "UPDATE FILES SET parent=" + parentFolderID + " WHERE id=" + fileID
		  
		  demoDB.SQLExecute (query)
		  
		  If demoDB.error then
		    demoDB.Rollback
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		    saved = false
		    
		    // If the moved file is published, do also the change in the filesystem
		    if fileData.value("enabled").BooleanValue then
		      dim destination as FolderItem = getFilePath(fileID)
		      destination = destination.Child(fileData.value("name"))
		      
		      origFile = origFile.child(fileData.value("name"))
		      origFile.MoveFileTo(destination)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub moveFolder(folderID as string, parentFolderID as string)
		  // Save a reference for the current file location
		  dim folderData as Dictionary = getFolder(folderID)
		  dim origFolder as folderitem = getFolderPath(folderID)
		  
		  if nameConflict(getFolderName(folderID), parentFolderID) then
		    Notify("Can't complete move", "There is already a folder or a file with the same name in the destination.")
		    return
		  end if
		  
		  dim query as string = "UPDATE FOLDERS SET parent=" + parentFolderID + " WHERE id=" + folderID
		  
		  demoDB.SQLExecute (query)
		  
		  If demoDB.error then
		    demoDB.Rollback
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		    saved = false
		    
		    // If the moved folder is published, do also the change in the filesystem
		    // Get a reference to the folder
		    if folderData.value("enabled").BooleanValue then
		      dim destination as FolderItem = getFolderPath(parentFolderID)
		      destination = destination.child(getFolderName(parentFolderID)).Child(folderData.value("name"))
		      
		      origFolder = origFolder.child(folderData.value("name"))
		      origFolder.MoveFileTo(destination)
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function moveSelectedBars(timeIncrement as double, layerIncrement as integer) As boolean
		  dim selectedbarIDs() as string
		  dim i as integer
		  dim maxIncrement as double
		  dim result as RecordSet
		  dim barData as Dictionary
		  dim query as string
		  
		  selectedbarIDs = getSelectedBarIDs
		  
		  If UBound(selectedbarIDs) < 0 Then Return False 'No bars to move
		  
		  // First of all, avoid moving the bars before t=0 or in negative layers
		  // We must calculate the maximum negative allowed time and layer increments in order to avoid this
		  // But only if the time or layer increments are negative
		  if timeIncrement < 0 then
		    maxIncrement = demoDB.SQLSelect("SELECT MIN(startTime) AS maxIncrement FROM BARs where selected=1").Field("maxIncrement").DoubleValue
		    
		    if abs(timeIncrement) > maxIncrement then timeIncrement = -maxIncrement
		  End If
		  
		  if layerIncrement < 0 then
		    maxIncrement = demoDB.SQLSelect("SELECT MIN(layer) AS maxIncrement FROM BARs where selected=1").Field("maxIncrement").DoubleValue
		    
		    if abs(layerIncrement) > maxIncrement then layerIncrement = -maxIncrement
		  end if
		  
		  // Now we won't perform the move if we are overlapping bars in the new position
		  // We check the overlapping for each bar
		  query = "SELECT * FROM BARs WHERE selected = 0 AND ("
		  
		  for i=0 to ubound(selectedbarIDs)
		    // Get current bar details
		    barData = getBarData(selectedbarIDs(i))
		    
		    // Ensure that this bar does not overlap other bars
		    query = query + "(layer = " + barData.Value("layer").StringValue + " + " + str(layerIncrement) + " AND id <> " + barData.Value("id").StringValue + " AND ((" + _
		    "startTime < " + str(round(barData.Value("startTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + " AND endTime > " + str(round(barData.Value("startTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + ") OR (" + _
		    "startTime < " + str(round(barData.Value("endTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + " AND endTime > " + str(round(barData.Value("endTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + ") OR (" + _
		    "startTime > " + str(round(barData.Value("startTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + " AND endTime < " + str(round(barData.Value("endTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + ") OR (" + _
		    "startTime < " + str(round(barData.Value("startTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + " AND endTime > " + str(round(barData.Value("endTime").DoubleValue * 1000) / 1000) + " + " + str(timeIncrement) + ")))"
		    
		    if i<>UBound(selectedbarIDs) then
		      query = query + " OR "
		    else
		      query = query + ")"
		    end if
		  next
		  
		  result = demoDB.SQLSelect(query)
		  
		  Trace(query, cstTraceLevelDebug)
		  
		  // If a overlapping bar is found, abort the move routine
		  if result.RecordCount > 0 then return false
		  
		  for i=0 to UBound(selectedbarIDs)
		    ExecuteSQL("UPDATE BARs SET startTime = startTime + " + str(timeIncrement) + _
		    ", endTime = endTime + " + str(timeIncrement) + _
		    ", layer = layer + " + str(layerIncrement) + " WHERE id = '" + selectedBarIDs(i) + "'")
		  next
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		    return false
		  else
		    demoDB.Commit
		    return true
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function nameConflict(name as string, parentFolderID as string) As boolean
		  dim result1 as integer
		  dim result2 as integer
		  
		  // First of all, get an unique name for the folder
		  result1 = demoDB.SQLSelect("SELECT COUNT(*) AS TOTAL FROM FOLDERS WHERE name = '" + name + "' AND parent = '" + parentFolderID + "' LIMIT 1").Field("TOTAL").IntegerValue
		  result2 = demoDB.SQLSelect("SELECT COUNT(*) AS TOTAL FROM FILES   WHERE name = '" + name + "' AND parent = '" + parentFolderID + "' LIMIT 1").Field("TOTAL").IntegerValue
		  
		  if result1 > 0 or result2 > 0 then
		    // A folder or a resource with the same name was found in this location
		    return true
		  end if
		  
		  // No folder or resource with the same name as the one indicated was found in this location
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub openDatabaseInspector()
		  dim myWindow as new wndDBShow
		  
		  myWindow.init demoDB
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub optimize()
		  ExecuteSQL("VACUUM")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub removeBarFromSelection(barID as string)
		  ExecuteSQL("UPDATE BARs SET selected = 0 WHERE id = '" + barID + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub renameResourceFolder(newName as string, id as string)
		  ExecuteSQL("UPDATE FOLDERS SET name = '" + newName + "' WHERE id = " + id)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub renameResourceItem(newName as string, id as string)
		  ExecuteSQL("UPDATE FILES SET name = '" + newName + "' WHERE id = " + id)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function saveFolder(ID as string, destination as FolderItem, optional includeContents as boolean) As folderitem
		  dim resource as dictionary
		  dim names as RecordSet
		  dim folderName as string
		  
		  // First of all, create the folder
		  folderName = demoDB.SQLSelect("SELECT name FROM FOLDERS where id='" + ID + "'").Field("name").StringValue
		  
		  if not destination.Child(folderName).Exists then
		    destination.child(foldername).CreateAsFolder
		  end if
		  
		  if includeContents then
		    destination = destination.child(foldername)
		    
		    // Retrieve a list of folders that are inmediate childs of the chosen folder
		    names = demoDB.SQLSelect("SELECT name, id FROM FOLDERS where parent='" + ID + "'")
		    
		    if names <> nil then
		      dim savedFolder as folderitem
		      
		      // Recursively repeat the process for each folder
		      do until names.EOF
		        // if not destination.Child(names.Field("id")).Exists then destination.Child(names.Field("name")).CreateAsFolder
		        
		        savedFolder = saveFolder(names.Field("id"), destination)
		        
		        if not savedFolder.Exists then return nil
		        
		        names.MoveNext
		      loop
		    end if
		    
		    // Retrieve a list of files to save. The files are the inmediate childs of the chosen folder.
		    names = demoDB.SQLSelect("SELECT name, id FROM FILES where parent='" + ID + "'")
		    
		    if names <> nil then
		      dim savedFile as folderitem
		      
		      // Then, copy the files inside the destination folder
		      do until names.EOF
		        savedFile = saveResource(names.Field("id"), destination)
		        
		        if not savedFile.Exists then return nil
		        
		        names.MoveNext
		      loop
		    end if
		  end if
		  
		  return destination
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveProject(saveAs as boolean)
		  if projectFolder = nil or saveAs then
		    // The demo has not been saved before, so ask for a location
		    projectFolder = GetSaveFolderItem(FileTypes.DungeonProject, "Untitled Project.spz")
		    
		    if projectFolder = nil then
		      Trace("classDemo:saveProject: The user canceled the selection of the destination place for the project", cstTraceLevelLog)
		      Return
		    end if
		  end if
		  
		  // Recover empty space from thew Database
		  me.optimize
		  
		  dim newProjectFolder as new FolderItem(projectFolder)
		  
		  projectFolder.MoveFileTo SpecialFolder.Trash
		  
		  projectFolder = newProjectFolder
		  
		  // Save the project
		  CopyFileOrFolder(demoDB.DatabaseFile, projectFolder)
		  
		  // Mark the project as saved
		  saved = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function saveResource(ID as string, destination as FolderItem) As folderitem
		  dim resource as dictionary
		  resource = getFile(ID)
		  
		  if resource = nil then
		    Trace("classDemo:saveResource: The resource ID " + ID + " was not found", cstTraceLevelError)
		    return nil
		  end if
		  
		  if destination = nil then
		    Trace("classDemo:saveResource: Null destination specified", cstTraceLevelError)
		    return nil
		  end if
		  
		  if not destination.Exists then destination.CreateAsFolder
		  
		  destination = destination.Child(resource.value("name"))
		  
		  if destination.Exists then
		    trace("classDemo:saveResource: the file """ + destination.ShellPath + """ already exists. The file has been deleted.", cstTraceLevelLog)
		    destination.Delete
		  end if
		  
		  // Write the file to disk
		  dim WriteToFile as BinaryStream
		  
		  if destination <> Nil Then
		    WriteToFile = BinaryStream.Create(destination, False)
		    WriteToFile.Write resource.Value("data")
		    WriteToFile.close
		    
		    trace("classDemo:saveResource: the file """ + destination.ShellPath + """ has been written to the disk.", cstTraceLevelLog)
		    return destination
		    
		  else
		    trace("classDemo:saveResource: the file """ + destination.ShellPath + """ could not be written to the disk.", cstTraceLevelLog)
		    return nil
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBarEndTime(barID as integer, endTime as single)
		  ExecuteSQL("UPDATE BARs SET endTime = '" + str(round(endTime * 1000)/1000)  + "' WHERE id = '" + str(barID) + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBarLayer(barID as integer, layer as integer)
		  ExecuteSQL("UPDATE BARs SET layer = '" + str(layer) + "' WHERE id = '" + str(barID) + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBarScript(barID as string, script as string)
		  Dim ps As SQLitePreparedStatement = _
		  demoDB.Prepare("UPDATE BARs SET script = ? WHERE id = ?")
		  
		  ps.BindType(0, SQLitePreparedStatement.SQLITE_BLOB)
		  ps.BindType(1, SQLitePreparedStatement.SQLITE_TEXT)
		  
		  ps.SQLExecute(script, barID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBarStartTime(barID as integer, startTime as single)
		  ExecuteSQL("UPDATE BARs SET startTime = '" + str(round(startTime * 1000)/1000) + "' WHERE id = '" + str(barID) + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBarType(barID as string, type as string)
		  ExecuteSQL("UPDATE BARs SET type = '" + type + "' WHERE id = '" + barID + "'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBlendingDestination(barID as string, newDestinationBlending as integer)
		  dim blendingMode as string = getBlendingMode(newDestinationBlending)
		  
		  ExecuteSQL("UPDATE BARS SET dstBlending='" + blendingMode  + "' WHERE id=" + barID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBlendingEquation(barID as string, newBlendingEquation as integer)
		  dim blendingEquation as string = getBlendingEquation(newBlendingEquation)
		  
		  ExecuteSQL("UPDATE BARS SET blendingEQ='" + blendingEquation + "' WHERE id=" + barID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBlendingSource(barID as string, newSourceBlending as integer)
		  dim blendingMode as string = getBlendingMode(newSourceBlending)
		  
		  ExecuteSQL("UPDATE BARS SET srcBlending='" + blendingMode + "' WHERE id=" + barID)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDatabaseVersion(version as integer)
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + str(version) + "' WHERE variable = 'DBversion'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDataFolder(folder as FolderItem)
		  if folder = nil then
		    Notify("Fatal error", "The data folder could not be set")
		    
		    return
		  end if
		  
		  if not Folder.Exists then folder.CreateAsFolder
		  
		  // Create a pool folder
		  if not Folder.Child("pool").Exists then Folder.Child("pool").CreateAsFolder
		  
		  dataFolder = folder
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDemoEndTime(newEndTime as single)
		  if newEndTime = getDemoEndTime then return
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + str(newEndTime) + "' WHERE variable = 'endTime'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  DemoEndTimeSet(newEndTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDemoLoopMode(demoLoop as boolean)
		  dim myParameter as string
		  
		  myParameter = "0"
		  if demoLoop then myParameter = "1"
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + myParameter + "' WHERE variable = 'demoLoop'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDemoName(newName as string)
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + newName + "' WHERE variable = 'demoName'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDemoStartTime(newStartTime as single)
		  if newStartTime = getDemoStartTime then return
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + str(newStartTime) + "' WHERE variable = 'startTime'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		  demoStartTimeSet(newStartTime)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setDemoTime(theTime as single)
		  dim myTime as string
		  
		  myTime = str(theTime)
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + myTime + "' WHERE variable = 'time'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetEnginesFolder(folder as folderitem)
		  if folder = nil then
		    folder.CreateAsFolder
		  elseif not folder.Exists then
		    folder.CreateAsFolder
		  end if
		  
		  if not folder.Child("Dragon").Exists then
		    folder.child("Dragon").CreateAsFolder
		  end if
		  
		  enginesFolder = folder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLoaderCode(code as string)
		  ExecuteSQL("INSERT OR REPLACE INTO VARIABLES (variable, value) VALUES ('loaderCode', '" + code + "');")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProjectFolder(folder as FolderItem)
		  projectFolder = folder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSelectedBarsEndTime(endTime as single)
		  ExecuteSQL("UPDATE BARs SET endTime = '" + str(endTime) + "' WHERE selected = 1 AND startTime < " + str(endTime))
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setSelectedBarsStartTime(endTime as single)
		  ExecuteSQL("UPDATE BARs SET startTime = '" + str(endTime) + "' WHERE selected = 1 AND endTime > " + str(endTime))
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setVideoFullScreen(fullScreenMode as boolean)
		  dim myParameter as string
		  
		  myParameter = "0"
		  if fullScreenMode then myParameter = "1"
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + myParameter + "' WHERE variable = 'fullScreen'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetVideoScreenHeight(height as integer)
		  dim myParameter as string
		  
		  myParameter = str(height)
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + myParameter + "' WHERE variable = 'screenHeight'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetVideoScreenWidth(width as integer)
		  dim myParameter as string
		  
		  myParameter = str(width)
		  
		  ExecuteSQL("UPDATE VARIABLES SET value = '" + myParameter + "' WHERE variable = 'screenWidth'")
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setVideoVerticalSync(vsync as integer)
		  dim result as string
		  
		  // Check if vsync exists in the list of variables
		  select case engine
		    
		  case dragon
		    return
		    
		  case phoenix
		    result = demoDB.SQLSelect("SELECT * FROM VARIABLES where variable='vsync' LIMIT 1").Field("value").StringValue
		    
		  end
		  
		  if result = "" then
		    // vsync does not exist so create it
		    ExecuteSQL("INSERT INTO VARIABLES (variable, value) Values (""vsync"", """ + str(vsync) + """)")
		    
		  else
		    // vsync exists so update it
		    ExecuteSQL("UPDATE VARIABLES SET value = '" + str(vsync) + "' WHERE variable = 'vsync'")
		    
		  end if
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub toggleBar(barID as string)
		  dim enabled as boolean
		  
		  enabled = demoDB.SQLSelect("SELECT enabled FROM BARs where ID = " + barID).Field("enabled").BooleanValue
		  
		  if enabled then
		    ExecuteSQL("UPDATE BARs SET enabled = 0 WHERE id = " + barID)
		    
		  else
		    ExecuteSQL("UPDATE BARs SET enabled = 1 WHERE id = " + barID)
		    
		  end if
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unCheckResource(id as string)
		  ExecuteSQL("UPDATE FILES SET enabled = 0 WHERE id = " + id)
		  
		  If demoDB.error then
		    MsgBox demoDB.errormessage
		  else
		    demoDB.Commit
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub unCheckResourceFolder(id as string)
		  dim i as integer
		  dim folderIDs as RecordSet
		  
		  // Unpublish the folder
		  ExecuteSQL("UPDATE FOLDERS SET enabled = 0 WHERE id = " + id)
		  
		  If demoDB.error then MsgBox demoDB.errormessage
		  
		  // Unpublich the folder contents
		  ExecuteSQL("UPDATE FILES SET enabled = 0  WHERE parent = " + id)
		  
		  If demoDB.error then MsgBox demoDB.errormessage
		  
		  // Unpublish the rest of the contents, recursively, if any
		  folderIDs = demoDB.SQLSelect("SELECT id FROM FOLDERS where parent=" + id)
		  
		  while not folderIDs.EOF
		    unCheckResourceFolder(folderIDs.Field("id").StringValue)
		    
		    folderIDs.MoveNext
		  wend
		  
		  If demoDB.error then MsgBox demoDB.errormessage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateResourceFromFolderItem(f as FolderItem, itemID as string)
		  Dim b As BinaryStream
		  Dim data as string
		  dim fileSize as Uint64
		  
		  If f = Nil then return
		  if f.Directory then return
		  if not f.Exists then
		    Notify ("The engine could not be updated", "The file " + f.ShellPath + " could not be found on disk")
		    return
		  end if
		  
		  // Read the file
		  b = BinaryStream.Open(f,False)
		  data = b.Read(b.Length)
		  b.Close
		  
		  fileSize = Len(data)
		  
		  // Update the file in the database
		  Dim ps As SQLitePreparedStatement = demoDB.Prepare("UPDATE FILES SET data=?, bytes=? where id=?")
		  
		  ps.BindType(0, SQLitePreparedStatement.SQLITE_BLOB  )
		  ps.BindType(1, SQLitePreparedStatement.SQLITE_TEXT)
		  ps.BindType(2, SQLitePreparedStatement.SQLITE_TEXT)
		  
		  ps.SQLExecute(data, str(filesize), itemID)
		  
		  If demoDB.error then
		    demoDB.Rollback
		    MsgBox demoDB.errormessage
		    
		  else
		    demoDB.Commit
		    
		    // Mark the project as not saved
		    saved = false
		  end if
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event demoEndTimeSet(newEndTime as single)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event demoStartTimeSet(newStartTime as single)
	#tag EndHook


	#tag Property, Flags = &h21
		Private dataFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private demoDB As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		engine As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected enginesFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		projectFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		saved As Boolean = true
	#tag EndProperty


	#tag Constant, Name = cstLatestDBVersion, Type = Double, Dynamic = False, Default = \"3", Scope = Private
	#tag EndConstant

	#tag Constant, Name = cstLoaderDragon, Type = String, Dynamic = False, Default = \"string data/pool/loadingfront.jpg\r\nstring data/pool/loadingback.jpg\r\nfProgressBarColor 0.2 0.2 0.498 0\r\nfProgressBarPosition 0.42 0.29 0.61 0.42 \r\nfProgressBarBorderColor 0 0 0 0\r\nfProgressBarBorderPosition 0.25 0.10 0.75 0.12\r\nfBorderWidth 0.002", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstLoaderPhoenix, Type = String, Dynamic = False, Default = \"id loader\r\nstring /resources/loading/loadingback.jpg\r\nstring /resources/loading/loadingfront.jpg\r\nstring /resources/loading/loadingbar.jpg\r\n;Postion goes from -1.0 to 1.0\r\nfBarStartPositionX -0.60042\r\nfBarStartPositionY -0.11111\r\nfBarEndPositionX 0.60042\r\nfBarEndPositionY -0.11111\r\nfBarSWidth 0.07", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstQueryNewTableSections, Type = String, Dynamic = False, Default = \"CREATE TABLE SECTIONs (id INTEGER PRIMARY KEY\x2C name TEXT\x2C startTime DECIMAL(12\x2C3)\x2C endTime DECIMAL(12\x2C3)\x2C selected BOOLEAN);", Scope = Private
	#tag EndConstant

	#tag Constant, Name = dragon, Type = String, Dynamic = False, Default = \"dragon", Scope = Public
	#tag EndConstant

	#tag Constant, Name = phoenix, Type = String, Dynamic = False, Default = \"phoenix", Scope = Public
	#tag EndConstant


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
			Name="saved"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
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
		#tag ViewProperty
			Name="engine"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
