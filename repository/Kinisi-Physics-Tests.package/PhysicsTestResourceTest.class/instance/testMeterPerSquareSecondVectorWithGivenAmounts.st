tests
testMeterPerSquareSecondVectorWithGivenAmounts

	| vector meterPerSquareSecond |
	vector := testResource meterPerSquareSecondVectorWith: {1. 2 . 3.}.
	
	meterPerSquareSecond := unitProvider meterPerSquareSecond.
	self assert: vector x equals: (meterPerSquareSecond with: 1).
	self assert: vector y equals: (meterPerSquareSecond with: 2).
	self assert: vector z equals: (meterPerSquareSecond with: 3).