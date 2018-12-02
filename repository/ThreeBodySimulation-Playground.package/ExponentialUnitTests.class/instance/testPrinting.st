test - printing
testPrinting

	| exponentialUnit |
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 2.
	self assert: exponentialUnit nameForOne equals: 'Square Meter'.
	self assert: exponentialUnit nameForMany equals: 'Square Meters'.
	self assert: exponentialUnit sign equals: 'm2'.
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	self assert: exponentialUnit nameForOne equals: 'Cubic Meter'.
	self assert: exponentialUnit nameForMany equals: 'Cubic Meters'.
	self assert: exponentialUnit sign equals: 'm3'.
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 4.
	self assert: exponentialUnit nameForOne equals: 'Meter raised to 4'.
	self assert: exponentialUnit nameForMany equals: 'Meters raised to 4'.
	self assert: exponentialUnit sign equals: 'm4'