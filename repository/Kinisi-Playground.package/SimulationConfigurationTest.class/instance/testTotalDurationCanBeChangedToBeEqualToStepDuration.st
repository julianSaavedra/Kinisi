tests
testTotalDurationCanBeChangedToBeEqualToStepDuration

	| configuration |
	configuration := SimulationConfiguration new.
	self deny: configuration stepDuration equals: configuration totalDuration.

	configuration totalDuration: configuration stepDuration.
	
	self
		assert: configuration totalDuration
		equals: configuration stepDuration