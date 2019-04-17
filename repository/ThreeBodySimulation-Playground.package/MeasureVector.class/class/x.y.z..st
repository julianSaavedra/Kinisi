instance creation
x: xMeasure y: yMeasure z: zMeasure

	self assertEqualDomainOfX: xMeasure y: yMeasure z: zMeasure.
	^self x: xMeasure convertAmountToBaseUnit y: yMeasure convertAmountToBaseUnit z: zMeasure convertAmountToBaseUnit with: xMeasure baseUnit