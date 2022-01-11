tests
testEqual

	| clockwise anotherClockwise |
	clockwise := ForceOrientationSpecification clockwise.
	anotherClockwise := ForceOrientationSpecification clockwise.
	
	self deny: clockwise identicalTo: anotherClockwise.
	self assert: clockwise equals: anotherClockwise.
	self deny: clockwise equals: ForceOrientationSpecification counterclockwise