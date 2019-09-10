tests
testStepDurationIsChangedToTwoSeconds

	| twoSeconds configuration |
	twoSeconds := second with: 2.
	configuration := SimulationConfiguration new.
	self deny: configuration stepDuration equals: twoSeconds.

	configuration stepDuration: twoSeconds.

	self
		assert: configuration stepDuration
		equals: twoSeconds