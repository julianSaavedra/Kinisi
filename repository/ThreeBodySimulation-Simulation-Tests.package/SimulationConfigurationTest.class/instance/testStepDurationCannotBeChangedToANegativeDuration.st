tests
testStepDurationCannotBeChangedToANegativeDuration

	| negativeTime configuration |
	negativeTime := second with: -1.
	configuration := SimulationConfiguration new.

	self
		should: [ configuration stepDuration: negativeTime ]
		raise: SimulationError
		because: 'Time cannot be negative.'