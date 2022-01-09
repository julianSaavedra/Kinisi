tests
testDimensionXExtractsComponentXFromVector

	| testResource oneMeter dimension position result |
	testResource := PhysicsTestResource new.
	oneMeter := testResource oneMeter.
	position := testResource vectorWithXOnlyWithMeters: 1.
	
	dimension := MeasureDimension x.
	
	result := dimension extractFrom: position.
	
	self assert: result equals: oneMeter