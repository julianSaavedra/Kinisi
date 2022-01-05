tests
testMeasuresGivenAsSampleAreNegativeAndResultIsTheSameAsATransformationCreatedWithOpposites

	| valueToTransform measures transformation resultWithPositiveMeasures negativeMeasures resultWithNegativeMeasures |
	valueToTransform := meter with: 8e28.
	measures := Array with: (meter with: 6e24) with: (meter with: 2e30).
	transformation := RelativeMeasureToNumberTransformation basedOn: measures withMinimunAt: 10.
	resultWithPositiveMeasures := transformation value: valueToTransform.
	
	negativeMeasures := measures collect:[:aMeasure | aMeasure negated].
	transformation := RelativeMeasureToNumberTransformation basedOn: negativeMeasures withMinimunAt: 10.
	resultWithNegativeMeasures := transformation value: valueToTransform.	
	
	self assert: resultWithPositiveMeasures equals: resultWithNegativeMeasures