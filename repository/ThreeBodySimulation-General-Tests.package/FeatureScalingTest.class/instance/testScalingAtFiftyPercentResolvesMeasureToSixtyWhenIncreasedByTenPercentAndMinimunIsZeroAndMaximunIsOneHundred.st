tests
testScalingAtFiftyPercentResolvesMeasureToSixtyWhenIncreasedByTenPercentAndMinimunIsZeroAndMaximunIsOneHundred

	| scaling scaledMeasure increasedScaling |
	scaling := FeatureScaling atPercentage: 0.5.
	
	increasedScaling := scaling increaseBy: 0.1.
	
	scaledMeasure := increasedScaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 60