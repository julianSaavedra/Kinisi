tests
testKilometer

	| kilometer |
	kilometer := unitProvider kilometer.
	
	self assert: kilometer name equals: 'Kilometer'.
	self assert: kilometer sign equals: 'Km'.
	self assert: kilometer baseUnit equals: unitProvider meter