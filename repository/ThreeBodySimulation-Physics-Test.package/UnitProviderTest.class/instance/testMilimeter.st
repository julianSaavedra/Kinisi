tests
testMilimeter

	| milimeter |
	milimeter := unitProvider milimeter.
	
	self assert: milimeter name equals: 'Milimeter'.
	self assert: milimeter sign equals: 'mm'.
	self assert: milimeter baseUnit equals: unitProvider meter 