tests
testIfClockwiseDo

	| clockwise doneClockwise |
	clockwise := ForceOrientationSpecification clockwise.
	
	doneClockwise := clockwise ifClockwiseDo: [ true ] ifCounterclockwiseDo: [ false ]. 
	
	self assert: doneClockwise