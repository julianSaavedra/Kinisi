tests
testEqual

	| aState |
	aState := PhysicalState withPosition: (MeasureVector x: 1 y: 1 z: 1 with: meter).

	self assert: aState equals: (PhysicalState withPosition: (MeasureVector x: 1 y: 1 z: 1 with: meter)).
	self deny: aState equals: (PhysicalState withPosition: (MeasureVector nullWith: meter))