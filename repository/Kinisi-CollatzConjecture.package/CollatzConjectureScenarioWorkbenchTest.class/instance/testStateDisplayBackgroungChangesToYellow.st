tests
testStateDisplayBackgroungChangesToYellow

	| workbench yellow |
	workbench := CollatzConjectureScenarioWorkbench default.
	yellow := Color yellow.
	self deny: workbench displaySettings background equals: yellow.
	
	(CollatzConjectureDisplaySettingsModifier onBackground: yellow) modify: workbench.
	
	self assert: workbench displaySettings background equals: yellow