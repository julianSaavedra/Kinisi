tests
testOpposite
	
	self
		assert: (MeasureVector x: 1 y: 1 z: 1 with: newton) opposite
		equals: (MeasureVector x: -1 y: -1 z: -1 with: newton)