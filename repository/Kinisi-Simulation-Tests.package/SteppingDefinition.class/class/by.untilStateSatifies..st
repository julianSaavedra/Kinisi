instance creation
by: stepDelta untilStateSatifies: stateConditionBlock

	^self
		by: stepDelta
		until: (StateBasedPluggableSimulationEndCondition basedOn: stateConditionBlock)