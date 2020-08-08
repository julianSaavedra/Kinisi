tests
testStateDisplayFontChangesToLato

	| workbench lato |
	workbench := CollatzConjectureScenarioWorkbench default.
	lato := #'Lato'.
	self deny: workbench displaySettings font equals: lato.
	
	(CollatzConjectureDisplaySettingsModifier onFont: lato) modify: workbench.
	
	self assert: workbench displaySettings font equals: lato