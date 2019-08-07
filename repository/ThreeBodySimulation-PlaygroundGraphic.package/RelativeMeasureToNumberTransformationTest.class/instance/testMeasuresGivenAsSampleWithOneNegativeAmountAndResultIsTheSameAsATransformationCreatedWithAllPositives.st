tests
testMeasuresGivenAsSampleWithOneNegativeAmountAndResultIsTheSameAsATransformationCreatedWithAllPositives

	| valueToTransform measures transformation resultWithPositiveMeasures withOneNegativeMeasures resultWithNegativeMeasures |
	valueToTransform := meter with: 8e28.
	measures := Array with: (meter with: 6e24) with: (meter with: 2e30).
	transformation := RelativeMeasureToNumberTransformation basedOn: measures withMinimunAt: 10.
	resultWithPositiveMeasures := transformation value: valueToTransform.
	
	withOneNegativeMeasures := Array with: (meter with: -6e24) with: (meter with: 2e30)..
	transformation := RelativeMeasureToNumberTransformation basedOn: withOneNegativeMeasures withMinimunAt: 10.
	resultWithNegativeMeasures := transformation value: valueToTransform.	
	
	self assert: resultWithPositiveMeasures equals: resultWithNegativeMeasures