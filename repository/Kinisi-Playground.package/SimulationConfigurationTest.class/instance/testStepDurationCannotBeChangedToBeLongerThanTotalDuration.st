tests
testStepDurationCannotBeChangedToBeLongerThanTotalDuration

	| twentySeconds configuration |
	twentySeconds := second with: 20.
	configuration := SimulationConfiguration new.
	
	self assert: configuration totalDuration < twentySeconds.
	self
		should: [ configuration stepDuration: twentySeconds ]
		raise: SimulationError
		because: 'Total duration cannot be shorter than the step duration.'