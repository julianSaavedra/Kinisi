tests
testScalingAtFiftyPercentResolvesMeasureToZeroWhenDecreasedBySixtyPercentAndMinimunIsZero

	| scaling scaledMeasure minimunScaling |
	scaling := FeatureScaling atPercentage: 0.5.
	
	minimunScaling := scaling decreaseBy: 0.6.
	
	scaledMeasure := minimunScaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 0