tests
testScalingAtFiftyPercentResolvesMeasureToFortyWhenDecreasedByTenPercentAndMinimunIsZeroAndMaximunIsOneHundred

	| scaling scaledMeasure decreasedScaling |
	scaling := FeatureScaling atPercentage: 0.5.
	
	decreasedScaling := scaling decreaseBy: 0.1.
	
	scaledMeasure := decreasedScaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 40