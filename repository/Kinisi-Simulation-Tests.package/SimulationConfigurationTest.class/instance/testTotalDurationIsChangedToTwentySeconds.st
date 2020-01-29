tests
testTotalDurationIsChangedToTwentySeconds

	| twentySeconds configuration |
	twentySeconds := second with: 2.
	configuration := SimulationConfiguration new.
	self deny: configuration totalDuration equals: twentySeconds.

	configuration totalDuration: twentySeconds.

	self
		assert: configuration totalDuration
		equals: twentySeconds