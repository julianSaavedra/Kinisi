tests
testHalfSecond

	| halfSecond |
	halfSecond := unitProvider second with: 0.5.
	
	self assert: testResource halfSecond equals: halfSecond