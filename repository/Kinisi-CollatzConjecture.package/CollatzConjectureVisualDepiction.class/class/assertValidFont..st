validation
assertValidFont: targetFont

	(self systemFonts includes: targetFont)
		ifFalse: [ Error signal: 'Font may exist in system (see: FontChooser new fontListStrings)' ]