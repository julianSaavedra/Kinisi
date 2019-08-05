tests
testNullPositionIsTransformedToNullPoint

	| scale transformation nullPosition point |
	scale := 10 / (meter with: 1e6).
	transformation := PositionToPointTransformation factor: scale.
	
	nullPosition := MeasureVector nullWith: meter.
	point := transformation value: nullPosition.

	self assert: point equals: 0@0