test - gravitational
testUniverseWithTwoParticlesCausingGravitationalFields

	| initialState change expectedState changeEnvironment environmentBuilder |
	initialState := ObservableUniverseState withAll: self originalPhysicalStates.

	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder addGravitationalFieldCausedByAll: initialState particles.
	changeEnvironment := environmentBuilder environment.
	
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource oneSecond.

	expectedState := ObservableUniverseState withAll: self expectedPhysicalStates.	
	self assert: change finalState equals: expectedState