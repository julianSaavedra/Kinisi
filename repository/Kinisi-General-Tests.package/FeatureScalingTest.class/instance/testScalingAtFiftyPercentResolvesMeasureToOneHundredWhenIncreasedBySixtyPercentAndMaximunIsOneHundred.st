tests
testScalingAtFiftyPercentResolvesMeasureToOneHundredWhenIncreasedBySixtyPercentAndMaximunIsOneHundred

	| scaling scaledMeasure maximunScaling |
	scaling := FeatureScaling atPercentage: 0.5.
	
	maximunScaling := scaling increaseBy: 0.6.
	
	scaledMeasure := maximunScaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 100