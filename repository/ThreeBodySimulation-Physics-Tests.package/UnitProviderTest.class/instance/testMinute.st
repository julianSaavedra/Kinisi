tests
testMinute

	| minute |
	minute := unitProvider minute.
	
	self assert: minute name equals: 'Minute'.
	self assert: minute sign equals: 'm'.
	self assert: (minute with: 1) equals: (unitProvider second with: 60)