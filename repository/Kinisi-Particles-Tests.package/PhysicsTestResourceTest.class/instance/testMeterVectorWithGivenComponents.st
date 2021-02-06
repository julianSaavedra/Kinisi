tests
testMeterVectorWithGivenComponents

	| vector meter |
	vector := testResource meterVectorWith: {1. 2 . 3.}.
	
	meter := unitProvider meter.
	self assert: vector x equals: (meter with: 1).
	self assert: vector y equals: (meter with: 2).
	self assert: vector z equals: (meter with: 3).