tests
testVectorWithGivenComponents

	| vector meter |
	meter := unitProvider meter.
	vector := testResource vectorWith: {1. 2 . 3.} and: meter.
	
	
	self assert: vector x equals: (meter with: 1).
	self assert: vector y equals: (meter with: 2).
	self assert: vector z equals: (meter with: 3).