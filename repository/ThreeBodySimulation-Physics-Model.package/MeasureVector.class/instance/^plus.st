arithmetic
+ aMeasureVector

	self assertValidDomainOf: aMeasureVector.
	
	^self class
		x: self x + aMeasureVector x
		y: self y + aMeasureVector y
		z: self z + aMeasureVector z