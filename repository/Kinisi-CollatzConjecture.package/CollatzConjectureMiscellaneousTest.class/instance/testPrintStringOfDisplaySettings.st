tests
testPrintStringOfDisplaySettings

	| settings |
	settings := CollatzConjectureDisplaySettings default.
	self assert: ('Color: * - Font: * - Size: * - Background: *' match: settings printString)