instance creation
by: stepDelta until: endCondition

	self assertValidStepDelta: stepDelta.
	^self new initializeBy: stepDelta until: endCondition