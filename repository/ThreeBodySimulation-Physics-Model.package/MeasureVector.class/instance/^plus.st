arithmetic
+ aMeasureVector

	self assertValidDomainOf: aMeasureVector.
	
	^MeasureVector
		x: self x + aMeasureVector x
		y: self y + aMeasureVector y
		z: self z + aMeasureVector z