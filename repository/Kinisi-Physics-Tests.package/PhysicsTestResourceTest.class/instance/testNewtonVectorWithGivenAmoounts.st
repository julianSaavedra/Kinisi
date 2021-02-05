tests
testNewtonVectorWithGivenAmoounts

	| newton vector |
	vector := testResource newtonVectorWith: {1. 2 . 3.}.
	
	newton := unitProvider newton.
	self assert: vector x equals: (newton with: 1).
	self assert: vector y equals: (newton with: 2).
	self assert: vector z equals: (newton with: 3)