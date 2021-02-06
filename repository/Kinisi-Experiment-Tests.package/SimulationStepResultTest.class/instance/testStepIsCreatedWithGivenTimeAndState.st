tests
testStepIsCreatedWithGivenTimeAndState

	| result oneSecond |
	oneSecond := testResource oneSecond.
	
	result := SimulationStepResult at: oneSecond with: rawResult.

	self assert: result time equals: oneSecond.
	self assert: result value equals: rawResult