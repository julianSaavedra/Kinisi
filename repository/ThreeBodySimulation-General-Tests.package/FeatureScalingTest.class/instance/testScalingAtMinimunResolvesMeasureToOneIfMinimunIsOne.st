tests
testScalingAtMinimunResolvesMeasureToOneIfMinimunIsOne

	| scaling scaledMeasure |
	scaling := FeatureScaling atMinimun.

	scaledMeasure := scaling measureBetween: 0 and: 100.
	self assert: scaledMeasure equals: 0
	