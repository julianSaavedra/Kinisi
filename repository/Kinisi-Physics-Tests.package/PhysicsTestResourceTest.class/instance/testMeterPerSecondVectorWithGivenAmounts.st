tests
testMeterPerSecondVectorWithGivenAmounts

	| vector meterPerSecond |
	vector := testResource meterPerSecondVectorWith: #(1 2 3).
	
	meterPerSecond := unitProvider meterPerSecond.
	self assert: vector x equals: (meterPerSecond with: 1).
	self assert: vector y equals: (meterPerSecond with: 2).
	self assert: vector z equals: (meterPerSecond with: 3).