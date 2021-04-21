test - gravitational
testUniverseWithTwoParticlesWithGravitationalInteractionBetweenThem

	| initialState change expectedState changeDescription changeEnvironment |
	initialState := ObservableUniverseState.
	
	changeDescription := ChangeDescription empty.
	changeDescription addGravitationalInteractionBetweenParticles.
	changeEnvironment := ChangeEnvironment from: changeDescription.
	initialState := ObservableUniverseState withAll: self originalPhysicalStates.
	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource oneSecond.

	expectedState := ObservableUniverseState withAll: self expectedPhysicalStates.	
	self assert: change finalState equals: expectedState