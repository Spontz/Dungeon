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
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2NnLmRsbA==
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2NnR0wuZGxs
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2RlbW8uZXhl
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2Ztb2QuZGxs
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2dsZXczMi5kbGw=
				End
				Begin CopyFilesBuildStep CopyOGLCodeTemplates
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL0NvZGVUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyOGLProjectTemplates
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL1Byb2plY3RUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyOGLFonts
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vRW5naW5lcy9JbmZlcm5vL2ZvbnRzLw==
				End
			End
#tag EndBuildAutomation
