tests
testNegativeTime

	| negativeTime |
	negativeTime := unitProvider second with: -1.
	
	self assert: testResource negativeTime negative