tests
testStateDisplayFontCannotBeChangedToANonExistingFont

	| workbench preUpdateFont |
	workbench := CollatzConjectureScenarioWorkbench default.
	preUpdateFont := workbench displaySettings font.
	self
		should: [ (CollatzConjectureDisplaySettingsModifier onFont: #'NON_EXISTING_FONT') modify: workbench ]
	 	raise: CollatzConjectureUserInterfaceError
		whoseDescriptionIncludes: 'Font may exist in system (see: FontChooser new fontListStrings)'
		description: 'Test did not fail as expected'.
	
	self assert: workbench displaySettings font equals: preUpdateFont
	
