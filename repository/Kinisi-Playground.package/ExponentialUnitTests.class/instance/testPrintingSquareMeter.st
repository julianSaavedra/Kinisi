test printing
testPrintingSquareMeter

	| exponentialUnit |
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 2.

	self assert: exponentialUnit nameForOne equals: 'Square Meter'.
	self assert: exponentialUnit nameForMany equals: 'Square Meters'.
	self assert: exponentialUnit sign equals: 'm2'