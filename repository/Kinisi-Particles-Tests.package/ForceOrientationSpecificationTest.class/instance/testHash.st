tests
testHash

	| counterclockwise anotherCounterclockwise |
	counterclockwise := ForceOrientationSpecification counterclockwise.
	anotherCounterclockwise := ForceOrientationSpecification counterclockwise.
	
	self assert: counterclockwise hash equals: anotherCounterclockwise hash