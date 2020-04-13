validation
assertValidFont: targetFont

	(self systemFonts includes: targetFont)
		ifFalse: [ CollatzConjectureUserInterfaceError
			signal: 'Font may exist in system (see: FontChooser new fontListStrings)' ]