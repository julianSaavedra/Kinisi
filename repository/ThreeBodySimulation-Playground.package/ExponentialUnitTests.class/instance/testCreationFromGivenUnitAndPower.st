tests
testCreationFromGivenUnitAndPower

	| exponentialUnit |
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 3.

	self assert: exponentialUnit base equals: meter.
	self assert: exponentialUnit exponent equals: 3