tests
testKilogram

	| kilogram |
	kilogram := unitProvider kilogram.
	
	self assert: kilogram name equals: 'Kilogram'.
	self assert: kilogram sign equals: 'kg'