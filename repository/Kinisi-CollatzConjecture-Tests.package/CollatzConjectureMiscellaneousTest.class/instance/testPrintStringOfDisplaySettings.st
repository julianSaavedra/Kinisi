tests
testPrintStringOfDisplaySettings

	| settings |
	settings := CollatzConjectureVisualDepiction default.
	self assert: ('Color: * - Font: * - Size: * - Background: *' match: settings printString)