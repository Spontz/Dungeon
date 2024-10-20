#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyDragonEngine
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vbGlianBlZy05LmRsbA==
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMi5kbGw=
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMl9JbWFnZS5kbGw=
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMl9OZXQuZGxs
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vc3ZlLmV4ZQ==
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vYmFzcy5kbGw=
				End
				Begin CopyFilesBuildStep CopyPhoenixEngine
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L21pbml6aXAuZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L09wZW5DTC5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L1Bob2VuaXguZXhl
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3BvbHkydHJpLmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3B1Z2l4bWwuZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3N3cmVzYW1wbGUtNC5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3N3c2NhbGUtNy5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3psaWIxLmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2Fzc2ltcC12YzE0My1tdC5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2Y29kZWMtNjAuZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2Zm9ybWF0LTYwLmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2dXRpbC01OC5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2dsZnczLmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2tpc3NmZnQtZmxvYXQuZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2xpYngyNjQtMTY0LmRsbA==
				End
				Begin CopyFilesBuildStep CopyDragonCodeTemplates
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vQ29kZVRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyPhoenixCodeTemplates
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L0NvZGVUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyDragonProjectTemplates
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vUHJvamVjdFRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyPhoenixProjectTemplates
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L1Byb2plY3RUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyDragonFonts
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vZm9udHMv
				End
				Begin CopyFilesBuildStep CopyPhoenixResources
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3Jlc291cmNlcy8=
				End
				Begin CopyFilesBuildStep CopyFonts
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 2
					Subdirectory = 
					FolderItem = Li4vZm9udHMv
				End
				Begin CopyFilesBuildStep CopyDefinitions
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vQ29kZSUyMEVkaXRvci9kZWZpbml0aW9ucy9HTFNMLnhtbA==
					FolderItem = Li4vQ29kZSUyMEVkaXRvci9kZWZpbml0aW9ucy9TY3JpcHQueG1s
					FolderItem = Li4vQ29kZSUyMEVkaXRvci9kZWZpbml0aW9ucy9Mb2FkZXIueG1s
					FolderItem = Li4vQ29kZSUyMEVkaXRvci9kZWZpbml0aW9ucy9UZXh0LnhtbA==
				End
				Begin CopyFilesBuildStep CopyThemes
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vQ29kZSUyMEVkaXRvci90aGVtZXMvTm92YSUyMERhcmsuanNvbg==
					FolderItem = Li4vQ29kZSUyMEVkaXRvci90aGVtZXMvTm92YSUyMExpZ2h0Lmpzb24=
				End
			End
#tag EndBuildAutomation
