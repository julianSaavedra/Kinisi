tests
testStateDisplaySizeChangesToFifty

	| workbench fifty |
	workbench := CollatzConjectureUserWorkbench default.
	fifty := 50.
	self deny: workbench displaySettings numberSize equals: fifty.
	
	(CollatzConjectureDisplaySettingsModifier onSize: fifty) modify: workbench.
	
	self assert: workbench displaySettings numberSize equals: fifty