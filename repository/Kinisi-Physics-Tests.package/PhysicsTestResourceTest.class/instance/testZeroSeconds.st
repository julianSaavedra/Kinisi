tests
testZeroSeconds

	| zeroSeconds |
	zeroSeconds := unitProvider second with: 0.
	
	self assert: testResource zeroSeconds equals: zeroSeconds