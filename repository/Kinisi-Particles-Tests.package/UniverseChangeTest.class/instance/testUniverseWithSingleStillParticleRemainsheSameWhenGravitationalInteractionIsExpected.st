test - gravitational
testUniverseWithSingleStillParticleRemainsheSameWhenGravitationalInteractionIsExpected

	| initialState change changeEnvironment environmentBuilder |
	initialState := ObservableUniverseState with: testResource physicalStateWithNullVelocity.
	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addGravitationalInteractionBetweenParticles.
	changeEnvironment := environmentBuilder environment.

	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.
	
	self assert: initialState equals: change finalState