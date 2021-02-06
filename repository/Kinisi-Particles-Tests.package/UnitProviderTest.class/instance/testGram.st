tests
testGram

	| gram |
	gram := unitProvider gram.
	
	self assert: gram name equals: 'Gram'.
	self assert: gram sign equals: 'gr'.
	self assert: gram baseUnit equals: unitProvider kilogram