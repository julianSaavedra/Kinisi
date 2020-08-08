tests
testPrintStringOfDisplaySettings

	| settings |
	settings := CollatzConjectureScenarioWorkbench default displaySettings.
	self assert: ('Color: * - Font: * - Size: * - Background: *' match: settings printString)