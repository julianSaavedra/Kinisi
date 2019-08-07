tests
testPositionWithYComponentOnlyIsTransformatedToAYOnlyPointMultiplicatedByScale

	| scale transformation yOnlyPosition point |
	scale := 10 / (meter with: 1e6).
	transformation := PositionToPointTransformation factor: scale.
	
	yOnlyPosition := MeasureVector y: 2e6 with: meter.
	point := transformation value: yOnlyPosition.

	self assert: point equals: 0@20