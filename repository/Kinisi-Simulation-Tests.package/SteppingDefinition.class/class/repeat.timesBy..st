instance creation
repeat: times timesBy: stepDelta
 
	^self
		by: stepDelta
		until: (IndexBasedSimulationEndCondition finalIndexIs: stepDelta * times) 