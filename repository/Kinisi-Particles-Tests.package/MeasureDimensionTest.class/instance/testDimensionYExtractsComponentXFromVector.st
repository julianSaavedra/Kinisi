tests
testDimensionYExtractsComponentXFromVector

	| testResource oneMeter dimension position result |
	testResource := PhysicsTestResource new.
	oneMeter := testResource oneMeter.
	position := testResource vectorWithYOnlyWithMeters: 1.
	
	dimension := MeasureDimension y.
	
	result := dimension extractFrom: position.
	
	self assert: result equals: oneMeter