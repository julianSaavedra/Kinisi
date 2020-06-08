tests
testPrintStringOfDisplaySettings

	| settings |
	settings := CollatzConjectureUserWorkbench default displaySettings.
	self assert: ('Color: * - Font: * - Size: * - Background: *' match: settings printString)