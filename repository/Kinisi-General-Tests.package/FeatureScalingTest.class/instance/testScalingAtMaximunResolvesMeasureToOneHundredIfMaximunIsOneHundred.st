tests
testScalingAtMaximunResolvesMeasureToOneHundredIfMaximunIsOneHundred

	| scaling scaledMeasure |
	scaling := FeatureScaling atMaximun.

	scaledMeasure := scaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 100
	