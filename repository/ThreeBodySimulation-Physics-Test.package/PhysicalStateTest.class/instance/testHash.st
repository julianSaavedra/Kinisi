tests
testHash

	| aState anotherState |
	aState := PhysicalState withPosition: (MeasureVector x: 1 y: 1 z: 1 with: meter).
	anotherState := PhysicalState withPosition: (MeasureVector x: 1 y: 1 z: 1 with: meter).
	
	self
		assert: aState hash
		equals: anotherState hash