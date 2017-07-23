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
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9kZW1vLmV4ZQ==
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9mbW9kLmRsbA==
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9nbGV3MzIuZGxs
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9jZ0dMLmRsbA==
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9jZy5kbGw=
				End
				Begin CopyFilesBuildStep CopyOGLCodeTemplates
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9Db2RlVGVtcGxhdGVzLw==
				End
				Begin CopyFilesBuildStep CopyOGLProjectTemplates
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9Qcm9qZWN0VGVtcGxhdGVzLw==
				End
				Begin CopyFilesBuildStep CopyOGLFonts
					AppliesTo = 1
					Destination = 0
					Subdirectory = Engines/OpenGL
					FolderItem = Li4vLi4vLi4vRG9jdW1lbnRzL1Nwb250ei9FbmdpbmUvZGVtbyUyMGVkaXRvci9FbmdpbmVzL29wZW5HTC9mb250cy8=
				End
			End
#tag EndBuildAutomation
