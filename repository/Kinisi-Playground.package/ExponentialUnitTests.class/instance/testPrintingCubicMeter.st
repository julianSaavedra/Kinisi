test printing
testPrintingCubicMeter

	| exponentialUnit |
	
	exponentialUnit := ExponentialUnit of: meter raisedTo: 3.
	
	self assert: exponentialUnit nameForOne equals: 'Cubic Meter'.
	self assert: exponentialUnit nameForMany equals: 'Cubic Meters'.
	self assert: exponentialUnit sign equals: 'm3'