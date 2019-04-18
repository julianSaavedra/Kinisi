tests
testNorm

	self
		assert: (MeasureVector x: 1 y: 2 z: 3 with: newton) norm
		equals: (newton with: 14 sqrt)