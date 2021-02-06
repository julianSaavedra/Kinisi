tests
testStepIsCreatedWithGivenTimeAndState

	| result |
	result := SimulationStepResult at: stepTime with: stepResult.

	self assert: result time equals: stepTime.
	self assert: result value equals: stepResult