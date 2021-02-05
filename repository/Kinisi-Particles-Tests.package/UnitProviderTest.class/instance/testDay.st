tests
testDay

	| day |
	day := unitProvider day.
	
	self assert: day name equals: 'Day'.
	self assert: day sign equals: 'd'.
	self assert: (day with: 1) equals: (unitProvider hour with: 24)