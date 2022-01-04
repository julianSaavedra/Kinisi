tests
testScalingAtFiftyPercentResolvesMeasureToFiftyIfMinimunIsOneAndMaximunIsOneHundred

	| scaling scaledMeasure |
	scaling := FeatureScaling atPercentage: 0.5.
	
	scaledMeasure := scaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 50