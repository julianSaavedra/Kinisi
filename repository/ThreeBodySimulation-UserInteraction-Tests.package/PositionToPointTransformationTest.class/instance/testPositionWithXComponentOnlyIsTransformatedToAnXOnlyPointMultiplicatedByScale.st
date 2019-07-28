tests
testPositionWithXComponentOnlyIsTransformatedToAnXOnlyPointMultiplicatedByScale

	| scale transformation xOnlyPosition point |
	scale := 10 / (meter with: 1e6).
	transformation := PositionToPointTransformation factor: scale.
	
	xOnlyPosition := MeasureVector x: 2e6 with: meter.
	point := transformation value: xOnlyPosition.

	self assert: point equals: 20@0