tests
testSecond

	| second |
	second := unitProvider second.
	
	self assert: second name equals: 'Second'.
	self assert: second sign equals: 's'