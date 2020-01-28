tests
testTotalDurationCanBeChangedToANegativeDuration

	| negativeTime configuration |
	negativeTime := second with: -1.
	configuration := SimulationConfiguration new.

	self
		should: [ configuration totalDuration: negativeTime ]
		raise: SimulationError
		because: 'Time cannot be negative.'