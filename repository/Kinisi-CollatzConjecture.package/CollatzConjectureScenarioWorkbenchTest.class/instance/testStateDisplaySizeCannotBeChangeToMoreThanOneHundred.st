tests
testStateDisplaySizeCannotBeChangeToMoreThanOneHundred

	| workbench preUpdateSize |
	workbench := CollatzConjectureScenarioWorkbench default.
	preUpdateSize := workbench displaySettings numberSize.
	self
		should: [ (CollatzConjectureDisplaySettingsModifier onSize: 101) modify: workbench ]
	 	raise: CollatzConjectureUserInterfaceError
		whoseDescriptionIncludes: 'Number size must be between 10 and 100'
		description: 'Test did not fail as expected'.

	self assert: workbench displaySettings numberSize equals: preUpdateSize