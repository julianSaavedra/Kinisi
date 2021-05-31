asserting
assertVector: measureVector closeTo: anotherMeasureVector
 
	self assert: (measureVector x closeTo: anotherMeasureVector x).
	self assert: (measureVector y closeTo: anotherMeasureVector y).
	self assert: (measureVector z closeTo: anotherMeasureVector z)