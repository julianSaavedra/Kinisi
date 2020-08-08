tests
testStateDisplayColorChangesToBlue

	| workbench blue |
	workbench := CollatzConjectureScenarioWorkbench default.
	blue := Color blue.
	self deny: workbench displaySettings numberColor equals: blue.
	
	(CollatzConjectureDisplaySettingsModifier onColor: blue) modify: workbench.
	
	self assert: workbench displaySettings numberColor equals: blue