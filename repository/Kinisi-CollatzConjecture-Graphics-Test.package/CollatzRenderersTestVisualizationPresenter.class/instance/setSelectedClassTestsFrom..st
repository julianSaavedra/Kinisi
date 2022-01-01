private
setSelectedClassTestsFrom: selectedTestClass

	| currentSuite |
	currentSuite := selectedTestClass buildSuite.
	selectedClassTests items: currentSuite tests