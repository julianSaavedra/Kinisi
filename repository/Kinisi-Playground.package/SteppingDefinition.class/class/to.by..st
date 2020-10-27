instance creation
to: totalDuration by: stepDelta

	self assertValid: totalDuration for: stepDelta.
	^self
		by: stepDelta
		until: (IndexBasedSimulationEndCondition finalIndexIs: totalDuration)