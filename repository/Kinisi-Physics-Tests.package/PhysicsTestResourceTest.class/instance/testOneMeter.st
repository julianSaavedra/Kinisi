tests
testOneMeter

	| oneMeter |
	oneMeter := unitProvider meter with: 1.
	
	self assert: testResource oneMeter equals: oneMeter