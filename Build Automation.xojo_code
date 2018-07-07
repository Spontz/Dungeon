#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyOGLEngine
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vbGlianBlZy05LmRsbA==
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMi5kbGw=
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMl9JbWFnZS5kbGw=
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vU0RMMl9OZXQuZGxs
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vc3ZlLmV4ZQ==
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vYmFzcy5kbGw=
				End
				Begin CopyFilesBuildStep CopyOGLCodeTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vQ29kZVRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyOGLProjectTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vUHJvamVjdFRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyOGLFonts
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vZm9udHMv
				End
			End
#tag EndBuildAutomation
