tests
testMeter

	| meter |
	meter := unitProvider meter.
	
	self assert: meter name equals: 'Meter'.
	self assert: meter sign equals: 'm'