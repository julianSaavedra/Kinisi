arithmetic
vectorialProduct: aMeasureVector

	^MeasureVector
		x: (self y * aMeasureVector z) - (self z * aMeasureVector y)
		y: (self z * aMeasureVector x) - (self x * aMeasureVector z)
		z: (self x * aMeasureVector y) - (self y * aMeasureVector x) 