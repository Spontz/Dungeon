#tag Module
Protected Module Strings
	#tag Method, Flags = &h0
		Function alphabeticallyAfterInOrder(string1 as String, string2 as String) As Boolean
		  Dim arr_ids(1) as Integer
		  Dim arr_str(1) as String
		  
		  // build arrays
		  arr_ids(0) = 1
		  arr_str(0) = string1
		  
		  arr_ids(1) = 2
		  arr_str(1) = string2
		  
		  // sort and return result...
		  arr_str.SortWith(arr_ids)
		  
		  if arr_ids(0) > arr_ids(1) then
		    return true
		  else
		    return false
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function charCodeAt(theString as string, thePosition as integer) As integer
		  dim stringToConvert as string = theString
		  dim positionX as integer
		  dim unicode as integer = 0
		  dim letter as string
		  
		  for i as integer = 0 To stringToConvert.Len
		    letter = Mid(stringToConvert,i,1)
		    if i = positionX then
		      unicode = ASC(letter)
		    end if
		  next
		  
		  return unicode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function completeString(theString as string, chunkSize as integer, trailing as string) As String
		  // This function ensures that the returned string has a size multiple of chunkSize
		  // adding as much trailing characters as needed
		  dim result as String
		  dim total as single
		  result = theString
		  
		  total = chunkSize - len(theString) mod chunkSize
		  
		  for i as integer = 1 to total
		    result = result + trailing
		  next
		  
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function encodeBase32(stringToEncode as string) As string
		  
		  dim i, index as integer
		  dim words as integer
		  dim base32chars as string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"
		  dim result as string
		  
		  index = 0
		  i = 1
		  while i <= len(stringToEncode)
		    if index > 3 then
		      words = bitwiseAnd(asc(mid(stringToEncode, i, 1)), bitwise.ShiftRight(&hFF, index))
		      index = (index+ 5) mod 8
		      words = bitwise.ShiftLeft(words, index)
		      if i < len(stringToEncode) then
		        words = bitwise.BitOr(words, bitwise.ShiftRight(asc(mid(stringToEncode, i+1, 1)), 8-index))
		      end
		      i = i + 1
		    else
		      words = bitwise.BitAnd(bitwise.ShiftRight(asc(mid(stringToEncode, i)), 8-(index+5)), &h1F)
		      index = (index+5) mod 8
		      if index = 0 then i = i + 1
		    end
		    result = result + mid(base32chars, words+1, 1)
		  wend
		  
		  return result
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function extension(fullname as string) As string
		  // This method returns the extension of a dile name
		  dim elements() as string = Split(fullName, ".")
		  
		  // Remove the source extension from the source file and return the short name
		  Return elements(ubound(elements))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getHRsize(bytes as integer) As String
		  // This function returns an human-readable string depicting the amount of passed bytes with the closest units
		  dim GB as string
		  dim MB as string
		  dim KB as string
		  dim B as string
		  
		  GB = cstr(round(bytes / 1000000000))
		  MB = cstr(round(bytes / 1000000))
		  KB = cstr(round(bytes / 1000))
		  B = cstr(bytes)
		  
		  if GB <> "0" then
		    return GB + " GB"
		  elseif MB <> "0" then
		    return MB + " MB"
		  elseif KB <> "0" then
		    return KB + " KB"
		  end if
		  
		  return B + " bytes"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPicture(theImage as String, width as integer = 0, height as integer = 0) As Picture
		  // Convert an hexadecimal string to a picture
		  // Dim file as FolderItem
		  // Dim bs as BinaryStream
		  Dim Pic as Picture
		  
		  if theImage = "" then return nil
		  
		  Pic = Picture.FromData(DecodeHex(theImage))
		  
		  if pic <> nil then
		    
		    if width > 0 and height > 0 then
		      // Resize the image
		      dim resizedPic as picture
		      resizedPic = new Picture(width, height, 32)
		      resizedPic.Graphics.DrawPicture(Pic, 0, 0, width, height, 0, 0, Pic.width, Pic.height)
		      Pic = resizedPic
		    end if
		    
		    return Pic
		  end if
		  // end if
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPictureFolderItem(theImage as String) As FolderItem
		  // Convert an hexadecimal string to a picture
		  Dim file as FolderItem
		  Dim bs as BinaryStream
		  
		  if theImage = "" then return nil
		  
		  // create a temporary file to store image
		  file = SpecialFolder.Temporary.Child("toSaveTempPicture.jpg")
		  
		  if file <> nil then
		    bs = BinaryStream.Create(file, true)
		    bs.Write(DecodeHex(theImage))
		    bs.Close()
		    return file
		    
		  else
		    return nil
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function insertField(targetString as String, value as String, index as Integer=-1, separator as String = ",") As String
		  // this function inserts a value into a comma-separated string (also you can choose another separator) and return the new string
		  Dim values() as String
		  
		  // split string
		  values = Split(targetString, separator)
		  
		  //insert in last position by default
		  if index = -1 then index = ubound(values)+1
		  
		  // insert into array
		  values.Insert(index, value)
		  
		  return Join(values, separator)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isEmail(theText as string) As boolean
		  // eMail must contain a single "@" symbol
		  if CountFields(theText, "@") <> 2 then return false
		  
		  // eMail must contain at least a "." after the "@" symbol
		  if instr(0, NthField(theText, "@", 2), ".") = 0 then return false
		  
		  // eMail can't end with a "."
		  if right(theText, 1) = "." then return false
		  
		  // All the ASCII characters must be between 33 and 126, included
		  dim i as integer
		  
		  for i=1 to len(theText)
		    if Asc(mid(theText, i, 1)) > 126 then return false
		    if Asc(mid(theText, i, 1)) < 33 then return false
		  next
		  
		  // More conditions to be inserted here
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeValidUTF8(src As String, convertLongNULL As Boolean = False) As String
		  // Turn the given string into valid UTF-8.
		  // Filters out invalid characters, so it might return an empty string.
		  // If convertLongNULL is true, then it will look for the "modified UTF-8" convention
		  // of using &b11000000 10000000 to store a null and convert that to an ordinary
		  // null (&h00).
		  
		  if src = "" then return src
		  
		  // If the string has an encoding, and is valid in its own encoding, then convert it to UTF-8.
		  // My thinking here is that, if it's not valid in its defined encoding, that encoding is wrong and 
		  // it should be treated the same as if the encoding were nil.
		  if src.Encoding <> nil and src.Encoding <> Encodings.UTF8 and src.Encoding.IsValidData( src ) then
		    src = src.ConvertEncoding( Encodings.UTF8 )
		    return src // We assume Xojo did the conversion correctly 
		  end if
		  
		  // If we get here, we have to start checking the bytes of the string
		  if Encodings.UTF8.IsValidData( src ) then
		    return src.DefineEncoding( Encodings.UTF8 )
		  end if
		  
		  // If we get here, we have a non-empty string that is not valid UTF-8.
		  // We have to remove the invalid bytes.
		  
		  dim mb as MemoryBlock = src
		  dim p as Ptr = mb
		  dim lastIndex as integer = mb.Size - 1
		  dim writeIndex as integer
		  dim readIndex as integer
		  while readIndex <= lastIndex
		    
		    dim thisByte as integer = p.Byte( readIndex )
		    if thisByte <= &b01111111 then
		      p.Byte( writeIndex ) = thisByte
		      readIndex = readIndex + 1
		      writeIndex = writeIndex + 1
		      
		    else // It's a leading byte so figure out how many valid bytes should be in the group and check them
		      dim byteCount as integer
		      if thisByte >= &b11111110 then // Invalid byte
		        // Do nothing
		      elseif thisByte >= &b11111100 then
		        byteCount = 6
		      elseif thisByte >= &b11111000 then
		        byteCount = 5
		      elseif thisByte >= &b11110000 then
		        byteCount = 4
		      elseif thisByte >= &b11100000 then
		        byteCount = 3
		      elseif thisByte >= &b11000000 then
		        byteCount = 2
		      end if
		      
		      if byteCount = 0 then // Invalid byte so skip it 
		        readIndex = readIndex + 1
		        
		        // Make sure we have enough bytes to make a complete character. If not, filter this out.
		      elseif ( readIndex + byteCount - 1 ) > lastIndex then
		        readIndex = readIndex + 1
		        
		      elseif convertLongNULL and byteCount = 2 and thisByte = &b11000000 and p.Byte( readIndex + 1 ) = &b10000000 then // It's a long null
		        p.Byte( writeIndex ) = 0
		        readIndex = readIndex + byteCount
		        writeIndex = writeIndex + 1
		        
		      else
		        
		        // See if the sequence headed by this leading byte is valid.
		        // If so, we will accept the entire sequence.
		        dim chunk as string = mb.StringValue( readIndex, byteCount )
		        if Encodings.UTF8.IsValidData( chunk ) then
		          mb.StringValue( writeIndex, byteCount ) = chunk
		          readIndex = readIndex + byteCount
		          writeIndex = writeIndex + byteCount
		        else // This can't be a leading byte so let's discard it
		          readIndex = readIndex + 1
		        end if
		        
		      end if // byteCount = 0
		      
		    end if // thisByte <= &b01111111
		    
		  wend // readIndex <= lastIndex
		  
		  dim r as string
		  if writeIndex <> 0 then
		    r = mb.StringValue( 0, writeIndex )
		    r = r.DefineEncoding( Encodings.UTF8 )
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function removeField(targetString as String, value as String, separator as String = ",") As String
		  // this function remove a value from a comma-separated string (also you can choose another separator) and return the new string
		  Dim values() as String
		  Dim index as Integer
		  
		  // split string
		  values = Split(targetString, separator)
		  
		  // remove from array if occurs
		  index = values.IndexOf(value)
		  
		  if index > -1 then
		    values.Remove(index)
		  end if
		  
		  return Join(values, separator)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReverseNthField(theString as string, theSeparator as string, thePosition as integer) As string
		  // This function is like the NthField but counting from the right of the string instead of from the left
		  dim itemsCount as integer
		  itemsCount = CountFields(theString, theSeparator)
		  
		  return NthField(theString, theSeparator, itemsCount - thePosition + 1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RSCstr(value as Double) As String
		  dim aux as String
		  aux = Format(value,"-#.00")
		  aux = ReplaceAll(aux,",",".")
		  
		  //Comprobamos si el número es entero. Si es así, eliminamos los 0 del final
		  dim aux2() as String
		  aux2 = split(aux,".")
		  
		  if aux2(1)="00" then aux = aux2(0)
		  
		  return aux
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function shortName(fullname as string) As string
		  // This method returns extensionless file names
		  dim elements() as string = Split(fullName, ".")
		  
		  if ubound(elements) = 0 then return fullname
		  
		  // Remove the source extension from the source file and return the short name
		  elements.Remove(elements.Ubound)
		  
		  Return join (elements, ".")
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private DecimalSeparator As double = 0.1
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
