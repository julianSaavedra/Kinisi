tests
testFontCannotBeChangedToANonExistingFont

	self
		assert: [ :scenario | scenario font ]
		isNotChangedWhen: [ workbench font: #NON_EXISTING_FONT ]
		because: 'Font may exist in system (see: FontChooser new fontListStrings)'