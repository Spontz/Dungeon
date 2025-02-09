#tag Menu
Begin Menu mnuMain
   Begin MenuItem FileMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "&File"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem NewProject
         SpecialMenu = 0
         Index = -2147483648
         Text = "New Project..."
         ShortcutKey = "N"
         Shortcut = "Cmd+N"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu12
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileOpen
         SpecialMenu = 0
         Index = -2147483648
         Text = "Open..."
         ShortcutKey = "O"
         Shortcut = "Cmd+O"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileClose
         SpecialMenu = 0
         Index = -2147483648
         Text = "Close"
         ShortcutKey = "W"
         Shortcut = "Cmd+W"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileSave
         SpecialMenu = 0
         Index = -2147483648
         Text = "Save"
         ShortcutKey = "S"
         Shortcut = "Cmd+S"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuFileSaveAs
         SpecialMenu = 0
         Index = -2147483648
         Text = "Save As..."
         ShortcutKey = "S"
         Shortcut = "Cmd+Shift+S"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem FileRevert
         SpecialMenu = 0
         Index = -2147483648
         Text = "Revert"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu10
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin QuitMenuItem FileQuit
         SpecialMenu = 0
         Index = -2147483648
         Text = "Quit"
         ShortcutKey = "Q"
         Shortcut = "Cmd+Q"
         MenuModifier = True
         Help = "Closes the Spontz Visuals Editor."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EditMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "&Edit"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem EditUndo
         SpecialMenu = 0
         Index = -2147483648
         Text = "Undo"
         ShortcutKey = "Z"
         Shortcut = "Cmd+Z"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu9
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCut
         SpecialMenu = 0
         Index = -2147483648
         Text = "Cut"
         ShortcutKey = "X"
         Shortcut = "Cmd+X"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditCopy
         SpecialMenu = 0
         Index = -2147483648
         Text = "Copy"
         ShortcutKey = "C"
         Shortcut = "Cmd+C"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditPaste
         SpecialMenu = 0
         Index = -2147483648
         Text = "Paste"
         ShortcutKey = "V"
         Shortcut = "Cmd+V"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditClear
         SpecialMenu = 0
         Index = -2147483648
         Text = "Clear"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu8
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditSelectAll
         SpecialMenu = 0
         Index = -2147483648
         Text = "Select All"
         ShortcutKey = "A"
         Shortcut = "Cmd+A"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu7
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EditReplace
         SpecialMenu = 0
         Index = -2147483648
         Text = "Script Replace..."
         ShortcutKey = "F"
         Shortcut = "Cmd+F"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ProjectMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "Project"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem ProjectVideoSettings
         SpecialMenu = 0
         Index = -2147483648
         Text = "Video Settings..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProjectDemoSettings
         SpecialMenu = 0
         Index = -2147483648
         Text = "Demo Settings..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ProjectLoader
         SpecialMenu = 0
         Index = -2147483648
         Text = "Loader..."
         MenuModifier = True
         Help = "Displays a window that allows you to customize the loading screens plus the properties of the loading bar."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu4
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuEditDatabase
         SpecialMenu = 0
         Index = -2147483648
         Text = "Edit Database..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ElementsMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "Bars"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem ElementsSubdivide
         SpecialMenu = 0
         Index = -2147483648
         Text = "Subdivide..."
         Help = "This command splits the current element in several identical items. All the properties are stretched to fit the new size"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledMenu3
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsBringStarttoMarker
         SpecialMenu = 0
         Index = -2147483648
         Text = "Set Start to Marker"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsBringEndtoMarker
         SpecialMenu = 0
         Index = -2147483648
         Text = "Set End to Marker"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledItem
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsToggleEnable
         SpecialMenu = 0
         Index = -2147483648
         Text = "Toggle Enable"
         ShortcutKey = "D"
         Shortcut = "Cmd+D"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ElementsUpdateinEngine
         SpecialMenu = 0
         Index = -2147483648
         Text = "Update in Engine"
         ShortcutKey = "U"
         Shortcut = "Cmd+U"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator0
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem mnuBarsShowBarIDs
         SpecialMenu = 0
         Index = -2147483648
         Text = "Show Bar IDs"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem BarsEditor
         SpecialMenu = 0
         Index = -2147483648
         Text = "Bars Editor..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem EngineMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "Engine"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem EngineLaunchLocal
         SpecialMenu = 0
         Index = -2147483648
         Text = "Run Local Engine"
         ShortcutKey = "R"
         Shortcut = "Cmd+R"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem EngineStop
         SpecialMenu = 0
         Index = 1
         Text = "Stop Local Engine"
         ShortcutKey = "."
         Shortcut = "Cmd+."
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem ClearEngineLog
         SpecialMenu = 0
         Index = -2147483648
         Text = "Clear Engine Log"
         ShortcutKey = "L"
         Shortcut = "Cmd+L"
         MenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem Help
      SpecialMenu = 0
      Index = -2147483648
      Text = "Help"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem mnuTrace
         SpecialMenu = 0
         Index = -2147483648
         Text = "Trace"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem UntitledSeparator2
         SpecialMenu = 0
         Index = -2147483648
         Text = "-"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem HelpSpntzHomePage
         SpecialMenu = 0
         Index = -2147483648
         Text = "Spontz Home Page..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin AppleMenuItem mnuAppleAboutSpöntzVisualsEditor
         SpecialMenu = 0
         Index = -2147483648
         Text = "About Spöntz Visuals Editor..."
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
