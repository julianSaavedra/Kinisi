tests
testPositionWithXYAndZComponentsIsTransformatedToAnPointWithXAndYMultiplicatedByScale

	| scale transformation yOnlyPosition point |
	scale := 10 / (meter with: 1e6).
	transformation := PositionToPointTransformation factor: scale.
	
	yOnlyPosition := MeasureVector x: 2e6 y: 4e6 z: 8e6 with: meter.
	point := transformation value: yOnlyPosition.

	self assert: point equals: 20@40