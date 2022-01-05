tests
testPrintString

	| scaling |
	scaling := FeatureScaling atPercentage: 0.5.
	
	self
		assert: scaling printString
		equals: 'Scaling: 50.0%'
	