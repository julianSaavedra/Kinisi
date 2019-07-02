tests
testHour

	| hour |
	hour := unitProvider hour.
	
	self assert: hour name equals: 'Hour'.
	self assert: hour sign equals: 'h'.
	self assert: (hour with: 1) equals: (unitProvider minute with: 60)