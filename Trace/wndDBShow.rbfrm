#tag Window
Begin Window wndDBShow
   BackColor       =   15987699
   Backdrop        =   ""
   BalloonHelp     =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   True
   Height          =   441
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Local Database Explorer"
   Visible         =   True
   Width           =   672
   Begin ListBox lbxQueryResults
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   True
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   2
      GridLinesVertical=   2
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   345
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Query Results"
      Italic          =   ""
      Left            =   138
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   True
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   10
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   534
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin TextArea txtQuery
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   88
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   138
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Insert your query here"
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   353
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   534
   End
   Begin ListBox lbxDBtables
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   ""
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   ""
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   ""
      EnableDragReorder=   ""
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   441
      HelpTag         =   ""
      Hierarchical    =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Local Tables"
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      RequiresSelection=   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      UseFocusRing    =   False
      Visible         =   True
      Width           =   132
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub executeSQLquery()
		  dim aux(-1) as Dictionary
		  dim i,j as integer
		  
		  lbxQueryResults.DeleteAllRows
		  
		  if txtQuery.Text<>"" then
		    aux=generateSQLquery(txtQuery.Text)
		  end if
		  
		  if UBound(aux)>-1 then
		    lbxQueryResults.ColumnCount=aux(0).Count
		    
		    for i=0 to aux(0).Count-1
		      lbxQueryResults.Heading(i) = aux(0).Key(i)
		    next
		    
		    for i=0 to UBound(aux)
		      lbxQueryResults.AddRow ""
		      for j=0 to aux(0).Count-1
		        lbxQueryResults.Cell(lbxQueryResults.LastIndex,j)=aux(i).Value(aux(i).Key(j))
		      next
		    next
		    
		  else
		    lbxQueryResults.ColumnCount=1
		    lbxQueryResults.AddRow "No hay registros que mostrar"
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function generateSQLquery(query as string) As dictionary()
		  dim recordSetAux as RecordSet
		  dim i as integer
		  dim nombreKeys() as Variant
		  dim valor as String
		  
		  dim dictRecordSet(-1) as Dictionary
		  
		  recordSetAux=theDB.SQLSelect(query)
		  if recordSetAux<>nil then
		    for i=1 to recordSetAux.FieldCount
		      nombreKeys.Append(recordSetAux.IdxField(i).Name)
		    next
		    
		    while not recordSetAux.EOF
		      Dim d as New Dictionary
		      for i = 0 to UBound(nombreKeys)
		        valor = recordSetAux.IdxField(i+1).Value
		        d.Value(nombreKeys(i))=valor
		      next
		      dictRecordSet.Append(d)
		      recordSetAux.MoveNext
		    Wend
		    
		    Return dictRecordSet
		  else
		    if theDB.ErrorCode=0 then //No se produce error
		      Return dictRecordSet
		    else
		      dim dicAux as new Dictionary
		      dicAux.value("ErrorCode")=theDB.ErrorCode
		      dicAux.value("ErrorDescription")=theDB.ErrorMessage
		      dictRecordSet.Append(dicAux)
		      Return dictRecordSet
		    end if
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub init(theDatabase as REALSQLDatabase)
		  dim result as recordset
		  
		  theDB = theDatabase
		  result = theDB.TableSchema
		  
		  while not result.EOF
		    lbxDBtables.AddRow result.IdxField(1).StringValue
		    result.MoveNext
		  wend
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private theDB As REALSQLDatabase
	#tag EndProperty


#tag EndWindowCode

#tag Events txtQuery
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = chr(13) then
		    executeSQLquery
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lbxDBtables
	#tag Event
		Sub DoubleClick()
		  // Add the Query to the Query window
		  txtQuery.text = "SELECT * FROM " + me.cell(me.ListIndex, 0)
		  
		  // Execute the query
		  executeSQLquery
		End Sub
	#tag EndEvent
#tag EndEvents
