instance creation
repeat: times timesBy: stepDelta
 
	self assertValidRepetitions: times.
	^self
		by: stepDelta
		until: (IndexBasedSimulationEndCondition finalIndexIs: stepDelta * times) 