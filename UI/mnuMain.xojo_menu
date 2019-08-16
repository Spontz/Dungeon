#tag Menu
Begin Menu mnuMain
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Text = "&File"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem NewProject
         SpecialMenu = 0
         Text = "New Project..."
         Index = -2147483648
         ShortcutKey = "N"
         Shortcut = "Cmd+N"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu12
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Text = "Open..."
         Index = -2147483648
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileClose
         SpecialMenu = 0
         Text = "Close"
         Index = -2147483648
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileSave
         SpecialMenu = 0
         Text = "Save"
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileSaveAs
         SpecialMenu = 0
         Text = "Save As..."
         Index = -2147483648
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileRevert
         SpecialMenu = 0
         Text = "Revert"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu10
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Text = "Quit"
         Index = -2147483648
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         Help = "Closes the Spontz Visuals Editor."
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Text = "&Edit"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Text = "Undo"
         Index = -2147483648
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu9
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Text = "Cut"
         Index = -2147483648
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Text = "Copy"
         Index = -2147483648
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Text = "Paste"
         Index = -2147483648
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Text = "Clear"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu8
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Text = "Select All"
         Index = -2147483648
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu7
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditReplace
         SpecialMenu = 0
         Text = "Script Replace..."
         Index = -2147483648
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ProjectMenu
      SpecialMenu = 0
      Text = "Project"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem ProjectVideoSettings
         SpecialMenu = 0
         Text = "Video Settings..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProjectDemoSettings
         SpecialMenu = 0
         Text = "Demo Settings..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProjectLoader
         SpecialMenu = 0
         Text = "Loader..."
         Index = -2147483648
         MenuModifier = True
         Help = "Displays a window that allows you to customize the loading screens plus the properties of the loading bar."
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu4
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEditDatabase
         SpecialMenu = 0
         Text = "Edit Database..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ElementsMenu
      SpecialMenu = 0
      Text = "Bars"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem ElementsSubdivide
         SpecialMenu = 0
         Text = "Subdivide..."
         Index = -2147483648
         Help = "This command splits the current element in several identical items. All the properties are stretched to fit the new size"
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu3
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsBringStarttoMarker
         SpecialMenu = 0
         Text = "Set Start to Marker"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsBringEndtoMarker
         SpecialMenu = 0
         Text = "Set End to Marker"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsToggleEnable
         SpecialMenu = 0
         Text = "Toggle Enable"
         Index = -2147483648
         ShortcutKey = "D"
         Shortcut = "Cmd+D"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsUpdateinEngine
         SpecialMenu = 0
         Text = "Update in Engine"
         Index = -2147483648
         ShortcutKey = "U"
         Shortcut = "Cmd+U"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuBarsShowBarIDs
         SpecialMenu = 0
         Text = "Show Bar IDs"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EngineMenu
      SpecialMenu = 0
      Text = "Engine"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem EngineEngineManager
         SpecialMenu = 0
         Text = "Engines Manager..."
         Index = -2147483648
         ShortcutKey = "K"
         Shortcut = "Cmd+K"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EngineLaunchLocal
         SpecialMenu = 0
         Text = "Run Local Engine"
         Index = -2147483648
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ClearEngineLog
         SpecialMenu = 0
         Text = "Clear Engine Log"
         Index = -2147483648
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator1
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EngineDirectCommand
         SpecialMenu = 0
         Text = "Direct Command..."
         Index = -2147483648
         MacOptionKey = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem Help
      SpecialMenu = 0
      Text = "Help"
      Index = -2147483648
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuTrace
         SpecialMenu = 0
         Text = "Trace"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Text = "-"
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpSpntzHomePage
         SpecialMenu = 0
         Text = "Spontz Home Page..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
      Begin AppleMenuItem mnuAppleAboutSpöntzVisualsEditor
         SpecialMenu = 0
         Text = "About Spöntz Visuals Editor..."
         Index = -2147483648
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
