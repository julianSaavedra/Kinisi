test - gravitational
testUniverseWithTwoParticlesCausingGravitationalFields

	| initialState change expectedState changeEnvironment environmentBuilder |

	initialState := ObservableUniverseState
		withAll: self originalParticlesBeforeGravitationalAttraction.

	environmentBuilder := ChangeEnvironmentBuilder for: initialState.
	environmentBuilder
		addGravitationalFieldCausedByAll: initialState particles.
	changeEnvironment := environmentBuilder environment.

	change := UniverseChange
		from: initialState
		with: changeEnvironment
		during: testResource halfSecond.

	expectedState := ObservableUniverseState withAll: self expectedParticlesAfterGravitationalAttraction.
	self assertParticlesIn: change finalState areCloseTo: expectedState