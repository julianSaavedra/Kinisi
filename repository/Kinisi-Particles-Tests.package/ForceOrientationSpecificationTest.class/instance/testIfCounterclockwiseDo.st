tests
testIfCounterclockwiseDo

	| counterlockwise doneCounterclockwise |
	counterlockwise := ForceOrientationSpecification clockwise.
	
	doneCounterclockwise := counterlockwise ifClockwiseDo: [ true ] ifCounterclockwiseDo: [ false ]. 
	
	self assert: doneCounterclockwise