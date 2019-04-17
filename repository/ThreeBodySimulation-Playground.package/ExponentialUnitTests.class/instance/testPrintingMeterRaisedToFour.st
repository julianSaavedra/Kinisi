test printing
testPrintingMeterRaisedToFour

	| exponentialUnit |
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 4.

	self assert: exponentialUnit nameForOne equals: 'Meter raised to 4'.
	self assert: exponentialUnit nameForMany equals: 'Meters raised to 4'.
	self assert: exponentialUnit sign equals: 'm4'