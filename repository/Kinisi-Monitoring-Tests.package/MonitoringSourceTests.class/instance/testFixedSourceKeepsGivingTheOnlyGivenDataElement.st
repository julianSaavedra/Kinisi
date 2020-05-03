tests
testFixedSourceKeepsGivingTheOnlyGivenDataElement

	| dataElement source |
	dataElement := #Element1.
	source := MonitoringFixedSource with: dataElement.
	
	self assert: source current equals: dataElement.
	self assert: source current equals: dataElement
		