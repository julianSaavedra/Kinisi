tests
testNewtonWith

	| oneNewton |
	oneNewton := unitProvider newton with: 1.

	self
		assert: (testResource newtonWith: 1)
		equals: oneNewton