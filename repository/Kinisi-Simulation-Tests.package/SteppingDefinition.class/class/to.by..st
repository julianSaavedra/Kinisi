instance creation
to: totalDuration by: stepDelta

	^self
		by: stepDelta
		until: (IndexBasedSimulationEndCondition finalIndexIs: totalDuration)