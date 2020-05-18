tests
testFixedSourceKeepsGivingTheOnlyGivenDataElement

	| dataElement source |
	dataElement := #Element1.
	source := MonitoringFixedSource with: dataElement.
	
	self assert: source next equals: dataElement.
	self assert: source next equals: dataElement
		