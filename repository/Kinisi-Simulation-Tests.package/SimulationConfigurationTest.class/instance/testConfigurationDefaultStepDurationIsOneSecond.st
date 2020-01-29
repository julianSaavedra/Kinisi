tests
testConfigurationDefaultStepDurationIsOneSecond

	| oneSecond configuration |
	oneSecond := second with: 1.
	
	configuration := SimulationConfiguration new.

	self
		assert: configuration stepDuration
		equals: oneSecond