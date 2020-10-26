tests
testConfigurationDefaultTotalDurationIsTenSeconds

	| tenSeconds configuration |
	tenSeconds := second with: 10.
	
	configuration := SimulationConfiguration new.

	self
		assert: configuration totalDuration
		equals: tenSeconds