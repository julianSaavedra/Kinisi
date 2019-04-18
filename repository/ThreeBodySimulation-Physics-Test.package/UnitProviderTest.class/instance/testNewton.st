tests
testNewton

	| newton |
	newton := unitProvider newton.
	
	self assert: newton name equals: 'Newton'.
	self assert: newton sign equals: 'N'