tests
testTotalDurationCannotBeChangedToBeShorterThanStepDuration

	| halfSecond configuration |
	halfSecond := second with: 0.5.
	configuration := SimulationConfiguration new.
	
	self assert: configuration stepDuration > halfSecond.
	self
		should: [ configuration totalDuration: halfSecond ]
		raise: SimulationError
		because: 'Total duration cannot be shorter than the step duration.'