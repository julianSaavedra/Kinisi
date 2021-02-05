tests
testOneSecond

	| oneSecond |
	oneSecond := unitProvider second with: 1.
	
	self assert: testResource oneSecond equals: oneSecond