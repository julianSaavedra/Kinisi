tests
testNullVector

	self
		assert: (MeasureVector nullWith: newton)
		equals: (MeasureVector x: 0 y: 0 z: 0 with: newton)