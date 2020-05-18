tests - to review
testFixedSourceKeepsGivingTheOnlyGivenDataElement

	| dataElement source |
	dataElement := #Element1.
	source := ObsevationFixedSource with: dataElement.
	
	self assert: source next equals: dataElement.
	self assert: source next equals: dataElement
		