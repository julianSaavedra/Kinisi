tests
testMeter

	| meter |
	meter := UnitProvider soleInstance meter.
	
	self assert: meter name equals: 'Meter'.
	self assert: meter sign equals: 'm'