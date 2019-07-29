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
				Begin CopyFilesBuildStep CopyDragonEngine
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
				Begin CopyFilesBuildStep CopyPhoenixEngine
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2Fzc2ltcC5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2Jhc3MuZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2RlbW9fbG9nLnR4dA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2ZyZWV0eXBlLmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L1Bob2VuaXguZXhl
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2Y29kZWMtNTguZGxs
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2Zm9ybWF0LTU4LmRsbA==
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L2F2dXRpbC01Ni5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3N3cmVzYW1wbGUtMy5kbGw=
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3N3c2NhbGUtNS5kbGw=
				End
				Begin CopyFilesBuildStep CopyDragonCodeTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vQ29kZVRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyPhoenixCodeTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L0NvZGVUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyDragonProjectTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vUHJvamVjdFRlbXBsYXRlcy8=
				End
				Begin CopyFilesBuildStep CopyPhoenixProjectTemplates
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L1Byb2plY3RUZW1wbGF0ZXMv
				End
				Begin CopyFilesBuildStep CopyDragonFonts
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Dragon
					FolderItem = Li4vRW5naW5lcy9EcmFnb24vZm9udHMv
				End
				Begin CopyFilesBuildStep CopyPhoenixResources
					AppliesTo = 0
					Destination = 0
					Subdirectory = Engines/Phoenix
					FolderItem = Li4vRW5naW5lcy9QaG9lbml4L3Jlc291cmNlcy8=
				End
			End
#tag EndBuildAutomation
